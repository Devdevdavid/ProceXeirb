/******************************************************************************
 *  Authors : Pierre JOUBERT, David DEVANT
 *  With the kind collaboration of : Julien BESSE
 *  Date    : 04/04/2018
 *  Updated : 04/05/2019
 *  OS      : Linux / MacOS
 *    The goal of this program is to compile a code written in language 
 *  "Baguette" into assembly.
 ******************************************************************************/

#define MAIN_CPP

#include <fstream>
#include <iostream>
#include <stdint.h>
#include <unistd.h>
#include <vector>
#include <stack>
#include <sys/time.h>

#include "global.hpp"
#include "instruction.hpp"
#include "variable.hpp"
#include "fonction.hpp"

#define DEFAULT_FILE_PERM       (S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH)
#define MAX_BAGO_FILE_PATH_LEN  128

#define GLOBAL_CONTEXT          fonctionTable.front()

/** Don't replace id in debug build, asm is much more easier to read */
#ifdef DEBUG
#define MACRO_REPLACE_ALL_OCCUR
#else
#define MACRO_REPLACE_ALL_OCCUR  wholeFile = replace_all(wholeFile, string(tmpStr1), string(tmpStr2));
#endif 

// Global variables
vector<fonction *> fonctionTable;
fonction * CUR_CONTEXT;
uint32_t fileLineCounter;                  // Index of the line currently analysed (Preprocessor and compiler)

/**
 * @brief Replace all from occurances in str into to string
 * 
 * @param str 
 * @param from 
 * @param to 
 * @return string 
 */
string replace_all(string str, const string &from, const string &to)
{
  size_t start_pos = 0;

  while ((start_pos = str.find(from, start_pos)) != string::npos) {
    str.replace(start_pos, from.length(), to);
    start_pos += to.length(); // Handles case where 'to' is a substring of 'from'
  }
  return str;
}

/**
 * @brief Remove all the comment "//" of a line
 * 
 * @param str : input line 
 * @return string : output line without comment
 */
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

/**
 * @brief Tell if "str" is representing a integer or not
 * 
 * @param str 
 * @return bool 
 */
bool is_integer(const string &str)
{
  char * p;

  if (str.empty() || (!isdigit(str[0]) && (str[0] != '-') && (str[0] != '+'))) {
    return false;
  }
  if (str.find(".") != string::npos) {
    return false;
  }
  
  strtol(str.c_str(), &p, 10);

  return (*p == 0);
}

/**
 * @brief Tell if "str" is representing a real or not
 * 
 * @param str
 * @return bool 
 */
bool is_real(const string &str)
{
  if (str.find(".") != string::npos) {
    string t1 = str;
    t1 = replace_all(t1, ".", "");
    
    return is_integer(t1);
  } else {
    return false;
  }
}

/**
 * @brief Tell if str is a correct variable name
 * 
 * @param s 
 * @return true 
 * @return false 
 */
