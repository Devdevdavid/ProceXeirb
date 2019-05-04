/******************************************************************************
 *  Authors : David DEVANT
 *  Date    : 04/05/2019
 *  OS      : Linux / MacOS
 *    This class manages the variable cell system 
 ******************************************************************************/

#ifndef VARIABLE_CELL_HPP
#define VARIABLE_CELL_HPP

#include <string>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <cstdint>

// Pre-Declaration is needed
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
    var * p;            // Pointer to the parent variable that containts this varCell
    uint16_t offset;    // Offset of the varCell in the varCell array of the parent
};

#endif /* VARIABLE_CELL_HPP */

