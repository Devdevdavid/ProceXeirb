/*******************************************************************************
 *  Main Author : Pierre JOUBERT
 *  With the kind collaboration of : Julien BESSE
 *  Date : 04/04/2018
 *  OS : Linux
 *    The goal of this program is to compile a code written in language 
 *  baguette to assembly.
 ******************************************************************************/

#define MAIN_CPP

#include <fstream>
#include <iostream>
#include <stdint.h>
#include <unistd.h>
#include <vector>
#include <stack>
#include <sys/time.h>
#include <bag_devlib.h>

#include "global.hpp"
#include "instruction.hpp"
#include "variable.hpp"
#include "fonction.hpp"

#define DEFAULT_FILE_PERM       (S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH)
#define MAX_BAGO_FILE_PATH_LEN  128

#define GLOBAL_CONTEXT          fonctionTable.front()

// Prototype
void print_build_finished(struct timeval startTime, int nbError, int nbWarning);

// Global variables
vector<fonction *> fonctionTable;
fonction * CUR_CONTEXT;
uint32_t fileLineCounter;                  // Index of the line currently analysed (Preprocessor and compiler)

string replace_all(string str, const string &from, const string &to)
{
  size_t start_pos = 0;
  while ((start_pos = str.find(from, start_pos)) != string::npos)
  {
    str.replace(start_pos, from.length(), to);
    start_pos += to.length(); // Handles case where 'to' is a substring of 'from'
  }
  return str;
}

string remove_line_comment(string str)
{
  bool isInsideQuote = false;
  for (int index = 0; index < str.length(); index++)
  {
    if (str[index] == '"') {
      isInsideQuote = !isInsideQuote;
    } else if ((str[index] == '/') && (!isInsideQuote)) {
      if ((index + 1) < str.length()) {
        if (str[index + 1] == '/') {    // We got a comment !
          return str.substr(0, index); // Return all content before "//"
        }
      }
    }
  }
  
  return str;
}

bool is_integer(const string &s)
{
  char * p;

  if (s.empty() || (!isdigit(s[0]) && (s[0] != '-') && (s[0] != '+'))) {
    return false;
  }
  if (s.find(".") != string::npos) {
    return false;
  }
  
  strtol(s.c_str(), &p, 10);

  return (*p == 0);
}

bool is_real(const string &s)
{
  if (s.find(".") != string::npos) {
    string t1 = s;
    t1 = replace_all(t1, ".", "");
    
    return is_integer(t1);
  } else {
    return false;
  }
}

bool is_a_valid_var_name(const string &s)
{
  if (s.empty()) {
    _LOG_ERROR("Variable name is empty");
    return false;
  }
  if (isdigit(s[0])) {
    _LOG_ERROR("Variable name cannot start with a digit: \"%s\"", s.c_str());
    return false;
  }

  // Look if the variable name is already used
  if (CUR_CONTEXT->get_var(s) != NULL) {
    _LOG_ERROR("Variable name is already used in the function context: \"%s\"", s.c_str());
    return false;
  }
  if (GLOBAL_CONTEXT->get_var(s) != NULL) {
    _LOG_ERROR("Variable name is already used in the global context: \"%s\"", s.c_str());
    return false;
  }

  return true;
}

/**
 * @brief Look for a function with the name funcName
 * 
 * @param funcName 
 * @return fonction* NULL: Not found, otherwise: the known function
 */
fonction * find_fonction(string funcName)
{
  for (fonction * func : fonctionTable) {
    if (func->name == funcName) {
      return func;
    }
  }

  return NULL;
}

/**
 * @brief Return the string between start and end
 * 
 * @param str 
 * @param start 
 * @param end 
 * @return string 
 */
string find_between(string str, string start, string end) 
{
  int first = str.find(start) + start.length();
  int last = str.find(end);

  if ((first == string::npos) || (last == string::npos)) {
    return "";
  }

  return str.substr(first, last - first);
}

