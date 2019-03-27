#include "instruction.hpp"

extern uint32_t fileLineCounter;          // Index of the line currently analysed (Preprocessor and compiler)

// Arrhh, you drive me crazy with this line of code...
// Instruction needs to access to this function 
// to use constant varaibles in asm
var * get_or_create_variable(string name);

/**
 * @brief Tiny interface to get an
 * id pointing on a constant
 * Note: Declare the variable if not existing
 * 
 * @param constVarName 
 * @return string 
 */
string get_const_var_id(string constVarName)
{
  var * constVar = get_or_create_variable(constVarName);
  constVar->isUsedAsRead = true;
  return constVar->id;
}

// ===========================
//       INSTRUCTION
// ===========================

instruction::instruction(void)
{
  this->nbInstrucLine = 0;
}

void instruction::set_argument1(var * v)
{
  if (v == NULL) {
    return;
  }
  v->isUsedAsRead = true;
  this->a1 = v;
}

void instruction::set_argument2(var * v)
{
  if (v == NULL) {
    return;
  }
  v->isUsedAsRead = true;
  this->a2 = v;
}

void instruction::set_return_var(var * v)
{
  this->retVar = v;

  if (v != NULL) {
    v->isUsedAsWrite = true;
  }
}

/**
 * @brief Append str to the instruction's buffer and 
 * increment a counter for RAM management
 * 
 * @param str: the line to append 
 */
void instruction::write_and_count_inst(string str)
{
  ++nbInstrucLine;
  instBuffer += str;
}

void instruction::print_get_local_var(var *v)
{
  string constIdStr = get_const_var_id(to_string(v->contextOffset));
  // Compute the dynamique address of the local variable
  write_and_count_inst("CSA :addr(" + constIdStr + ")\n");
  // Get the content of the computed address into the ACCU register
  write_and_count_inst("GAD " DYN_ADDI_ADDR "\n");
}

/**
 * @brief Print instruction to Get a variable inside 
 * the ACCU register whatever the variable type 
 * LOCAL or GLOBAL
 * 
 * @param v 
 */
void instruction::print_get_inst_for_var(var *v)
{
  if (v->isLocal) {
    print_get_local_var(v);
  } else {
    // Get the content of the address into the ACCU register
    write_and_count_inst("GET :addr(" + v->id  + ")\n");
  }
}

void instruction::print_save_accu(void)
{
  if (retVar->isLocal) {
    string constIdStr = get_const_var_id(to_string(retVar->contextOffset));
    // Compute the dynamique address of the local variable
    write_and_count_inst("CSA :addr(" + constIdStr + ")\n");
    // Move the accu to the content pointed by the dynamic address
    write_and_count_inst("SAD " DYN_ADDI_ADDR "\n");
  } else {
    write_and_count_inst("STA :addr(" + retVar->id + ")\n");
  }
}

void instruction::set_address(uint32_t address)
{
  this->address = address;
}

/**
 * @brief Print the asm instruction for operation (+ - * /)
 * 
 * @param opInstStr
 */
void instruction::print_operation(string opInstStr)
{
  if (a1->type != a2->type) {
    _LOG_ERROR("Variable are not of the same type in this operation");
    return;
  }

  if (a2->isLocal) {
    print_get_local_var(a2);
    write_and_count_inst("STA " DUMMY_FLASH_ADDR "\n");
    print_get_inst_for_var(a1);
    write_and_count_inst(opInstStr + " " DUMMY_FLASH_ADDR "\n");
  } else {
    print_get_inst_for_var(a1);
    write_and_count_inst(opInstStr + " :addr(" + a2->id + ")\n");
  }
}

void instruction::print_operation_and_store(string opInstStr)
{
  print_operation(opInstStr);
  print_save_accu();
}

// ===========================
//        OPERATIONS
// ===========================

addition::addition()
{
  type = ADDITION;
}
string addition::print_instruction()
{
  if (a1->type == INTEGER) {
    print_operation_and_store("ADD");
  } else {
    print_operation_and_store("FDD");
  }
  return instBuffer;
}

soustraction::soustraction()
{
  type = SOUSTRACTION;
}
string soustraction::print_instruction()
{
  print_operation_and_store("SUB");
  return instBuffer;
}

multiplication::multiplication()
{
  type = MULTIPLICATION;
}
string multiplication::print_instruction()
{
  if (a1->type == INTEGER) {
    print_operation_and_store("MUL");
  } else {
    print_operation_and_store("FMU");
  }
  return instBuffer;
}

