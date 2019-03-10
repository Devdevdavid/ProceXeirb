#ifndef VARIABLE
#define VARIABLE

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
  std::string name;
  std::string id;
  varType type;
  bool is_standard;
  bool isUsedAsWrite;
  bool isUsedAsRead;
  int32_t value;
  uint32_t address;
};

#endif