var * declare_var(string line)
{
  var * v = new var;
  string name;
  varType type;

  if (line.find("entier") == 0) {
    name = find_between(line, "entier", ";");
    type = INTEGER;
  }
  else if (line.find("reel") == 0) {
    name = find_between(line, "reel", ";");
    type = REAL;
  } else {
    _LOG_ERROR("Unknown variable declaration : \"%s\"", line.c_str());
    return NULL;
  }

  if (!is_a_valid_var_name(name)) {
    return NULL;
  }

  v->name = name;
  v->type = type;
  v->value = 0;
  if (CUR_CONTEXT != GLOBAL_CONTEXT) {
    v->isLocal = true;
  }
  CUR_CONTEXT->add_var(v);
  return v;
}

var * declare_const_var(string name)
{
  var * v = new var;

  if (is_integer(name)) {
    v->value = atol(name.c_str());
    v->type = INTEGER;
  }
  else if (is_real(name)) {
    v->value = atof(name.c_str()) * 256;
    v->type = REAL;
  } else {
    _LOG_ERROR("Unknonw variable \"%s\"", name.c_str());
    delete v;
    return NULL;
  }

  // Constant cannot be "unused" so we set these flags
  v->isUsedAsRead = true;
  v->isUsedAsWrite = true;

  v->name = name;
  GLOBAL_CONTEXT->add_var(v);

  return v;
}

/**
 * @brief If variable name is declared in table, return the associated object
 * If not declared, create the object and return it
 * 
 * @param name 
 * @return var 
 */
var * get_or_create_variable(string name)
{
  var * v;

  // Look for the variable in the current context
  v = CUR_CONTEXT->get_var(name);
  if (v != NULL) {
    return v;
  }

  // If not found, look in the global context
  v = GLOBAL_CONTEXT->get_var(name);
  if (v != NULL) {
    return v;
  }
  
  // If not found, declare it in global context as a numeric constant and return reference
  return declare_const_var(name);
}

string variable_to_change(string str)
{
  return str.substr(0, str.find("="));
}

/**
 * @brief Find the return value and 2 argument in a line with the following format
 *      ret = arg1 <operatorSymbole> arg2
 * 
 * @param ins: Pointer of the operation created
 * @param line: line to parse
 * @param operatorSymbole: symbole to use
 */
void create_operation(instruction * ins, string line, string operatorSymbole) 
{
  var * v;

  v = get_or_create_variable(variable_to_change(line));
  ins->set_return_var(v);

  v = get_or_create_variable(find_between(line, "=", operatorSymbole));
  ins->set_argument1(v);

  v = get_or_create_variable(find_between(line, operatorSymbole, ";"));
  ins->set_argument2(v);

  CUR_CONTEXT->add_instru(ins);
}

string condition_type(string str)
{
  if (str.find(">") != string::npos) {
    return ">";
  } else if (str.find("<") != string::npos) {
    return "<";
  } else if (str.find("==") != string::npos) {
    return "==";
  }

  _LOG_ERROR("Unknown condition operator : \"%s\"", str.c_str());
  return "";
}

/**
 * @brief Split a string by looking for delimiter
 * 
 * @param str : String to split
 * @param delimiter : string to find in str
 * @return vector<string> : each piece of string found in str
 */
vector<string> str_split(string str, string delimiter)
{
  size_t pos_start = 0, pos_end;
  size_t delim_len = delimiter.length();
  vector<string> res;
  string token;

  // Return empty vector if size = 0
  if (str.empty()) {
    return res;
  }

  while ((pos_end = str.find(delimiter, pos_start)) != string::npos) {
    token = str.substr(pos_start, pos_end - pos_start);
    pos_start = pos_end + delim_len;
    res.push_back(token);
  }

  res.push_back(str.substr(pos_start));
  return res;
}

/**
 * @brief Create a fonction object by 
 * parsing the declaration line
 * 
 * @param line 
 * @return int : 0: OK, -1: Error
 */
