/******************************************************************************
 *  Authors : David DEVANT
 *  Date    : 04/05/2019
 *  OS      : Linux / MacOS
 *    This class manages the variable system 
 ******************************************************************************/

#ifndef VARIABLE_HPP
#define VARIABLE_HPP

#include <string>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <cstdint>

// Pre-declaration is needed
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
  int16_t contextOffset;    // Offset of the variable inside the context where it is declared
  uint32_t address;         // Address of the variable in the RAM
  uint16_t arraySize;       // Indicates the number of varCell in the variable
  varCell * varCellArray;   // Pointer to the variable cell array of the variable

  var * referencedVar;      // Pointer on the referenced variable (To get its address as a init value)

private: 
  string id;                // Unique identifier of the variable 
};

#endif /* VARIABLE_HPP */

