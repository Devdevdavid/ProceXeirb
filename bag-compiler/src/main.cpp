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

bool isInteger(const string &s)
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

bool isReal(const string &s)
{
  if (s.find(".") != string::npos) {
    string t1 = s;
    t1 = replace_all(t1, ".", "");
    
    return isInteger(t1);
  } else {
    return false;
  }
}

bool isAValidVarName(const string &s)
{
  if (s.empty()) {
    return false;
  }
  if (isdigit(s[0])) {
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

  if (isAValidVarName(name)) {
    v->name = name;
    v->type = type;
    v->value = 0;
    CUR_CONTEXT->add_local_var(v);
    return v;
  } else {
    _LOG_ERROR("Invalid name for variable: %s", name.c_str());
    return NULL;
  }
}

var * declare_const_var(string name)
{
  var * v = new var;

  if (isInteger(name)) {
    v->value = atol(name.c_str());
    v->type = INTEGER;
  }
  else if (isReal(name)) {
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
  GLOBAL_CONTEXT->add_local_var(v);

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

void create_operation(instruction * ins, string line, string operatorSymbole) 
{
  var * v;    // Pointer on a lambda variable

  //first, find the variable to update
  v = get_or_create_variable(variable_to_change(line));
  ins->set_return_var(v);

  //Argument 1
  v = get_or_create_variable(find_between(line, "=", operatorSymbole));
  ins->set_argument1(v);

  //Argument 2
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

vector<string> str_split(string s, string delimiter)
{
  size_t pos_start = 0, pos_end, delim_len = delimiter.length();
  string token;
  vector<string> res;

  while ((pos_end = s.find(delimiter, pos_start)) != string::npos) {
    token = s.substr(pos_start, pos_end - pos_start);
    pos_start = pos_end + delim_len;
    res.push_back(token);
  }

  res.push_back(s.substr(pos_start));
  return res;
}

int parse_function_declaration(string line)
{
  fonction * func = new fonction;
  string argLine;
  vector<string> argStrList;
  var * variable;
  uint16_t index;

  // Get function name
  func->name = find_between(line, "fonction", "(");
  if (func->name.empty()) {
    _LOG_ERROR("Invalid function name");
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

  returnStr = find_between(line, "retourne", ";");
  if (!returnStr.empty()) {
    returnVar = get_or_create_variable(returnStr);
  } else {
    returnVar = NULL;
  }
  func->set_return_var(returnVar);
  
  func->isBeingEdited = false;
  CUR_CONTEXT = GLOBAL_CONTEXT;

  return 0;
}

int parse_function_call(string line) 
{
  functionCall * ins;
  string funcName, argLine;
  vector<string> argStrList;
  fonction * funcCalled;
  var * v;
  uint16_t argIndex;

  // Is there a return value needed ?
  if (line.find("=") != string::npos) {
    funcName = find_between(line, "=", "(");
    v = get_or_create_variable(variable_to_change(line));
  } else {
    funcName = line.substr(0, line.find("("));
    v = NULL; // Don't care about the returned value
  }

  if ((funcCalled = find_fonction(funcName)) != NULL) {
    LOG_INFO("A fonction call found here : \"%s\"", funcCalled->name.c_str());
  } else {
    _LOG_ERROR("Unknown fonction name : \"%s\"", funcName.c_str());
    return -1;
  }

  // Create the object
  ins = new functionCall;

  // Link the instruction to the function called
  ins->func = funcCalled;

  // v can be NULL to indicate no return value
  ins->link_returned_var(v); 

  // Extract arg declaration
  argLine = find_between(line, "(", ")");
  argStrList = str_split(argLine, ",");

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
 * @return int 0: OK, 1: error
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
  int retError = 0;
  int lineCounter = 0;
  uint32_t index;
  ifstream bagFile;
  ofstream bagoFile;
  string line, originLine, defineTmp;
  vector<string> defineContent;
  vector<string> defineName;

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

  // First pass: Preprocessor duty
  while (getline(bagFile, originLine) && (retError == 0)) {
    ++lineCounter;
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
        _LOG_ERROR("Wrong syntax on line %d: \"%s\"", lineCounter, originLine.c_str());
        retError = 2; // Syntaxe Error
      } 
      continue; // Do not copy this line
    }

    // For each line, try to find known definition
    for (index = 0; index < defineName.size(); ++index) {
      if (line.find(defineName[index]) != string::npos) {
        line = replace_all(line, defineName[index], defineContent[index]);
      }
    }
    
    // Ignore empty lines (Have to be done after #definition replacement)
    if (line.length() <= 1) {
      continue;
    }

    // Save the line
    bagoFile << line << endl;
  }

  // Close files 
  bagFile.close();
  bagoFile.close();

  return retError;
}

void replace_in_whole_file(string wholeFile, const char * name, int id, int ramIndex)
{
  char tmp1[30] = "";
  char tmp2[30] = "";

  sprintf(tmp1, ":%s(%d)", name, id);
  sprintf(tmp2, "%05x", ramIndex);

  wholeFile = replace_all(wholeFile, string(tmp1), string(tmp2));
}

void create_global_context(void)
{
  // Create the function for global context
  fonctionTable.push_back(new fonction); 

  // Name the global context
  GLOBAL_CONTEXT->name = ".global";
}

int compiler(const char * bagoFilePath, const char * asmFilePath) 
{
  int retError = 0;
  bool tooMuchErrorAbort = false;
  string line = "";
  string wholeFile;
  instruction *ins;
  var * v;
  uint32_t indexRam = 0;
  uint32_t index = 0;
  char tmpStr1[30] = "";
  char tmpStr2[30] = "";

  // Input file
  ifstream bagoFile(bagoFilePath);
  if (!bagoFile.is_open()) {
    LOG_ERROR("Failed to open *.bago file %s: %s\n", bagoFilePath, strerror(errno));
    retError = 1;
  }

  // Add all constant value in memory
  create_global_context();

  //parser
  while (getline(bagoFile, line) && (tooMuchErrorAbort == false))
  {
    // LOG_DEBUG("cur line = %s", line.c_str());
    if ((line.find("entier") == 0) || (line.find("reel") == 0))
    {
      declare_var(line);
    }
    else if (line.find("rve") != string::npos)
    { //real to int
      ins = new ins_fti;

      v = get_or_create_variable(variable_to_change(line));
      ins->set_return_var(v);

      //Argument 1
      v = get_or_create_variable(find_between(line, "(", ")"));
      ins->set_argument1(v);

      CUR_CONTEXT->add_instru(ins);
    }
    else if (line.find("evr") != string::npos)
    { //int to real
      ins = new ins_itf;

      //first, find the variable to update
      v = get_or_create_variable(variable_to_change(line));
      ins->set_return_var(v);

      //Argument 1
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

    if (nbErrorDetected >= 5) {
      tooMuchErrorAbort = true;
    }
  }

  if (tooMuchErrorAbort) {
    goto abortLabel;
  }

  // Gestion des instructions
  for (fonction * func : fonctionTable) {
    vector<instruction *> * instruTable = &func->instruTable;
    func->startRamAddress = indexRam;

    if (func->isBeingEdited) {
      _LOG_ERROR("Function \"%s\" is never closed", func->name.c_str());
    }

    // LOG_DEBUG("CONTEXT : %s", func->name.c_str());
    for (index = 0; index < instruTable->size(); ++index)
    {
      // LOG_DEBUG("INSTYPE : %d", instruTable->at(index)->type);

      instruTable->at(index)->set_address(indexRam);
      wholeFile += instruTable->at(index)->print_instruction();
      indexRam += instruTable->at(index)->nbInstrucLine;

      if (instruTable->at(index)->type == FIN_CONDITION) {
        sprintf(tmpStr1, ":condition(%s)", instruTable->at(index)->id.c_str());
        sprintf(tmpStr2, "%05x", indexRam);
        //wholeFile = replace_all(wholeFile, string(tmpStr1), string(tmpStr2));
      }

      if (instruTable->at(index)->type == FIN_TANT_QUE) {
        string toClose = instruTable->at(index)->id;
        
        sprintf(tmpStr1, ":endloop(%s)", toClose.c_str());
        sprintf(tmpStr2, "%05x", indexRam);
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
  snprintf(tmpStr1, sizeof(tmpStr1), "JMP %05x\n", indexRam++);
  wholeFile += tmpStr1;

  // gestion des variables
  for (fonction * func : fonctionTable) {
    LOG_DEBUG("CONTEXT : %s", func->name.c_str());
    for (var variable : func->variableTable) {

      LOG_DEBUG("VAR : %s", variable.id.c_str());

      snprintf(tmpStr1, sizeof(tmpStr1), "VAR %07x\n", variable.value & 0x1ffffff);
      wholeFile += tmpStr1;
      variable.address = indexRam;
      indexRam++;

      if (variable.isUnused()) {
        _LOG_WARNING("Unused variable \"%s\" (R: %d, W: %d)", 
          variable.name.c_str(), variable.isUsedAsRead, variable.isUsedAsWrite);
      }

      // replacement of the variable name in the program with the address
      sprintf(tmpStr1, ":addr(%s)", variable.id.c_str());
      sprintf(tmpStr2, "%05x", variable.address);
      //wholeFile = replace_all(wholeFile, string(tmpStr1), string(tmpStr2));
    }
  }

  if (wholeFile.find(":addr(") != string::npos) {
    _LOG_ERROR("Variable not declared: %s", find_between(wholeFile, ":addr(", ")").c_str());
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

  // Arg check
  if (argc < (3 + 1)) {
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
        fprintf(stderr, "-o error: argument missing\n");
        return 1;
      }
    } else if (!strncmp(argv[index], "-k", 2)) {
      keepBagoFileOpt = 1;
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