int parse_function_declaration(string line)
{
  fonction * func = new fonction;       // The object function
  vector<string> argStrList;            // List of argument found in the fonction declaration
  string argLine;                       // Extracted string with all arguments 
  var * variable;                       // Temporary variable pointer
  uint16_t index;

  // Get function name
  func->name = find_between(line, "fonction", "(");
  if (func->name.empty()) {
    _LOG_ERROR("Invalid function name");
    delete func;
    return -1;
  }

  // Add the fonction 
  fonctionTable.push_back(func);
  CUR_CONTEXT = func;

  // Extract arg declaration
  argLine = find_between(line, "(", ")");
  argStrList = str_split(argLine, ",");

  for (index = 0; index < argStrList.size(); index++) {
    // Add an ending character to be simplify the parse
    variable = declare_var(argStrList[index] + ";");
    func->add_argument(variable);
  }

  // Declaration is ok, we go in edition mode 
  func->isBeingEdited = true;

  return 0;
}

/**
 * @brief Close the fonction currently edited and link the
 * returned variable
 * 
 * @param line 
 * @return int: 0: OK, -1: Error
 */
int parse_function_return(string line) 
{
  fonction * func;
  string returnStr;
  var * returnVar;
  
  // Check size
  if (fonctionTable.size() <= 0) {
    _LOG_ERROR("Got a return fonction without declaration: %s", line.c_str());
    return -1;
  }

  // Check if we are inside a function
  func = fonctionTable.back();
  if (!func->isBeingEdited) {
    _LOG_ERROR("Got a return instruction outside function: %s", line.c_str());
    return -1;
  }

  // Find the variable to return (if there is one)
  returnStr = find_between(line, "retourne", ";");
  if (!returnStr.empty()) {
    returnVar = get_or_create_variable(returnStr);
  } else {
    returnVar = NULL; // NULL is equivalent to void type
  }
  func->set_return_var(returnVar);
  
  // The function is not edited anymore
  func->isBeingEdited = false;

  // Go back to the global context
  CUR_CONTEXT = GLOBAL_CONTEXT;

  return 0;
}

/**
 * @brief Create a fonctionCall Object by parsing the 
 * call line. 
 * 
 * @param line 
 * @return int: 0: OK, -1: Error
 */
int parse_function_call(string line) 
{
  functionCall * ins;
  string funcName, argLine;
  vector<string> argStrList;
  fonction * funcCalled;
  uint16_t argIndex;
  var * v;

  // Is there a return value needed ?
  if (line.find("=") != string::npos) {
    funcName = find_between(line, "=", "(");
    v = get_or_create_variable(variable_to_change(line));
  } else {
    funcName = line.substr(0, line.find("("));
    v = NULL; // NULL is equivalent to void type
  }

  if ((funcCalled = find_fonction(funcName)) == NULL) {
    _LOG_ERROR("Unknown fonction name : \"%s\"", funcName.c_str());
    return -1;
  }

  // Create the object
  ins = new functionCall;

  // Link the instruction to the function called
  ins->link_function(funcCalled);

  // v can be NULL to indicate no return value
  ins->link_returned_var(v); 

  // Extract arg declaration
  argLine = find_between(line, "(", ")");
  argStrList = str_split(argLine, ",");

  if (argStrList.size() != funcCalled->params.size()) {
    _LOG_ERROR("Function \"%s\" needs %d arguments, %d given", 
      funcCalled->params.size(), argStrList.size());
    delete ins;
    return -1;
  }

  for (argIndex = 0; argIndex < argStrList.size(); argIndex++) {
    if ((v = get_or_create_variable(argStrList[argIndex])) == NULL) {
      continue;
    }
    if (ins->link_argument(v) != 0) {
      continue;
    }
  }

  CUR_CONTEXT->add_instru(ins);

  return 0;
}

/**
 * @brief Create a bago file path from the asm file path
 * 
 * @param asmFilePath 
 * @param bagoFilePath 
 * @param maxPathLen max length of bagoFilePath
 * @return int: 0: OK, 1: error
 */
