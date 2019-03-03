#include "instruction.hpp"

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
  this->a1 = *v;
}

void instruction::set_argument2(var * v)
{
  if (v == NULL) {
    return;
  }
  this->a2 = *v;
}

void instruction::set_return_var(var * v)
{
  if (v == NULL) {
    return;
  }
  this->var_ = *v;
}

void instruction::set_address(uint32_t address)
{
  this->address = address;
}

addition::addition()
{
  nb_ins = 3;
  type = ADDITION;
}

string addition::print_instruction()
{
  string instructions = "";
  if (a1.type == INTEGER && a2.type == INTEGER) {
    instructions += "GET :addr(" + a1.name   + ")\n";
    instructions += "ADD :addr(" + a2.name   + ")\n";
    instructions += "STA :addr(" + var_.name + ")\n";
  } else if (a1.type == REAL && a2.type == REAL) {
    instructions += "GET :addr(" + a1.name   + ")\n";
    instructions += "FAD :addr(" + a2.name   + ")\n";
    instructions += "STA :addr(" + var_.name + ")\n";
  } else {
    _LOG_ERROR("You can only add variable with the same type: %s + %s", a1.name.c_str(), a2.name.c_str());
  }
  return instructions;
}

division::division()
{
  nb_ins = 3;
  type = DIVISION;
}

string division::print_instruction()
{
  string instructions = "";
  if (a1.type == INTEGER && a2.type == INTEGER)
{
    instructions += "GET :addr(" + a1.name   + ")\n";
    instructions += "DIV :addr(" + a2.name   + ")\n";
    instructions += "STA :addr(" + var_.name + ")\n";
  } else if (a1.type == REAL && a2.type == REAL) {
    instructions += "GET :addr(" + a1.name   + ")\n";
    instructions += "FDI :addr(" + a2.name   + ")\n";
    instructions += "STA :addr(" + var_.name + ")\n";
  } else {
    _LOG_ERROR("You can only add variable with the same type: %s + %s", a1.name.c_str(), a2.name.c_str());
  }
  return instructions;
}

affectation::affectation()
{
  nb_ins = 2;
  type = AFFECTATION;
}

string affectation::print_instruction()
{
  string instructions = "";
  instructions += "GET :addr(" + a1.name   + ")\n";
  instructions += "STA :addr(" + var_.name + ")\n";
  return instructions;
}

soustraction::soustraction()
{
  nb_ins = 3;
  type = SOUSTRACTION;
}

string soustraction::print_instruction()
{
  string instructions = "";
  if (a1.type == INTEGER && a2.type == INTEGER) {
    instructions += "GET :addr(" + a1.name   + ")\n";
    instructions += "SUB :addr(" + a2.name   + ")\n";
    instructions += "STA :addr(" + var_.name + ")\n";
  } else if (a1.type == REAL && a2.type == REAL) {
    instructions += "GET :addr(" + a1.name   + ")\n";
    instructions += "SUB :addr(" + a2.name   + ")\n";
    instructions += "STA :addr(" + var_.name + ")\n";
  } else {
    _LOG_ERROR("You can only substract variable with the same type: %s - %s", a1.name.c_str(), a2.name.c_str());
  }
  return instructions;
}

multiplication::multiplication()
{
  nb_ins = 3;
  type = MULTIPLICATION;
}

string multiplication::print_instruction()
{
  string instructions = "";
  if (a1.type == INTEGER && a2.type == INTEGER) {
    instructions += "GET :addr(" + a1.name   + ")\n";
    instructions += "MUL :addr(" + a2.name   + ")\n";
    instructions += "STA :addr(" + var_.name + ")\n";
  } else if (a1.type == REAL && a2.type == REAL) {
    instructions += "GET :addr(" + a1.name   + ")\n";
    instructions += "FMU :addr(" + a2.name   + ")\n";
    instructions += "STA :addr(" + var_.name + ")\n";
  } else {
    _LOG_ERROR("You can only multiply variable with the same type: %s * %s", a1.name.c_str(), a2.name.c_str());
  }
  return instructions;
}

condition::condition()
{
  nb_ins = 3;
  type = CONDITION;
}

void condition::set_condition_type(string type)
{
  this->condition_type = type;
}

string condition::print_instruction()
{
  string instructions = "";
  instructions += "GET :addr(" + a1.name + ")\n";
  if (condition_type == "<") {
    instructions += "TLT :addr(" + a2.name + ")\n";
  } else if (condition_type == ">") {
    instructions += "TGT :addr(" + a2.name + ")\n";
  } else if (condition_type ==  "==") {
    instructions += "TEQ :addr(" + a2.name + ")\n";
  } 
  instructions += "JCC :condition(" + to_string(num) + ")\n";
  return instructions;
}

endif::endif()
{
  nb_ins = 0;
  type = FIN_CONDITION;
}

string endif::print_instruction()
{

  return "";
}

loop::loop()
{
  nb_ins = 3;
  type = TANT_QUE;
}

void loop::set_condition_type(string type)
{
  this->condition_type = type;
}

