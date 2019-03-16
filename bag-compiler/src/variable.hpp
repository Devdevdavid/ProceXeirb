#ifndef VARIABLE_HPP
#define VARIABLE_HPP

#include <string>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <cstdint>

#include <string.h>

typedef enum {
  INTEGER,
  REAL
} varType;

class var
{
public:
  var();
  ~var();
  bool isUnused(void);

public: 
  std::string name;         // Name of the variable
  std::string id;           // Identifier of the variable of type <ContextName>::<varName>
  varType type;             // Type of the variable : REAL or INTEGER
  bool isUsedAsWrite;       // Flag to tell if the variable is write at least one time
  bool isUsedAsRead;        // Flag to tell if the variable is read at least one time
  bool isLocal;             // Flag to tell if the variable is either local or global
  int32_t value;            // Initial value of the variable (REAL and INTEGER) 
  uint32_t address;         // Address of the variable in the RAM
  uint16_t contextOffset;   // Offset of the variable inside the context where it is declared
};

#endif /* VARIABLE_HPP */

