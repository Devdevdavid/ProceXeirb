#ifndef INSTRUCTION_HPP
#define INSTRUCTION_HPP

#include <string>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <cstdint>

#include <sys/types.h>
#include <sys/stat.h>

// Forward declaration : Compiler need this to avoid circular header depedency
class instruction;

#include "global.hpp"
#include "variable.hpp"
#include "fonction.hpp"

typedef enum {
  FUNCTION_CALL,
  ADDITION,
  SOUSTRACTION,
  MULTIPLICATION,
  DIVISION,
  AFFECTATION,
  CONDITION,
  FIN_CONDITION,
  TANT_QUE,
  FIN_TANT_QUE,
  AFFICHAGE_LCD,
  ECRITURE_MEMOIRE,
  SIN,
  COS,
  WRITE_AT,
  READ_AT,
  OR,
  NOR,
  AND,
  XOR,
  FTI,
  ITF
} INS_TYPE;

using namespace std;

// ===========================
//       INSTRUCTION
// ===========================

class instruction
{
public:
  INS_TYPE type;
  //only for conditions and loop
  string id;
  uint32_t address;

  // Contain all printed instruction of the object
  string instBuffer;
  int nbInstrucLine;

  var * a1;
  var * a2;
  var * retVar;

public :
  // Constructor 
  instruction(void);
  
  void set_argument1(var * v);
  void set_argument2(var * v);
  void set_return_var(var * v);

  void write_and_count_inst(string str);
  void print_get_local_var(var *v);
  void print_get_inst_for_var(var *v);
  void print_save_accu(void);
  void set_address (uint32_t address);
  void print_operation(string opInstStr);
  void print_operation_and_store(string opInstStr);

  virtual string print_instruction() = 0;
};

// ===========================
//        OPERATIONS
// ===========================

class addition : public instruction
{
public:
  addition();
  string print_instruction();
};

class soustraction : public instruction
{
public:
  soustraction();
  string print_instruction();
};

class multiplication : public instruction
{
public:
  multiplication();
  string print_instruction();
};

class division : public instruction
{
public:
  division();
  string print_instruction();
};

class ins_or : public instruction
{
public:
  ins_or();
  string print_instruction();
};

class ins_nor : public instruction
{
public:
  ins_nor();
  string print_instruction();
};

class ins_xor : public instruction
{
public:
  ins_xor();
  string print_instruction();
};

class ins_and : public instruction
{
public:
  ins_and();
  string print_instruction();
};

// ===========================
//        AFFECTATION
// ===========================

class affectation : public instruction
{
public:
  affectation();
  string print_instruction();
};

// ===========================
//        IF AND LOOP
// ===========================

class condition : public instruction
{
public:
  string condition_type;
  condition();
  void set_condition_type(string type);
  string print_instruction();
};

class endif : public instruction
{
public:
  endif();
  int endif_n;
  uint32_t address_close;
  string print_instruction();
};

class loop : public instruction
{
public:
  string condition_type;
  loop();
  void set_condition_type(string type);
  string print_instruction();
};

class endloop : public instruction
{
public:
  endloop();
  int endif_n;
  uint32_t address_close;
  string print_instruction();
};

// ===========================
//    STANDARD FUNCTIONS 
// ===========================

class disp_LCD : public instruction
{
public:
  disp_LCD();
  string print_instruction();
};

class write_to_shared : public instruction
{
public:
  write_to_shared();
  string print_instruction();
};

class sine : public instruction
{
public:
  sine();
  string print_instruction();
};

class cos : public instruction
{
public:
  cos();
  string print_instruction();
};

class write_at : public instruction
{
public:
  write_at();
  string print_instruction();
};

class read_at : public instruction
{
public:
  read_at();
  string print_instruction();
};

// ===========================
//      TYPE CONVERSION
// ===========================

class ins_fti : public instruction
{
public:
  ins_fti();
  string print_instruction();
};

class ins_itf : public instruction
{
public:
  ins_itf();
  string print_instruction();
};

// ===========================
//        FUNCTION CALL
// ===========================

class functionCall : public instruction
{
public:
  functionCall();

  int link_function(fonction * pFunc);
  int link_argument(var *v);
  int link_returned_var(var *v);

  void print_push(var * varToPush);

private:
  fonction * func;
  vector<var *> params; // Sorted list of function argument 

  string print_instruction();
};

#endif /* INSTRUCTION_HPP */