division::division()
{
  type = DIVISION;
}
string division::print_instruction()
{
  if (a1->type == INTEGER) {
    print_operation_and_store("DIV");
  } else {
    print_operation_and_store("FDI");
  }
  return instBuffer;
}

ins_or::ins_or()
{
  type = OR;
}
string ins_or::print_instruction()
{
  print_operation_and_store("LOR");
  return instBuffer;
}

ins_nor::ins_nor()
{
  type = NOR;
}
string ins_nor::print_instruction()
{
  print_operation_and_store("NOR");
  return instBuffer;
}

ins_xor::ins_xor()
{
  type = XOR;
}
string ins_xor::print_instruction()
{
  print_operation_and_store("XOR");
  return instBuffer;
}

ins_and::ins_and()
{
  type = AND;
}
string ins_and::print_instruction()
{
  print_operation_and_store("AND");
  return instBuffer;
}

// ===========================
//        AFFECTATION
// ===========================

affectation::affectation()
{
  type = AFFECTATION;
}

string affectation::print_instruction()
{
  print_get_inst_for_var(a1);
  print_save_accu();

  return instBuffer;
}

// ===========================
//        IF AND LOOP
// ===========================

condition::condition()
{
  type = CONDITION;
}

void condition::set_condition_type(string type)
{
  this->condition_type = type;
}

string condition::print_instruction()
{
  if (condition_type == ">") {
    print_operation("TGT");
  } else if (condition_type == "<") {
    print_operation("TLT");
  } else if (condition_type == "==") {
    print_operation("TEQ");
  } 
  write_and_count_inst("JCC :condition(" + id + ")\n");
  return instBuffer;
}

endif::endif()
{
  type = FIN_CONDITION;
}

string endif::print_instruction()
{
  return "";
}

loop::loop()
{
  type = TANT_QUE;
}

void loop::set_condition_type(string type)
{
  this->condition_type = type;
}

string loop::print_instruction()
{
  if (condition_type == ">") {
    print_operation("TGT");
  } else if (condition_type == "<") {
    print_operation("TLT");
  } else if (condition_type ==  "==") {
    print_operation("TEQ");
  }
  write_and_count_inst("JCC :endloop(" + id + ")\n");
  
  return instBuffer;
}

endloop::endloop()
{
  type = FIN_TANT_QUE;
}

string endloop::print_instruction()
{
  write_and_count_inst("JMP :loop(" + id + ")\n");

  return instBuffer;
}

// ===========================
//    STANDARD FUNCTIONS 
// ===========================

disp_LCD::disp_LCD()
{
  type = AFFICHAGE_LCD;
}

string disp_LCD::print_instruction()
{
  print_get_inst_for_var(a1);
  write_and_count_inst("STA 80001\n");

  return instBuffer;
}

write_to_shared::write_to_shared()
{
  type = ECRITURE_MEMOIRE;
}

string write_to_shared::print_instruction()
{
  print_get_inst_for_var(a1);
  write_and_count_inst("ADD " SHARED_MEM_ADDR "\n");
  if (a2->isLocal) {
    print_get_local_var(a2);
    write_and_count_inst("STA " DUMMY_FLASH_ADDR "\n");
    write_and_count_inst("SAD " DUMMY_FLASH_ADDR "\n");
  } else {
    write_and_count_inst("SAD :addr(" + a2->id + ")\n");
  }

  return instBuffer;
}

sine::sine()
{
  type = SIN;
}

string sine::print_instruction()
{
  print_get_inst_for_var(a1);
  write_and_count_inst("ADD " SIN_TABLE_ADDR "\n");
  write_and_count_inst("STA " DUMMY_FLASH_ADDR "\n");
  write_and_count_inst("GAD " DUMMY_FLASH_ADDR "\n"); //get @ address
  print_save_accu(); //store in the return var

  return instBuffer;
}

cos::cos()
{
  type = COS;
}

string cos::print_instruction()
{
  print_get_inst_for_var(a1);
  write_and_count_inst("ADD :addr(" + get_const_var_id("90") + ")\n");
  write_and_count_inst("ADD " SIN_TABLE_ADDR "\n");
  write_and_count_inst("STA " DUMMY_FLASH_ADDR "\n");
  write_and_count_inst("GAD " DUMMY_FLASH_ADDR "\n"); //get @ address
  print_save_accu(); //store in the return var
  
  return instBuffer;
}

