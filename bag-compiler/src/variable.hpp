#ifndef VARIABLE_HPP
#define VARIABLE_HPP

#include <string>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <cstdint>

class var;

#include "variableCell.hpp"

using namespace std;

typedef enum {
  UNDEFINED,
  INTEGER,
  REAL
} varType;

class var
{
public:
  var();
  ~var();
  void create_var_cell(uint16_t count);
  varCell * get_var_cell(uint16_t index);
  bool is_unused(void);
  bool is_array(void);
  void set_base_address(uint32_t address);
  void set_id(string contextName);
  string get_id(void);

public: 
  string name;              // Name of the variable
  varType type;             // Type of the variable : REAL or INTEGER
  bool isUsedAsWrite;       // Flag to tell if the variable is write at least one time
  bool isUsedAsRead;        // Flag to tell if the variable is read at least one time
  bool isLocal;             // Flag to tell if the variable is either local or global
  int32_t value;            // Initial value of the variable (REAL and INTEGER) 
  uint16_t contextOffset;   // Offset of the variable inside the context where it is declared
  uint32_t address;         // Address of the variable in the RAM
  uint16_t arraySize;
  varCell * varCellArray;  

private: 
  string id;                // Identifier of the variable of type <ContextName>::<varName>
};

#endif /* VARIABLE_HPP */

