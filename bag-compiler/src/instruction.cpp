#include "instruction.hpp"

// Arrhh, you drive me crasy with this line of code...
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

instruction::instruction()
{
}

instruction::~instruction()
{
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
  this->var_ = v;

  if (v != NULL) {
    v->isUsedAsWrite = true;
  }
}

void instruction::write_and_count_inst(string str)
{
  ++nbInstrucLine;
  instBuffer += str;
}

void instruction::print_get_inst_for_var(var *v)
{
  if (v->isLocal) {
    string constIdStr = get_const_var_id(to_string(v->contextOffset));
    // Compute the dynamique address of the local variable
    write_and_count_inst("CSA :addr(" + constIdStr + ")\n");
    // Get the content of the computed address into the ACCU register
    write_and_count_inst("GAD " DYN_ADDI_ADDR "\n");
  } else {
    // Get the content of the address into the ACCU register
    write_and_count_inst("GET :addr(" + v->id  + ")\n");
  }
}

void instruction::set_address(uint32_t address)
{
  this->address = address;
}

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
  write_and_count_inst("GET :addr(" + varToPush->id + ")\n");
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

addition::addition()
{
  type = ADDITION;
}

string addition::print_instruction()
{
  if (a1->type == INTEGER && a2->type == INTEGER) {
    write_and_count_inst("GET :addr(" + a1->id   + ")\n");
    write_and_count_inst("ADD :addr(" + a2->id   + ")\n");
    write_and_count_inst("STA :addr(" + var_->id + ")\n");
  } else if (a1->type == REAL && a2->type == REAL) {
    write_and_count_inst("GET :addr(" + a1->id   + ")\n");
    write_and_count_inst("FAD :addr(" + a2->id   + ")\n");
    write_and_count_inst("STA :addr(" + var_->id + ")\n");
  } else {
    _LOG_ERROR("You can only add variable with the same type: %s + %s", a1->id.c_str(), a2->id.c_str());
  }

  return instBuffer;
}

division::division()
{
  type = DIVISION;
}

string division::print_instruction()
{
  if (a1->type == INTEGER && a2->type == INTEGER) {
    write_and_count_inst("GET :addr(" + a1->id   + ")\n");
    write_and_count_inst("DIV :addr(" + a2->id   + ")\n");
    write_and_count_inst("STA :addr(" + var_->id + ")\n");
  } else if (a1->type == REAL && a2->type == REAL) {
    write_and_count_inst("GET :addr(" + a1->id   + ")\n");
    write_and_count_inst("FDI :addr(" + a2->id   + ")\n");
    write_and_count_inst("STA :addr(" + var_->id + ")\n");
  } else {
    _LOG_ERROR("You can only add variable with the same type: %s + %s", a1->id.c_str(), a2->id.c_str());
  }
  return instBuffer;
}

affectation::affectation()
{
  type = AFFECTATION;
}

string affectation::print_instruction()
{
  write_and_count_inst("GET :addr(" + a1->id   + ")\n");
  write_and_count_inst("STA :addr(" + var_->id + ")\n");

  return instBuffer;
}

soustraction::soustraction()
{
  type = SOUSTRACTION;
}

string soustraction::print_instruction()
{
  if (a1->type == INTEGER && a2->type == INTEGER) {
    write_and_count_inst("GET :addr(" + a1->id   + ")\n");
    write_and_count_inst("SUB :addr(" + a2->id   + ")\n");
    write_and_count_inst("STA :addr(" + var_->id + ")\n");
  } else if (a1->type == REAL && a2->type == REAL) {
    write_and_count_inst("GET :addr(" + a1->id   + ")\n");
    write_and_count_inst("SUB :addr(" + a2->id   + ")\n");
    write_and_count_inst("STA :addr(" + var_->id + ")\n");
  } else {
    _LOG_ERROR("You can only substract variable with the same type: %s - %s", a1->id.c_str(), a2->id.c_str());
  }
  return instBuffer;
}

multiplication::multiplication()
{
  type = MULTIPLICATION;
}