int create_bago_file_path(const char *asmFilePath, char * bagoFilePath, uint16_t maxPathLen) 
{
  uint16_t asmFilePathLen = strlen(asmFilePath);
  uint16_t lastDotIndex;
  int index;

  bagoFilePath[0] = '\0';

  // Find the last '.'
  for (index = 0; index < asmFilePathLen; index++) {
    if (asmFilePath[index] == '.') {
      lastDotIndex = index;
    }
  }

  // Check length
  if (maxPathLen < (lastDotIndex + 6)) { // +5: '.bago, +1: '\0'
    LOG_ERROR("File path too long to create *.bago file path : %d max", maxPathLen);
    return 1;
  }

  // Copy from the beginning to the last dot
  strncpy(bagoFilePath, asmFilePath, lastDotIndex);
  for (index = 0; index < lastDotIndex; index++) {
    bagoFilePath[index] = asmFilePath[index];
  }
  bagoFilePath[index] = '\0';

  // add the extension
  strncat(bagoFilePath, ".bago", maxPathLen);

  return 0;
}

/**
 * @brief Write the content of str inside a new file
 * 
 * @param filePath 
 * @param str 
 * @return int 0: OK, 1: I/O error
 */
int write_string_in_file(const char * filePath, string str) 
{
  int fd;

  // Remove existing file
  remove(filePath);

  // Create the file with specified permission
  fd = open(filePath, O_WRONLY | O_CREAT, DEFAULT_FILE_PERM);
  if (fd < 0) {
    LOG_ERROR("Failed to create *.asm file %s: %s", filePath, strerror(errno));
    return 1;
  }

  // Write the whole string content
  if (write(fd, str.c_str(), str.length()) != str.length()) {
    LOG_ERROR("Failed to write in file %s: %s", filePath, strerror(errno));
    close(fd);
    return 1;
  }

  close(fd);
  return 0;
}

/**
 * @brief Create the *.bago file precompiled
 * 
 * @param bagFilePath 
 * @param bagoFilePath 
 * @return int 0: OK, 1: I/O Error, 2: Syntaxe error
 */
int preprocessor(const char * bagFilePath, const char * bagoFilePath)
{
  int retError = 0;                     // Returned value of the function
  uint32_t index;
  ifstream bagFile;
  ofstream bagoFile;
  string line, originLine, defineTmp;
  vector<string> defineName;            // List of all define name found
  vector<string> defineContent;         // List of all define content found

  remove(bagoFilePath);
  bagoFile.open(bagoFilePath);
  if (!bagoFile.is_open()) {
    LOG_ERROR("Failed to create .bago file %s: %s\n", bagoFilePath, strerror(errno));
    retError = 1;
  }

  bagFile.open(bagFilePath);
  if (!bagFile.is_open()) {
    LOG_ERROR("Failed to open .bag file %s: %s\n", bagFilePath, strerror(errno));
    retError = 1;
  }

  // Init the counter to 0
  fileLineCounter = 0;

  // First pass: Preprocessor duty
  while (getline(bagFile, originLine) && (retError == 0)) {
    ++fileLineCounter;
    line = replace_all(originLine, " ", "");
    line = replace_all(line, "\t", "");
    line = remove_line_comment(line);         // Remove text after comment symbole "//"

    // Search for new #definition instruction
    if (line.find("#definition") != string::npos) {
      // Save the name and content
      defineName.push_back(find_between(line, "#definition", "("));
      defineContent.push_back(find_between(line, "(", ")"));

      // Check the name
      if (defineName.back().empty()) {
        _LOG_ERROR("Wrong syntax on line %d: \"%s\"", fileLineCounter, originLine.c_str());
        retError = 2; // Syntaxe Error
      } 
      continue; // Do not copy tthe line of the #definition
    }

    // Try to find in the line a known definition
    for (index = 0; index < defineName.size(); ++index) {
      if (line.find(defineName[index]) != string::npos) {
        line = replace_all(line, defineName[index], defineContent[index]);
      }
    }
    
    // Ignore empty lines (Have to be done after #definition replacement)
    if (line.length() <= 1) {
      continue;
    }

    // Save the line into output file
    bagoFile << line << endl;
  }

  // Close files 
  bagFile.close();
  bagoFile.close();

  return retError;
}

