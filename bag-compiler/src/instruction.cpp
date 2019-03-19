#include "instruction.hpp"

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
  this->var_ = v;

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

  write_and_count_inst("STA :addr(" + var_->id + ")\n");
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
    print_operation("ADD");
  } else {
    print_operation("FDD");
  }
  return instBuffer;
}

soustraction::soustraction()
{
  type = SOUSTRACTION;
}
string soustraction::print_instruction()
{
  print_operation("SUB");
  return instBuffer;
}

multiplication::multiplication()
{
  type = MULTIPLICATION;
}
string multiplication::print_instruction()
{
  if (a1->type == INTEGER) {
    print_operation("MUL");
  } else {
    print_operation("FMU");
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
    print_operation("DIV");
  } else {
    print_operation("FDI");
  }
  return instBuffer;
}

ins_or::ins_or()
{
  type = OR;
}
string ins_or::print_instruction()
{
  print_operation("LOR");
  return instBuffer;
}

ins_nor::ins_nor()
{
  type = NOR;
}
string ins_nor::print_instruction()
{
  print_operation("NOR");
  return instBuffer;
}

ins_xor::ins_xor()
{
  type = XOR;
}
string ins_xor::print_instruction()
{
  print_operation("XOR");
  return instBuffer;
}

ins_and::ins_and()
{
  type = AND;
}
string ins_and::print_instruction()
{
  print_operation("AND");
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
  write_and_count_inst("STA :addr(" + var_->id + ")\n");

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
  write_and_count_inst("GET :addr(" + a1->id + ")\n");
  if (condition_type == "<") {
    write_and_count_inst("TLT :addr(" + a2->id + ")\n");
  } else if (condition_type == ">") {
    write_and_count_inst("TGT :addr(" + a2->id + ")\n");
  } else if (condition_type ==  "==") {
    write_and_count_inst("TEQ :addr(" + a2->id + ")\n");
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
  write_and_count_inst("GET :addr(" + a1->id + ")\n");
  if (condition_type == ">") {
    write_and_count_inst("TGT :addr(" + a2->id + ")\n");
  } else if (condition_type == "<") {
    write_and_count_inst("TLT :addr(" + a2->id + ")\n");
  } else if (condition_type ==  "==") {
    write_and_count_inst("TEQ :addr(" + a2->id + ")\n");
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
  write_and_count_inst("SAD :addr(" + a2->id + ")\n");

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
  write_and_count_inst("STA :addr(" + var_->id + ")\n"); //store in the return var

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
  write_and_count_inst("STA :addr(" + var_->id + ")\n"); //store in the return var
  
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
  write_and_count_inst("STA :addr(" + var_->id + ")\n"); 
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
  write_and_count_inst("STA :addr(" + var_->id + ")\n");

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
  write_and_count_inst("STA :addr(" + var_->id + ")\n");

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

