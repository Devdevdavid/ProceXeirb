#include "instruction.hpp"

extern uint32_t fileLineCounter;          // Index of the line currently analysed (Preprocessor and compiler)

// Arrhh, you drive me crazy with this line of code...
// Instruction needs to access to this function 
// to use constant varaibles in asm
varCell * get_or_create_variable(string name);

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
  varCell * constVar = get_or_create_variable(constVarName);
  constVar->p->isUsedAsRead = true;
  return constVar->get_id();
}
string get_const_var_value(int32_t constVarValue)
{
  return get_const_var_id(to_string(constVarValue));
}

// ===========================
//       INSTRUCTION
// ===========================

instruction::instruction(void)
{
  this->nbInstrucLine = 0;
}

void instruction::set_argument1(varCell * vc)
{
  if (vc == NULL) {
    return;
  }
  vc->p->isUsedAsRead = true;
  this->a1 = vc;
}

void instruction::set_argument2(varCell * vc)
{
  if (vc == NULL) {
    return;
  }
  vc->p->isUsedAsRead = true;
  this->a2 = vc;
}

void instruction::set_return_var(varCell * vc)
{
  this->retVar = vc;

  if (vc != NULL) {
    vc->p->isUsedAsWrite = true;
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

void instruction::print_get_local_var(varCell *vc)
{
  // 1: Skip the EBP in the call stack
  string constIdStr = get_const_var_value(vc->p->contextOffset);
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
void instruction::print_get_inst_for_var(varCell *vc)
{
  if (vc->p->isLocal) {
    print_get_local_var(vc);
  } else {
    // Get the content of the address into the ACCU register
    write_and_count_inst("GET :addr(" + vc->get_id()  + ")\n");
  }
}

void instruction::print_save_accu(void)
{
  if (retVar->p->isLocal) {
    string constIdStr = get_const_var_value(retVar->p->contextOffset);
    // Compute the dynamique address of the local variable
    write_and_count_inst("CSA :addr(" + constIdStr + ")\n");
    // Move the accu to the content pointed by the dynamic address
    write_and_count_inst("SAD " DYN_ADDI_ADDR "\n");
  } else {
    write_and_count_inst("STA :addr(" + retVar->get_id() + ")\n");
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
  if (a1->p->type != a2->p->type) {
    _LOG_ERROR("Variable are not of the same type in this operation");
    return;
  }

  if (a2->p->isLocal) {
    print_get_local_var(a2);
    write_and_count_inst("STA " DUMMY_FLASH_ADDR "\n");
    print_get_inst_for_var(a1);
    write_and_count_inst(opInstStr + " " DUMMY_FLASH_ADDR "\n");
  } else {
    print_get_inst_for_var(a1);
    write_and_count_inst(opInstStr + " :addr(" + a2->get_id() + ")\n");
  }
}

void instruction::print_operation_and_store(string opInstStr)
{
  print_operation(opInstStr);
  print_save_accu();
}

void instruction::print_push_accu()
{
  write_and_count_inst("PSH 00000\n");
  write_and_count_inst("SAD " ESP_ADDR "\n");
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
  if (a1->p->type == INTEGER) {
    print_operation_and_store("ADD");
  } else {
    print_operation_and_store("FAD");
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
  if (a1->p->type == INTEGER) {
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
  if (a1->p->type == INTEGER) {
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
  write_and_count_inst("STA " LCD_ADDR "\n");

  return instBuffer;
}

write_to_shared::write_to_shared()
{
  type = ECRITURE_MEMOIRE;
}

string write_to_shared::print_instruction()
{
  print_get_inst_for_var(a1);
  write_and_count_inst("ADD :addr(" + get_const_var_value(SHARED_MEM_ADDR) + ")\n");
  if (a2->p->isLocal) {
    print_get_local_var(a2);
    write_and_count_inst("STA " DUMMY_FLASH_ADDR "\n");
    write_and_count_inst("SAD " DUMMY_FLASH_ADDR "\n");
  } else {
    write_and_count_inst("SAD :addr(" + a2->get_id() + ")\n");
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
  write_and_count_inst("ADD :addr(" + get_const_var_value(SIN_TABLE_ADDR) + ")\n");
  write_and_count_inst("STA " DUMMY_FLASH_ADDR "\n");
  write_and_count_inst("GAD " DUMMY_FLASH_ADDR "\n");
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
  write_and_count_inst("ADD :addr(" + get_const_var_value(COS_TABLE_ADDR) + ")\n");
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
  if (a2->p->isLocal) {
    print_get_local_var(a2);
    write_and_count_inst("STA " DUMMY_FLASH_ADDR "\n");
    print_get_inst_for_var(a1);
    write_and_count_inst("SAD " DUMMY_FLASH_ADDR "\n");
  } else {
    print_get_inst_for_var(a1);
    write_and_count_inst("SAD :addr(" + a2->get_id() + ")\n");
  }
  
  return instBuffer;
}

read_at::read_at()
{
  type = READ_AT;
}

string read_at::print_instruction()
{
  if (a1->p->isLocal) {
    print_get_local_var(a1);
    write_and_count_inst("STA " DUMMY_FLASH_ADDR "\n");
    write_and_count_inst("GAD " DUMMY_FLASH_ADDR "\n");
  } else {
    write_and_count_inst("GAD :addr(" + a1->get_id() + ")\n");
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
  if (a1->p->isLocal) {
    print_get_inst_for_var(a1);
    write_and_count_inst("STA " DUMMY_FLASH_ADDR "\n");
    write_and_count_inst("FTI " DUMMY_FLASH_ADDR "\n");
  } else {
    write_and_count_inst("FTI :addr(" + a1->get_id() + ")\n");
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
  if (a1->p->isLocal) {
    print_get_inst_for_var(a1);
    write_and_count_inst("STA " DUMMY_FLASH_ADDR "\n");
    write_and_count_inst("ITF " DUMMY_FLASH_ADDR "\n");
  } else {
    write_and_count_inst("ITF :addr(" + a1->get_id() + ")\n");
  }
  print_save_accu();

  return instBuffer;
}

// ===========================
//    FUNCTION BEGIN/END
// ===========================

func_begin::func_begin()
{
  type = FUNC_BEGIN;
}

string func_begin::print_instruction()
{
  int index;

  // PUSH EBP
  write_and_count_inst("GET " EBP_ADDR "\n");
  print_push_accu();

  // Set the new value of EBP (Base Pointer)
  write_and_count_inst("GET " ESP_ADDR "\n");
  write_and_count_inst("STA " EBP_ADDR "\n");

  // Allocate space for local variables
  for (var * variable : func->variableTable) {
    for(index = 0; index < variable->arraySize; index++) {
      print_get_inst_for_var(variable->get_var_cell(index));
      print_push_accu();
    }
  }

  return instBuffer;
}

func_end::func_end()
{
  type = FUNC_END;
}

string func_end::print_instruction()
{
  // Restore the old value of ESP
  write_and_count_inst("GET " EBP_ADDR "\n");
  write_and_count_inst("STA " ESP_ADDR "\n");

  // Restore the old value of EBP
  write_and_count_inst("GAD " ESP_ADDR "\n");
  write_and_count_inst("STA " EBP_ADDR "\n");

  // POP the old EBP from call stack
  write_and_count_inst("POP 00000\n");

  // Are we interrested in the returned value ?
  if (func->returnVar != NULL) {
    // Save return value in ACCU
    print_get_inst_for_var(func->returnVar);
  }

  // Return to calling function (Equi. POP EIP)
  // Get the current position of the EIP
  write_and_count_inst("GET " EIP_ADDR "\n");
  // Compute the address where we want to save the instruction
  write_and_count_inst("ADD :addr(" + get_const_var_value(6) + ")\n");
  // Save it in dummy
  write_and_count_inst("STA " DUMMY_FLASH_ADDR "\n");

  // Dynamicaly create the JMP Instruction
  // Get the old EIP where we want to jump and pop it
  write_and_count_inst("GAD " ESP_ADDR "\n");
  write_and_count_inst("POP 00000\n");
  // Add the OP code of the JMP
  write_and_count_inst("ADD :addr(" + get_const_var_value(OP_JMP << 20) + ")\n");

  // Set this at the address located in DUMMY
  write_and_count_inst("SAD " DUMMY_FLASH_ADDR "\n");

  // This instruction will be erased by the execution of above code
  write_and_count_inst("JMP 00000\n");

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
int functionCall::link_argument(varCell *vc)
{
  if (func == NULL) { return -1; }

  if (func->is_argument_valid(params.size(), vc) == false) {
    return -1; // A log is already displayed inside
  }

  // Mark variable as readed
  vc->p->isUsedAsRead = true;

  // Variable is valid, add it to the sorted list
  params.push_back(vc);

  return 0;
}

/**
 * @brief Link the returned value to the function with a validity check
 * 
 * @param v 
 * @return int -1: Error, 0: OK
 */
int functionCall::link_returned_var(varCell *vc)
{
  if (func == NULL) { return -1; }

  // V can be NULL to indicate void
  if (func->is_returned_var_valid(vc) == false) {
    return -1; // A log is already displayed inside
  }

  // Variable is valid, add it to the sorted list
  set_return_var(vc);

  return 0;
}

string functionCall::print_instruction()
{
  int index; 

  // PUSH Parameters
  for (index = params.size() - 1; index >= 0; index--) {
    print_get_inst_for_var(params.at(index));
    print_push_accu();
  }

  /** CALL (Equi. to push eip + jump addr) */
  // PUSH EIP
  write_and_count_inst("GET " EIP_ADDR "\n");
  // Add 3 to EIP value to skip the 2 instructions inside print_push_accu() and this ADD
  write_and_count_inst("ADD :addr(" + get_const_var_value(4) + ")\n");
  print_push_accu();

  // JUMP to the address where the function start
  write_and_count_inst("JMP :call(" + func->name + ")\n");

  // At the end of the function, we come back here

  // POP all parameters
  for (index = params.size() - 1; index >= 0; index--) {
    write_and_count_inst("POP 00000\n");
  }
  
  // Save return value from ACCU to returned variable if needed
  if (retVar != NULL) {
    print_save_accu();
  }

  return instBuffer;
}

// ===========================
//          DEBUG
// ===========================

ins_dbg::ins_dbg()
{
  type = DBG;
}

string ins_dbg::print_instruction()
{
  // Needed to init ESP
  write_and_count_inst("GET :addr(" + get_const_var_value(0x23FF) + ")\n");
  write_and_count_inst("STA " ESP_ADDR "\n");
  write_and_count_inst("STA " EBP_ADDR "\n");

  return instBuffer;

  // a2
  // a1
  // __
  // PUSH PARAMS
  print_get_inst_for_var(a1);
  print_push_accu(); // ESP = 23FE
  print_get_inst_for_var(a2);
  print_push_accu(); // ESP = 23FD

  // PUSH EIP
  write_and_count_inst("GET " EIP_ADDR "\n");
  // Add 3 to EIP value to skip the 2 instructions inside print_push_accu() and this ADD
  write_and_count_inst("ADD :addr(" + get_const_var_value(3) + ")\n");
  print_push_accu(); // ESP = 23FC

  /** INSIDE FUNCTION */
  // PUSH old EBP
  write_and_count_inst("GET " EBP_ADDR "\n");
  print_push_accu(); // ESP = 23FB

  // Set the new value of EBP (Base Pointer)
  write_and_count_inst("GET " ESP_ADDR "\n");
  write_and_count_inst("STA " EBP_ADDR "\n");

  // Allocate space for local variable
  write_and_count_inst("GET :addr(" + get_const_var_value(3) + ")\n");
  print_push_accu(); // ESP = 23FA
  write_and_count_inst("GET :addr(" + get_const_var_value(4) + ")\n");
  print_push_accu(); // ESP = 23F9

  // Get a param from base
  write_and_count_inst("CSA :addr(" + get_const_var_value(-2) + ")\n");
  write_and_count_inst("GAD " DYN_ADDI_ADDR "\n");

  write_and_count_inst("ADD :addr(" + get_const_var_value(4) + ")\n");

  write_and_count_inst("CSA :addr(" + get_const_var_value(-2) + ")\n");
  write_and_count_inst("SAD " DYN_ADDI_ADDR "\n");

  write_and_count_inst("CSA :addr(" + get_const_var_value(-2) + ")\n");
  write_and_count_inst("GAD " DYN_ADDI_ADDR "\n");

  // Restore the old value of ESP
  write_and_count_inst("GET " EBP_ADDR "\n");
  write_and_count_inst("STA " ESP_ADDR "\n"); // ESP = 23FB

  // Restore the old value of EBP
  write_and_count_inst("GAD " ESP_ADDR "\n");
  write_and_count_inst("STA " EBP_ADDR "\n");

  // POP the old EBP from call stack
  write_and_count_inst("POP 00000\n"); // ESP = 23FC

  // Return to calling function (Equi. POP EIP)
  write_and_count_inst("GAD " ESP_ADDR "\n");
  write_and_count_inst("STA " DUMMY_FLASH_ADDR "\n");
  write_and_count_inst("POP 00000\n"); // ESP = 23FD
  //write_and_count_inst("JUMP " DUMMY_FLASH_ADDR "\n");

  /** OUTSIDE FUNCTION */

  // POP ARGS
  write_and_count_inst("POP 00000\n"); // ESP = 23FE
  write_and_count_inst("POP 00000\n"); // ESP = 23FF

  // SHOW
  write_and_count_inst("GET " EBP_ADDR "\n");
  print_save_accu();

  return instBuffer;
}