/**
 * @brief Create the global context
 * 
 */
void create_global_context(void)
{
  // Create the function for global context
  fonctionTable.push_back(new fonction); 

  // Name the global context
  GLOBAL_CONTEXT->name = ".global";

  // The Global Context never called (Here we avoid warning)
  GLOBAL_CONTEXT->isCalledAtLeastOnce = true;

  // Set the default context to global
  CUR_CONTEXT = GLOBAL_CONTEXT;
}

/**
 * @brief Entry point of the compiler
 * 
 * @param bagoFilePath : Input file from the preprocessor
 * @param asmFilePath : Output file of the compiler
 * @return int: 0: OK, 1: Error
 */
int compiler(const char * bagoFilePath, const char * asmFilePath) 
{
  int retError = 0;
  string line = "";                   // Line currently analysed
  string wholeFile;                   // Intermediate buffer before adresses link
  instruction *ins;                   // Temporary pointer for instruction declaration
  var * v;                            // Temporary pointer for variable declaration
  uint32_t index = 0;                 
  char tmpStr1[30] = "";              // Temporary buffer for sprintf purpose
  char tmpStr2[30] = "";              // Temporary buffer for sprintf purpose

  // Input file
  ifstream bagoFile(bagoFilePath);
  if (!bagoFile.is_open()) {
    LOG_ERROR("Failed to open *.bago file %s: %s\n", bagoFilePath, strerror(errno));
    retError = 1;
  }

  // Create the context and set it as default
  create_global_context();

  // Init the counter to 0
  fileLineCounter = 0;

  // For all lines of the file, parse it !
  while (getline(bagoFile, line) && (nbErrorDetected < 5))
  {
    ++fileLineCounter;
    // LOG_DEBUG("cur line = %s", line.c_str());
    if ((line.find("entier") == 0) || (line.find("reel") == 0)) {
      declare_var(line);
    }
    else if (line.find("rve") != string::npos)
    { 
      // Real to int
      ins = new ins_fti;

      v = get_or_create_variable(variable_to_change(line));
      ins->set_return_var(v);

      v = get_or_create_variable(find_between(line, "(", ")"));
      ins->set_argument1(v);

      CUR_CONTEXT->add_instru(ins);
    }
    else if (line.find("evr") != string::npos)
    { 
      // int to real
      ins = new ins_itf;

      v = get_or_create_variable(variable_to_change(line));
      ins->set_return_var(v);

      v = get_or_create_variable(find_between(line, "(", ")"));
      ins->set_argument1(v);

      CUR_CONTEXT->add_instru(ins);
    }
    else if (line.find("|") != string::npos)
    {
      create_operation(new ins_or, line, "|");
    }
    else if (line.find("&") != string::npos)
    {
      create_operation(new ins_and, line, "&");
    }
    else if (line.find("^") != string::npos)
    {
      create_operation(new ins_xor, line, "^");
    }
    else if (line.find("~|") != string::npos)
    {
      create_operation(new ins_nor, line, "~|");
    }
    else if (line.find("+") != string::npos)
    {
      create_operation(new addition, line, "+");
    }
    else if (line.find("-") != string::npos && line.find("=-") == string::npos)
    {
      // Here is a difficulties: we need to avoid the case ret = -a - b
      create_operation(new soustraction, line, "-");
    }
    else if (line.find("*") != string::npos)
    {
      create_operation(new multiplication, line, "*");
    }
    else if (line.find("/") != string::npos)
    {
      create_operation(new division, line, "/");
    }
    else if (line.find("si(") == 0)
    {
      condition *cond = new condition;
      cond->set_condition_type(condition_type(line));
      cond->id = CUR_CONTEXT->get_next_cond_id();

      v = get_or_create_variable(find_between(line, "(", cond->condition_type));
      cond->set_argument1(v);

      v = get_or_create_variable(find_between(line, cond->condition_type, ")"));
      cond->set_argument2(v);

      CUR_CONTEXT->add_instru(cond);
    }
    else if (line.find("fin_si") == 0)
    {
      ins = new endif;
      ins->id = CUR_CONTEXT->consume_cond_id();
      CUR_CONTEXT->add_instru(ins);
    }
    else if (line.find("tant_que(") == 0)
    {
      loop *lo = new loop;

      lo->set_condition_type(condition_type(line));
      lo->id = CUR_CONTEXT->get_next_loop_id();

      v = get_or_create_variable(find_between(line, "(", lo->condition_type));
      lo->set_argument1(v);

      v = get_or_create_variable(find_between(line, lo->condition_type, ")"));
      lo->set_argument2(v);

      CUR_CONTEXT->add_instru(lo);
    }
    else if (line.find("fin_tant_que") == 0)
    {
      ins = new endloop;

      ins->id = CUR_CONTEXT->consume_loop_id();
      
      CUR_CONTEXT->add_instru(ins);
    }
    else if (line.find("fonction") != string::npos)
    {
      parse_function_declaration(line);
    }
    else if (line.find("retourne") != string::npos)
    {
      parse_function_return(line);
      CUR_CONTEXT->check_loops_and_cond(); // This will print log if error occured
    }
    else if (line.find("sin(") != string::npos)
    {
      sine *cond = new sine;

      v = get_or_create_variable(find_between(line, "(", ")"));
      cond->set_argument1(v);

      v = get_or_create_variable(variable_to_change(line));
      cond->set_return_var(v);

      CUR_CONTEXT->add_instru(cond);
    }
    else if (line.find("cos(") != string::npos)
    {
      cos *cond = new cos;

      v = get_or_create_variable(find_between(line, "(", ")"));
      cond->set_argument1(v);

      v = get_or_create_variable(variable_to_change(line));
      cond->set_return_var(v);

      CUR_CONTEXT->add_instru(cond);
    }
    else if (line.find("afficher_LCD") != string::npos)
    {
      ins = new disp_LCD;

      v = get_or_create_variable(find_between(line, "(", ")"));
      ins->set_argument1(v);

      CUR_CONTEXT->add_instru(ins);
    }
    else if (line.find("ecrire_mem_part") != string::npos)
    {
      ins = new write_to_shared;

      v = get_or_create_variable(find_between(line, "(", ","));
      ins->set_argument1(v);

      v = get_or_create_variable(find_between(line, ",", ")"));
      ins->set_argument2(v);

      CUR_CONTEXT->add_instru(ins);
    }
    else if (line.find("ecrire_a(") != string::npos)
    {
      ins = new write_at;

      v = get_or_create_variable(find_between(line, "(", ","));
      ins->set_argument1(v);

      v = get_or_create_variable(find_between(line, ",", ")"));
      ins->set_argument2(v);

      CUR_CONTEXT->add_instru(ins);
    }
    else if (line.find("lire_a") != string::npos)
    {
      ins = new read_at;

      v = get_or_create_variable(variable_to_change(line));
      ins->set_return_var(v);

      v = get_or_create_variable(find_between(line, "(", ")"));
      ins->set_argument1(v);

      CUR_CONTEXT->add_instru(ins);
    }
    else if (line.find(");") != string::npos) {
      // This method of function recognition is a bit ugly :)
      parse_function_call(line);
    }
    else if (line.find("=") != string::npos)
    {
      ins = new affectation;

      v = get_or_create_variable(variable_to_change(line));
      ins->set_return_var(v);

      v = get_or_create_variable(find_between(line, "=", ";"));
      ins->set_argument1(v);

      CUR_CONTEXT->add_instru(ins);
    }
    else
    {
      _LOG_ERROR("Unkown instruction: %s", line.c_str());
    }
  }

  if (nbErrorDetected != 0) {
    goto abortLabel;
  }

  // Restart the counter for the RAM output
  fileLineCounter = 0;

  // Gestion des instructions
  for (fonction * func : fonctionTable) {
    vector<instruction *> * instruTable = &func->instruTable;
    func->startRamAddress = fileLineCounter;

    if (func->isBeingEdited) {
      _LOG_ERROR("Function \"%s\" is never closed", func->name.c_str());
    } 
    if (func->is_unused()) {
      _LOG_WARNING("The function \"%s\" is not used", func->name.c_str());
    }

    if (func != GLOBAL_CONTEXT) {
      // TODO: Ajouter les PUSH pour les variables locales ici
    }

    // LOG_DEBUG("CONTEXT : %s", func->name.c_str());
    for (index = 0; index < instruTable->size(); ++index)
    {
      // LOG_DEBUG("INSTYPE : %d", instruTable->at(index)->type);

      instruTable->at(index)->set_address(fileLineCounter);
      wholeFile += instruTable->at(index)->print_instruction();
      fileLineCounter += instruTable->at(index)->nbInstrucLine;

      if (instruTable->at(index)->type == FIN_CONDITION) {
        sprintf(tmpStr1, ":condition(%s)", instruTable->at(index)->id.c_str());
        sprintf(tmpStr2, "%05x", fileLineCounter);
        //wholeFile = replace_all(wholeFile, string(tmpStr1), string(tmpStr2));
      }

      if (instruTable->at(index)->type == FIN_TANT_QUE) {
        string toClose = instruTable->at(index)->id;
        
        sprintf(tmpStr1, ":endloop(%s)", toClose.c_str());
        sprintf(tmpStr2, "%05x", fileLineCounter);
        //wholeFile = replace_all(wholeFile, string(tmpStr1), string(tmpStr2));
        
        sprintf(tmpStr1, ":loop(%s)", toClose.c_str());
        sprintf(tmpStr2, "%05x", func->get_loop_back_address(toClose.c_str())); 
        //wholeFile = replace_all(wholeFile, string(tmpStr1), string(tmpStr2));
      }
    }
  }

  // Replace address call
  for (fonction * func : fonctionTable) {
    sprintf(tmpStr1, ":call(%s)", func->name.c_str());
    sprintf(tmpStr2, "%05x", func->startRamAddress);
    //wholeFile = replace_all(wholeFile, string(tmpStr1), string(tmpStr2));
  }

  // fin du programme
  snprintf(tmpStr1, sizeof(tmpStr1), "JMP %05x\n", fileLineCounter++);
  wholeFile += tmpStr1;

  // gestion des variables
  for (fonction * func : fonctionTable) {
    LOG_DEBUG("CONTEXT : %s", func->name.c_str());
    for (var * variable : func->variableTable) {
      //LOG_DEBUG("VAR : %s", variable->id.c_str());
      
      if (variable->isUnused()) {
        if (!variable->isUsedAsRead && !variable->isUsedAsWrite) {
          _LOG_WARNING("Variable \"%s\" is not used", variable->id.c_str());
        } else if (!variable->isUsedAsWrite) {
          _LOG_WARNING("Variable \"%s\" is not set", variable->id.c_str());
        } else if (!variable->isUsedAsRead) {
          _LOG_WARNING("Variable \"%s\" is set but never used", variable->id.c_str());
        }
      }

      // Declare as variable in the flash only the global constant
      if (!variable->isLocal) {
        snprintf(tmpStr1, sizeof(tmpStr1), "VAR %07x\n", variable->value & 0x1ffffff);
        wholeFile += tmpStr1;
        variable->address = fileLineCounter;
        ++fileLineCounter;

        // replacement of the variable name in the program with the address
        sprintf(tmpStr1, ":addr(%s)", variable->id.c_str());
        sprintf(tmpStr2, "%05x", variable->address);
        //wholeFile = replace_all(wholeFile, string(tmpStr1), string(tmpStr2));
      }
    }
  }

  if (wholeFile.find(":addr(") != string::npos) {
    // Should be decomment for release
    //_LOG_ERROR("Variable not declared: %s", find_between(wholeFile, ":addr(", ")").c_str());
  }

  retError = write_string_in_file(asmFilePath, wholeFile);

abortLabel: 
  bagoFile.close();

  return retError;
}