string loop::print_instruction()
{
  string instructions = "";
  instructions += "GET :addr(" + a1.name + ")\n";
  if (condition_type == ">") {
    instructions += "TGT :addr(" + a2.name + ")\n";
  } else if (condition_type == "<") {
    instructions += "TLT :addr(" + a2.name + ")\n";
  } else if (condition_type ==  "==") {
    instructions += "TEQ :addr(" + a2.name + ")\n";
  }
  instructions += "JCC :endloop(" + to_string(num) + ")\n";
  return instructions;
}

endloop::endloop()
{
  nb_ins = 1;
  type = FIN_TANT_QUE;
}

string endloop::print_instruction()
{
//we print the JCC twice to be sure that we correctly jump
  string instructions = "";

  instructions += "JMP :loop(" + to_string(num) + ")\n";

  return instructions;
}

disp_LCD::disp_LCD()
{
  nb_ins = 2;
  type = AFFICHAGE_LCD;
}

string disp_LCD::print_instruction()
{
  string instructions = "";
  instructions += "GET :addr(" + a1.name + ")\n";
  instructions += "STA 80001\n";
  return instructions;
}

write_to_shared::write_to_shared()
{
  nb_ins = 3;
  type = ECRITURE_MEMOIRE;
}

string write_to_shared::print_instruction()
{
  string instructions = "";
  instructions += "GET :addr(" + a1.name + ")\n";
  instructions += "ADD :addr(SHARED_INDEX)\n";
  instructions += "SAD :addr(" + a2.name + ")\n";
  return instructions;
}

sine::sine()
{
  nb_ins = 5;
  type = SIN;
}

string sine::print_instruction()
{
  string instructions = "";
  instructions += "GET :addr(" + a1.name + ")\n";
  instructions += "ADD :addr(SININDEX)\n";
  instructions += "STA :addr(DUMMY)\n";
  instructions += "GAD :addr(DUMMY)\n"; //get @ address
  instructions += "STA :addr(" + var_.name + ")\n"; //store in the return var
  return instructions;
}

cos::cos()
{
  nb_ins = 6;
  type = COS;
}

string cos::print_instruction()
{
  string instructions = "";
  instructions += "GET :addr(" + a1.name + ")\n";
  instructions += "ADD :addr(90)\n";
  instructions += "ADD :addr(SININDEX)\n";
  instructions += "STA :addr(DUMMY)\n";
  instructions += "GAD :addr(DUMMY)\n"; //get @ address
  instructions += "STA :addr(" + var_.name + ")\n"; //store in the return var
  return instructions;
}

write_at::write_at()
{
  nb_ins = 2;
  type = WRITE_AT;
}

string write_at::print_instruction()
{
  string instructions = "";
  instructions += "GET :addr(" + a1.name + ")\n";
  instructions += "SAD :addr(" + a2.name + ")\n"; //set @ address
  return instructions;
}

read_at::read_at()
{
  nb_ins = 2;
  type = READ_AT;
}

string read_at::print_instruction()
{
  string instructions = "";
  instructions += "GAD :addr(" + a1.name + ")\n"; //get @ address
  instructions += "STA :addr(" + var_.name + ")\n"; //store in the return var
  return instructions;
}

ins_or::ins_or()
{
  nb_ins = 3;
  type = OR;
}

string ins_or::print_instruction()
{
  string instructions = "";
  instructions += "GET :addr(" + a1.name   + ")\n";
  instructions += "LOR :addr(" + a2.name   + ")\n";
  instructions += "STA :addr(" + var_.name + ")\n";
  return instructions;
}

ins_nor::ins_nor()
{
  nb_ins = 3;
  type = OR;
}

string ins_nor::print_instruction()
{
  string instructions = "";
  instructions += "GET :addr(" + a1.name   + ")\n";
  instructions += "NOR :addr(" + a2.name   + ")\n";
  instructions += "STA :addr(" + var_.name + ")\n";
  return instructions;
}

ins_xor::ins_xor()
{
  nb_ins = 3;
  type = OR;
}

string ins_xor::print_instruction()
{
  string instructions = "";
  instructions += "GET :addr(" + a1.name   + ")\n";
  instructions += "XOR :addr(" + a2.name   + ")\n";
  instructions += "STA :addr(" + var_.name + ")\n";
  return instructions;
}

ins_and::ins_and()
{
  nb_ins = 3;
  type = OR;
}

string ins_and::print_instruction()
{
  string instructions = "";
  instructions += "GET :addr(" + a1.name   + ")\n";
  instructions += "AND :addr(" + a2.name   + ")\n";
  instructions += "STA :addr(" + var_.name + ")\n";
  return instructions;
}


ins_fti::ins_fti()
{
  nb_ins = 2;
  type = FTI;
}

string ins_fti::print_instruction()
{
  string instructions = "";
  instructions += "FTI :addr(" + a1.name   + ")\n";
  instructions += "STA :addr(" + var_.name + ")\n";
  return instructions;
}

ins_itf::ins_itf()
{
  nb_ins = 2;
  type = ITF;
}

string ins_itf::print_instruction()
{
  string instructions = "";
  instructions += "ITF :addr(" + a1.name   + ")\n";
  instructions += "STA :addr(" + var_.name + ")\n";
  return instructions;
}


