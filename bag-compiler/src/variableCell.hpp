#ifndef VARIABLE_CELL_HPP
#define VARIABLE_CELL_HPP

#include <string>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <cstdint>

class varCell;

#include "variable.hpp"

using namespace std;

class varCell
{
public:
  varCell();
  ~varCell();

  uint32_t get_address(void);
  string get_id(void);

public: 
    var * p;
    uint16_t offset;
};

#endif /* VARIABLE_CELL_HPP */