bool is_a_valid_var_name(const string &str)
{
  uint16_t index;

  if (str.empty()) {
    _LOG_ERROR("Variable name is empty");
    return false;
  }
  if (isdigit(str[0])) {
    _LOG_ERROR("Variable name cannot start with a number: \"%s\"", str.c_str());
    return false;
  }

  // Check for special characters
  for (index = 0; index < str.size(); index++) {
    if (!isdigit(str[index]) && !isalpha(str[index]) && (str[index] != '_')) {
      _LOG_ERROR("Variable name contain unauthorized character: \"%s\"", str.c_str());
      return false;
    }
  }

  // Look if the variable name is already used
  if (CUR_CONTEXT->get_var(str) != NULL) {
    _LOG_ERROR("Variable name is already used in the function context: \"%s\"", str.c_str());
    return false;
  }
  if (GLOBAL_CONTEXT->get_var(str) != NULL) {
    _LOG_ERROR("Variable name is already used in the global context: \"%s\"", str.c_str());
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
 * @brief Return the extracted string between start and end
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

/**
 * @brief Set the value of v according to valueStr
 * If input variable type is undefined, it is set 
 * to the type of the value
 * otherwise, types are checked
 * 
 * @param v 
 * @param valueStr 
 * @return int : 0: OK, 1: Error
 */
int set_var_init_value(var * v, string valueStr)
{
  varType type;
  int32_t value;

  if (is_integer(valueStr)) {
    value = atol(valueStr.c_str());
    type = INTEGER;
  }
  else if (is_real(valueStr)) {
    value = atof(valueStr.c_str()) * 256;
    type = REAL;
  } else {
    return 1;
  }

  // Set or Check
  if (v->type == UNDEFINED) {
    v->type = type;
  } else {
    if (v->type != type) {
      return 1; // The type of value and variable are different
    }
  }

  // Copy value if all is right
  v->value = value;

  return 0;
}

/**
 * @brief Parse a variable with array and init value 
 * 
 * @param line : declaration line of the variable
 * @return var* : Pointer on the variable freshly created
 */
var * parse_var_declaration(string line)
{
  var * v = new var;
  uint16_t varCellCount = 1;
  string arraySizeStr = "";
  string delimNameChar = ";";
  string initValueStr = "";

  // Do we have a initial value ?
  if (line.find("=") != string::npos) {
    delimNameChar = "=";
    initValueStr = find_between(line, "=", ";");
  }

  // Is it an array ?
  if (line.find("[") != string::npos) {
    delimNameChar = '[';
    arraySizeStr = find_between(line, "[", "]");
    varCellCount = atol(arraySizeStr.c_str());
    if ((varCellCount < 1) || (varCellCount > ARRAY_MAX_SIZE)) {
      _LOG_ERROR("Invalid array size %d (max: %d) here: : \"%s\"", varCellCount, ARRAY_MAX_SIZE, line.c_str());
      goto funcFailed;
    }
  }

  // Check varaible type
  if (line.find("entier") == 0) {
    v->name = find_between(line, "entier", delimNameChar);
    v->type = INTEGER;
  }
  else if (line.find("reel") == 0) {
    v->name = find_between(line, "reel", delimNameChar);
    v->type = REAL;
  } else {
    _LOG_ERROR("Unknown variable declaration : \"%s\"", line.c_str());
    goto funcFailed;
  }

  if (!is_a_valid_var_name(v->name)) {
    goto funcFailed; // _LOG_ERROR inside
  }

  // Set value to 0 but if there is an initial value, use it
  v->value = 0;
  if (!initValueStr.empty()) {
    if (CUR_CONTEXT == GLOBAL_CONTEXT) {
      if (set_var_init_value(v, initValueStr) != 0) {
        _LOG_ERROR("Wrong initial value for declaration: \"%s\"", line.c_str());
        goto funcFailed;
      }
      // Initiated variable are considered used as write
      v->isUsedAsWrite = true;
    } else {
      _LOG_ERROR("Initial value are not supported inside functions: \"%s\"", line.c_str());
      goto funcFailed;
    }
  }

  // Create varCells
  v->create_var_cell(varCellCount);
  
  return v;

funcFailed:
  delete v;
  return NULL;
}

/**
 * @brief Declare a new variable with or not initial value 
 * and add it to the current context
 * 
 * @param line : declaration line of the variable
 * @return var* : Pointer on the variable freshly declared
 */
var * declare_var(string line)
{
  var * v;
  
  if ((v = parse_var_declaration(line)) == NULL) {
    return NULL;
  }

  if (CUR_CONTEXT != GLOBAL_CONTEXT) {
    v->isLocal = true;
  }
  CUR_CONTEXT->add_var(v);

  return v;
}

/**
 * @brief Declare a new constant variable
 * 
 * @param name 
 * @return varCell* 
 */
varCell * declare_const_var(string name)
{
  string refVarName;
  var * refVar;
  var * v = new var;

  // Is it a reference to a variable ?
  if (name.find("@") == 0) {
    // Remove first character
    refVarName = name.substr(1, name.length() - 1);
    // Look for the variable
    refVar = GLOBAL_CONTEXT->get_var(refVarName);
    if (refVar != NULL) {
      // Set the link between them
      v->referencedVar = refVar;

      // We don't know how the pointer will be use so set those flags
      refVar->isUsedAsRead = true;
      refVar->isUsedAsWrite = true;

      // Variable address are integer
      v->type = INTEGER;
    } else {
      _LOG_ERROR("Reference failed: \"%s\" was not found in global context", refVarName.c_str());
      delete v;
      return NULL;
    }
  } else {
    if (set_var_init_value(v, name) != 0) {
      _LOG_ERROR("Unknonw variable \"%s\"", name.c_str());
      delete v;
      return NULL;
    }
  }

  // Constant cannot be "unused" so we set these flags
  v->isUsedAsRead = true;
  v->isUsedAsWrite = true;

  // A constant is 1 cell only
  v->create_var_cell(1);

  v->name = name;
  GLOBAL_CONTEXT->add_var(v);

  // Return the only var cell available
  return v->get_var_cell(0);
}

/**
 * @brief If variable name is declared in table, return the associated object
 * If not declared, create the object and return it
 * 
 * @param name 
 * @return var 
 */
varCell * get_or_create_variable(string name)
{
  var * v;
  string arrayIndexStr = "";
  string varName = name;
  uint16_t curArrayIndex = 0;

  // Is it an array ?
  if (name.find("[") != string::npos) {
    arrayIndexStr = find_between(name, "[", "]");
    if (!is_integer(arrayIndexStr)) {
      _LOG_ERROR("Wrong index value here: \"%s\"", name.c_str());
    }
    curArrayIndex = atol(arrayIndexStr.c_str());
    varName = name.substr(0, name.find("["));
  }

  // Look for the variable in the current context
  v = CUR_CONTEXT->get_var(varName);
  if (v == NULL) {

    // If not found, look in the global context
    v = GLOBAL_CONTEXT->get_var(varName);
    if (v == NULL) {

      // If not found, declare it in global context as a numeric constant and return reference
      return declare_const_var(varName);
    }
  }

  if (curArrayIndex < 0 || curArrayIndex >= v->arraySize) {
    _LOG_ERROR("Wrong array index (max: %d) here: \"%s\"", v->arraySize, name.c_str());
    return NULL;
  }

  return v->get_var_cell(curArrayIndex);
}

/**
 * @brief Extract the variable name between 
 * the start of str and the first "=" charcater
 * 
 * @param str 
 * @return string 
 */
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
  varCell * vc;

  vc = get_or_create_variable(variable_to_change(line));
  ins->set_return_var(vc);

  vc = get_or_create_variable(find_between(line, "=", operatorSymbole));
  ins->set_argument1(vc);

  vc = get_or_create_variable(find_between(line, operatorSymbole, ";"));
  ins->set_argument2(vc);

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

  // Create the first instruction of the function
  func_begin * ins = new func_begin;
  ins->func = func;                     // Link the instruction with the current function
  CUR_CONTEXT->add_instru(ins);

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
  varCell * returnVar;
  
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

  // Create the ending instruction of the function
  func_end * ins = new func_end;
  ins->func = func;                     // Link the instruction with the current function
  CUR_CONTEXT->add_instru(ins);

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
  varCell * vc;

  // Is there a return value needed ?
  if (line.find("=") != string::npos) {
    funcName = find_between(line, "=", "(");
    vc = get_or_create_variable(variable_to_change(line));
  } else {
    funcName = line.substr(0, line.find("("));
    vc = NULL; // NULL is equivalent to void type
  }

  if ((funcCalled = find_fonction(funcName)) == NULL) {
    _LOG_ERROR("Unknown fonction name : \"%s\"", funcName.c_str());
    return -1;
  }

  // Extract arg declaration
  argLine = find_between(line, "(", ")");
  argStrList = str_split(argLine, ",");

  if (argStrList.size() != funcCalled->args.size()) {
    _LOG_ERROR("Function \"%s\" needs %d arguments, %d given", 
      funcCalled->args.size(), argStrList.size());
    return -1;
  }

  // Create the object
  ins = new functionCall;

  // Link the instruction to the function called
  ins->link_function(funcCalled);

  // v can be NULL to indicate no return value
  ins->link_returned_var(vc); 

  for (argIndex = 0; argIndex < argStrList.size(); argIndex++) {
    if ((vc = get_or_create_variable(argStrList[argIndex])) == NULL) {
      continue;
    }
    if (ins->link_argument(vc) != 0) {
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
  string tmpStr;

  remove(bagoFilePath);
  bagoFile.open(bagoFilePath);
  if (!bagoFile.is_open()) {
    LOG_ERROR("Failed to create .bago file %s: %s", bagoFilePath, strerror(errno));
    retError = 1;
  }

  bagFile.open(bagFilePath);
  if (!bagFile.is_open()) {
    LOG_ERROR("Failed to open .bag file %s: %s", bagFilePath, strerror(errno));
    retError = 1;
  }

  // First pass: Preprocessor duty
  while (getline(bagFile, originLine) && (retError == 0)) {
    line = replace_all(originLine, " ", "");
    line = replace_all(line, "\t", "");
    line = remove_line_comment(line);         // Remove text after comment symbole "//"

    // Try to find in the line a known definition
    for (index = 0; index < defineName.size(); ++index) {
      if (line.find(defineName[index]) != string::npos) {
        line = replace_all(line, defineName[index], defineContent[index]);
      }
    }

    // Search for new #definition instruction
    if (line.find("#definition") != string::npos) {
      // Save the name and content
      tmpStr = find_between(line, "#definition", "(");
      // Check for redefinition
      if (find(defineName.begin(), defineName.end(), tmpStr) != defineName.end()) {
          _LOG_ERROR("Redefinition of \"%s\"", tmpStr.c_str());
          retError = 2; // Syntaxe Error
          continue;
      }
      // Check the name
      if (tmpStr.empty()) {
        _LOG_ERROR("Wrong syntax: \"%s\"", originLine.c_str());
        retError = 2; // Syntaxe Error
      } 

      // Save it 
      defineName.push_back(tmpStr);
      defineContent.push_back(find_between(line, "(", ")"));

      continue; // Do not copy the line of the #definition
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

  // Add the first instruction in the context to init hardware
  instruction * ins = new hw_init;
  GLOBAL_CONTEXT->add_instru(ins);

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
  varCell * vc;                       // Temporary pointer for variable declaration
  uint32_t index = 0;                 
  char tmpStr1[64] = "";              // Temporary buffer for sprintf purpose
  char tmpStr2[64] = "";              // Temporary buffer for sprintf purpose

  // Input file
  ifstream bagoFile(bagoFilePath);
  if (!bagoFile.is_open()) {
    LOG_ERROR("Failed to open *.bago file %s: %s\n", bagoFilePath, strerror(errno));
    retError = 1;
  }

  // Create the context and set it as default
  create_global_context();

  // For all lines of the file, parse it !
  while (getline(bagoFile, line) && (nbErrorDetected < 5))
  {
    if ((line.find("entier") == 0) || (line.find("reel") == 0)) {
      declare_var(line);
    }
    else if (line.find("rve") != string::npos)
    { 
      // Real to int
      ins = new ins_fti;

      vc = get_or_create_variable(variable_to_change(line));
      ins->set_return_var(vc);

      vc = get_or_create_variable(find_between(line, "(", ")"));
      ins->set_argument1(vc);

      CUR_CONTEXT->add_instru(ins);
    }
    else if (line.find("evr") != string::npos)
    { 
      // int to real
      ins = new ins_itf;

      vc = get_or_create_variable(variable_to_change(line));
      ins->set_return_var(vc);

      vc = get_or_create_variable(find_between(line, "(", ")"));
      ins->set_argument1(vc);

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

      vc = get_or_create_variable(find_between(line, "(", cond->condition_type));
      cond->set_argument1(vc);

      vc = get_or_create_variable(find_between(line, cond->condition_type, ")"));
      cond->set_argument2(vc);

      CUR_CONTEXT->add_instru(cond);
    }
    else if (line.find("sinon") == 0)
    {
      ins = new sinon;
      ins->id = CUR_CONTEXT->get_cur_cond_id();
      CUR_CONTEXT->add_instru(ins);
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

      vc = get_or_create_variable(find_between(line, "(", lo->condition_type));
      lo->set_argument1(vc);

      vc = get_or_create_variable(find_between(line, lo->condition_type, ")"));
      lo->set_argument2(vc);

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

      vc = get_or_create_variable(find_between(line, "(", ")"));
      cond->set_argument1(vc);

      vc = get_or_create_variable(variable_to_change(line));
      cond->set_return_var(vc);

      CUR_CONTEXT->add_instru(cond);
    }
    else if (line.find("cos(") != string::npos)
    {
      cos *cond = new cos;

      vc = get_or_create_variable(find_between(line, "(", ")"));
      cond->set_argument1(vc);

      vc = get_or_create_variable(variable_to_change(line));
      cond->set_return_var(vc);

      CUR_CONTEXT->add_instru(cond);
    }
    else if (line.find("afficher_LCD") != string::npos)
    {
      ins = new disp_LCD;

      vc = get_or_create_variable(find_between(line, "(", ")"));
      ins->set_argument1(vc);

      CUR_CONTEXT->add_instru(ins);
    }
    else if (line.find("ecrire_mem_part") != string::npos)
    {
      ins = new write_to_shared;

      vc = get_or_create_variable(find_between(line, "(", ","));
      ins->set_argument1(vc);

      vc = get_or_create_variable(find_between(line, ",", ")"));
      ins->set_argument2(vc);

      CUR_CONTEXT->add_instru(ins);
    }
    else if (line.find("ecrire_a(") != string::npos)
    {
      ins = new write_at;

      vc = get_or_create_variable(find_between(line, "(", ","));
      ins->set_argument1(vc);

      vc = get_or_create_variable(find_between(line, ",", ")"));
      ins->set_argument2(vc);

      CUR_CONTEXT->add_instru(ins);
    }
    else if (line.find("lire_a") != string::npos)
    {
      ins = new read_at;

      vc = get_or_create_variable(variable_to_change(line));
      ins->set_return_var(vc);

      vc = get_or_create_variable(find_between(line, "(", ")"));
      ins->set_argument1(vc);

      CUR_CONTEXT->add_instru(ins);
    }
    else if (line.find("debug(") != string::npos)
    {
      ins = new ins_dbg;

      vc = get_or_create_variable(variable_to_change(line));
      ins->set_return_var(vc);

      vc = get_or_create_variable(find_between(line, "(", ","));
      ins->set_argument1(vc);

      vc = get_or_create_variable(find_between(line, ",", ")"));
      ins->set_argument2(vc);

      CUR_CONTEXT->add_instru(ins);
    }
    else if (line.find(");") != string::npos) {
      // This method of function recognition is a bit ugly :)
      parse_function_call(line);
    }
    else if (line.find("=") != string::npos)
    {
      ins = new affectation;

      vc = get_or_create_variable(variable_to_change(line));
      ins->set_return_var(vc);

      vc = get_or_create_variable(find_between(line, "=", ";"));
      ins->set_argument1(vc);

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

    #ifdef DEBUG
    wholeFile += "// ";
    wholeFile += func->name.c_str();
    wholeFile += "\n";
    #endif

    LOG_DEBUG("CONTEXT : %s", func->name.c_str());
    for (index = 0; index < instruTable->size(); ++index) {
      LOG_DEBUG("INSTYPE : %d", instruTable->at(index)->type);

      instruTable->at(index)->set_address(fileLineCounter);
      wholeFile += instruTable->at(index)->print_instruction();
      fileLineCounter += instruTable->at(index)->nbInstrucLine;

      INS_TYPE type = instruTable->at(index)->type;
      if ((type == SINON) || (type == FIN_CONDITION)) {
        sprintf(tmpStr1, ":condition(%s)", instruTable->at(index)->id.c_str());
        sprintf(tmpStr2, "%05x", fileLineCounter);
        MACRO_REPLACE_ALL_OCCUR
      }
      if (type == FIN_CONDITION) {
        sprintf(tmpStr1, ":sinon(%s)", instruTable->at(index)->id.c_str());
        sprintf(tmpStr2, "%05x", fileLineCounter);
        MACRO_REPLACE_ALL_OCCUR
      }
      if (type == FIN_TANT_QUE) {
        string toClose = instruTable->at(index)->id;
        
        sprintf(tmpStr1, ":endloop(%s)", toClose.c_str());
        sprintf(tmpStr2, "%05x", fileLineCounter);
        MACRO_REPLACE_ALL_OCCUR
        
        sprintf(tmpStr1, ":loop(%s)", toClose.c_str());
        sprintf(tmpStr2, "%05x", func->get_loop_back_address(toClose.c_str())); 
        MACRO_REPLACE_ALL_OCCUR
      }
    }
    // Insert an infinite loop at the end of each context
    snprintf(tmpStr1, sizeof(tmpStr1), "JMP %05x\n", fileLineCounter++);
    wholeFile += tmpStr1;
  }

  // Replace address call
  for (fonction * func : fonctionTable) {
    sprintf(tmpStr1, ":call(%s)", func->name.c_str());
    sprintf(tmpStr2, "%05x", func->startRamAddress);
    MACRO_REPLACE_ALL_OCCUR
  }

  // Gestion des variables
  for (fonction * func : fonctionTable) {
    LOG_DEBUG("CONTEXT : %s", func->name.c_str());
    for (var * variable : func->variableTable) {
      LOG_DEBUG("VAR : %s", variable->get_id().c_str());
      
      if (variable->is_unused()) {
        if (!variable->isUsedAsRead && !variable->isUsedAsWrite) {
          _LOG_WARNING("Variable \"%s\" is not used", variable->get_id().c_str());
        } else if (!variable->isUsedAsWrite) {
          _LOG_WARNING("Variable \"%s\" is not set", variable->get_id().c_str());
        } else if (!variable->isUsedAsRead) {
          _LOG_WARNING("Variable \"%s\" is set but never used", variable->get_id().c_str());
        }
      }

      // Declare as variable in the flash only the global constant
      if (!variable->isLocal) {
        variable->set_base_address(fileLineCounter);

        for(index = 0; index < variable->arraySize; index++) {
          vc = variable->get_var_cell(index);

          if (variable->referencedVar != NULL) {
#ifdef DEBUG
            snprintf(tmpStr1, sizeof(tmpStr1), "VAR 00:addr(%s) // %s\n", 
              variable->referencedVar->get_var_cell(0)->get_id().c_str(), vc->get_id().c_str());
#else
            snprintf(tmpStr1, sizeof(tmpStr1), "VAR 00:addr(%s)\n", 
              variable->referencedVar->get_var_cell(0)->get_id().c_str());
#endif
          } else {
#ifdef DEBUG
            snprintf(tmpStr1, sizeof(tmpStr1), "VAR %07x // %s\n", variable->value & 0x1ffffff, vc->get_id().c_str());
#else
            snprintf(tmpStr1, sizeof(tmpStr1), "VAR %07x\n", variable->value & 0x1ffffff);
#endif
          }
          wholeFile += tmpStr1;
        }

        // Count all line of the variable
        fileLineCounter += variable->arraySize;
      }
    }
  }

  for (fonction * func : fonctionTable) {
    for (var * variable : func->variableTable) {
      for(index = 0; index < variable->arraySize; index++) {
        vc = variable->get_var_cell(index);
        // Replacement of the variable name in the program with the address
        sprintf(tmpStr1, ":addr(%s)", vc->get_id().c_str());
        sprintf(tmpStr2, "%05x", vc->get_address());
        MACRO_REPLACE_ALL_OCCUR;
      }
    }
  }

#ifndef DEBUG
  if (wholeFile.find(":addr(") != string::npos) {
    _LOG_ERROR("Variable not declared: %s", find_between(wholeFile, ":addr(", ")").c_str());
  }
#endif

  retError = write_string_in_file(asmFilePath, wholeFile);

abortLabel: 
  bagoFile.close();

  return retError;
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