void print_usage(void) 
{
  LOG("You should use this program with the following arguments :\n");
  LOG("\t ./bag-compiler -o <file.asm> <file.bag> [-k]\n");
  LOG("Options\n");
  LOG("\t -k  : Keep the *.bago file (for debug purpose) \n");
}

int main(int argc, char const *argv[])
{
  char bagoFilePath[MAX_BAGO_FILE_PATH_LEN];
  struct timeval startTime;
  int index;
  uint8_t keepBagoFileOpt = 0;
  const char *outputFilePath = NULL;
  const char *inputFilePath = NULL;

  if (argc < 2) {
    print_usage();
    return 1;
  }

  // Check all argument
  for (index = 1; index < argc; index++) {
    if (!strncmp(argv[index], "-o", 2)) {
      if (argc - index > 1) {
        // The next argument is an output file path
        outputFilePath = argv[++index];
      }
      else {
        LOG_ERROR("-o error: argument missing");
        return 1;
      }
    } else if (!strncmp(argv[index], "-k", 2)) {
      keepBagoFileOpt = 1;
    } else if (!strncmp(argv[index], "-v", 2)) {
      LOG_INFO("bag-compiler v%s - %s", APP_VERSION, __DATE__);
      return 0;
    } 
    else {
      // This is an input file
      if (inputFilePath == NULL) {
        inputFilePath = argv[index];
      }
      else {
        LOG_ERROR("Too much input files");
        print_usage();
        return 1;
      }
    }
  }

  // Save start time
  gettimeofday(&startTime, NULL);

  // Create the *.bago file
  if (create_bago_file_path(outputFilePath, bagoFilePath, sizeof(bagoFilePath)) != 0) {
    return -1; // LOG_ERROR in the function
  }

  // Preprocessor duty : generate a *.bago file
  if (preprocessor(inputFilePath, bagoFilePath) != 0) {
    LOG_ERROR("-- Preprocessor failed --");
    return -1;
  }

  // Compiler duty
  compiler(bagoFilePath, outputFilePath);
  print_build_finished(startTime, nbErrorDetected, nbWarningDetected);

  if (keepBagoFileOpt == 0) {
    remove(bagoFilePath);
  }

  // Return 0 only if no error
  return (nbErrorDetected == 0) ? 0 : 1;
}

/**
 * @brief Print the ending line of the compiler 
 * 
 * @param startTime
 * @param nbError 
 * @param nbWarnings 
 */
void print_build_finished(struct timeval startTime, int nbError, int nbWarning)
{
  struct timeval endTime;
  int elapsedTimeSec;
  int elapsedTimeMs;
  int startTimeMs;
  int endTimeMs;

  // Save end time
  gettimeofday(&endTime, NULL);

  // Compute time variable
  startTimeMs = startTime.tv_sec * 1000 + startTime.tv_usec / 1000;
  endTimeMs = endTime.tv_sec * 1000 + endTime.tv_usec / 1000;

  elapsedTimeSec = (endTimeMs - startTimeMs) / 1000;
  elapsedTimeMs = (endTimeMs - startTimeMs) % 1000;

  LOG_INFO("Build Finished. %d errors, %d warnings. (took %ds.%03dms)",
           nbError, nbWarning, elapsedTimeSec, elapsedTimeMs);
}