write_at::write_at()
{
  type = WRITE_AT;
}

string write_at::print_instruction()
{
  if (a2->isLocal) {
    print_get_local_var(a2);
    write_and_count_inst("STA " DUMMY_FLASH_ADDR "\n");
    print_get_inst_for_var(a1);
    write_and_count_inst("SAD " DUMMY_FLASH_ADDR "\n");
  } else {
    print_get_inst_for_var(a1);
    write_and_count_inst("SAD :addr(" + a2->id + ")\n");
  }
  
  return instBuffer;
}

read_at::read_at()
{
  type = READ_AT;
}

string read_at::print_instruction()
{
  if (a1->isLocal) {
    print_get_local_var(a1);
    write_and_count_inst("STA " DUMMY_FLASH_ADDR "\n");
    write_and_count_inst("GAD " DUMMY_FLASH_ADDR "\n");
  } else {
    write_and_count_inst("GAD :addr(" + a1->id + ")\n");
  }
  print_save_accu(); 
  return instBuffer;
}

// ===========================
//      TYPE CONVERSION
// ===========================

ins_fti::ins_fti()
{
  type = FTI;
}

string ins_fti::print_instruction()
{
  if (a1->isLocal) {
    print_get_inst_for_var(a1);
    write_and_count_inst("STA " DUMMY_FLASH_ADDR "\n");
    write_and_count_inst("FTI " DUMMY_FLASH_ADDR "\n");
  } else {
    write_and_count_inst("FTI :addr(" + a1->id   + ")\n");
  }
  print_save_accu();

  return instBuffer;
}

ins_itf::ins_itf()
{
  type = ITF;
}

string ins_itf::print_instruction()
{
  if (a1->isLocal) {
    print_get_inst_for_var(a1);
    write_and_count_inst("STA " DUMMY_FLASH_ADDR "\n");
    write_and_count_inst("ITF " DUMMY_FLASH_ADDR "\n");
  } else {
    write_and_count_inst("ITF :addr(" + a1->id   + ")\n");
  }
  print_save_accu();

  return instBuffer;
}

// ===========================
//        FUNCTION CALL
// ===========================

functionCall::functionCall()
{
  type = FUNCTION_CALL;
  func = NULL;
}

/**
 * @brief Link a fonction to the functionCall Object
 * 
 * @param pFunc : function to link
 * @return 0: OK, -1: Error
 */
int functionCall::link_function(fonction * pFunc)
{
  if (pFunc == NULL) {
    _LOG_ERROR("[INTERNAL] Undefined function for functionCall");
    return -1;
  }

  if (pFunc->isBeingEdited) {
    _LOG_ERROR("Recurcive call for function \"%s\" is not supported", pFunc->name.c_str());
    return -1;
  }

  // Update flag
  pFunc->isCalledAtLeastOnce = true;

  // Link the function
  func = pFunc;

  return 0;
}

/**
 * @brief Link argument to a function call 
 * with validity check. Argument should be linked in the same 
 * order as the function arguments to match
 * 
 * @param v 
 * @return -1: Error, 0: OK
 */
int functionCall::link_argument(var *v)
{
  if (func == NULL) { return -1; }

  if (func->is_argument_valid(params.size(), v) == false) {
    return -1; // A log is already displayed inside
  }

  // Mark variable as readed
  v->isUsedAsRead = true;

  // Variable is valid, add it to the sorted list
  params.push_back(v);

  return 0;
}

/**
 * @brief Link the returned value to the function with a validity check
 * 
 * @param v 
 * @return int -1: Error, 0: OK
 */
int functionCall::link_returned_var(var *v)
{
  if (func == NULL) { return -1; }

  // V can be NULL to indicate void
  if (func->is_returned_var_valid(v) == false) {
    return -1; // A log is already displayed inside
  }

  // Variable is valid, add it to the sorted list
  set_return_var(v);

  return 0;
}

void functionCall::print_push(var * varToPush)
{
  print_get_inst_for_var(varToPush);
  write_and_count_inst("++StackPointer\n");
  write_and_count_inst("SAD " STACK_POINTER_ADDR "\n");
}

string functionCall::print_instruction()
{
  for (int index = params.size() - 1; index >= 0; index--) {
    print_push(params.at(index));
  }

  // TODO: push return address


  write_and_count_inst("JMP :call(" + func->name + ")\n");
  
  return instBuffer;
}