string multiplication::print_instruction()
{
    if (a1->type == INTEGER && a2->type == INTEGER) {
    write_and_count_inst("GET :addr(" + a1->id   + ")\n");
    write_and_count_inst("MUL :addr(" + a2->id   + ")\n");
    write_and_count_inst("STA :addr(" + var_->id + ")\n");
  } else if (a1->type == REAL && a2->type == REAL) {
    write_and_count_inst("GET :addr(" + a1->id   + ")\n");
    write_and_count_inst("FMU :addr(" + a2->id   + ")\n");
    write_and_count_inst("STA :addr(" + var_->id + ")\n");
  } else {
    _LOG_ERROR("You can only multiply variable with the same type: %s * %s", a1->id.c_str(), a2->id.c_str());
  }
  return instBuffer;
}

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

disp_LCD::disp_LCD()
{
  type = AFFICHAGE_LCD;
}

string disp_LCD::print_instruction()
{
  write_and_count_inst("GET :addr(" + a1->id + ")\n");
  write_and_count_inst("STA 80001\n");
  return instBuffer;
}

write_to_shared::write_to_shared()
{
  type = ECRITURE_MEMOIRE;
}

string write_to_shared::print_instruction()
{
  write_and_count_inst("GET :addr(" + a1->id + ")\n");
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
  write_and_count_inst("GET :addr(" + a1->id + ")\n");
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
  write_and_count_inst("GET :addr(" + a1->id + ")\n");
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
  write_and_count_inst("GET :addr(" + a1->id + ")\n");
  write_and_count_inst("SAD :addr(" + a2->id + ")\n"); //set @ address // Ceci est du au double buffer de VGA
  return instBuffer;
}

read_at::read_at()
{
  type = READ_AT;
}

string read_at::print_instruction()
{
  write_and_count_inst("GAD :addr(" + a1->id + ")\n"); //get @ address
  write_and_count_inst("STA :addr(" + var_->id + ")\n"); //store in the return var
  return instBuffer;
}

ins_or::ins_or()
{
  type = OR;
}

string ins_or::print_instruction()
{
  write_and_count_inst("GET :addr(" + a1->id   + ")\n");
  write_and_count_inst("LOR :addr(" + a2->id   + ")\n");
  write_and_count_inst("STA :addr(" + var_->id + ")\n");
  return instBuffer;
}

ins_nor::ins_nor()
{
  type = OR;
}

string ins_nor::print_instruction()
{
  write_and_count_inst("GET :addr(" + a1->id   + ")\n");
  write_and_count_inst("NOR :addr(" + a2->id   + ")\n");
  write_and_count_inst("STA :addr(" + var_->id + ")\n");
  return instBuffer;
}

ins_xor::ins_xor()
{
  type = OR;
}

string ins_xor::print_instruction()
{
  write_and_count_inst("GET :addr(" + a1->id   + ")\n");
  write_and_count_inst("XOR :addr(" + a2->id   + ")\n");
  write_and_count_inst("STA :addr(" + var_->id + ")\n");
  return instBuffer;
}

ins_and::ins_and()
{
  type = OR;
}

string ins_and::print_instruction()
{
  write_and_count_inst("GET :addr(" + a1->id   + ")\n");
  write_and_count_inst("AND :addr(" + a2->id   + ")\n");
  write_and_count_inst("STA :addr(" + var_->id + ")\n");
  return instBuffer;
}


ins_fti::ins_fti()
{
  type = FTI;
}

string ins_fti::print_instruction()
{
  write_and_count_inst("FTI :addr(" + a1->id   + ")\n");
  write_and_count_inst("STA :addr(" + var_->id + ")\n");
  return instBuffer;
}

ins_itf::ins_itf()
{
  type = ITF;
}

string ins_itf::print_instruction()
{
  write_and_count_inst("ITF :addr(" + a1->id   + ")\n");
  write_and_count_inst("STA :addr(" + var_->id + ")\n");
  return instBuffer;
}


