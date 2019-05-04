/******************************************************************************
 *  Authors : David DEVANT
 *  Date    : 04/05/2019
 *  OS      : Linux / MacOS
 *    This class manages the variable cell system 
 ******************************************************************************/

#include "variableCell.hpp"

varCell::varCell()
{
  p = NULL;
  offset = 0;
}
varCell::~varCell() {}

/**
 * @brief Get the RAM address of this cell
 * 
 * @return uint32_t 
 */
uint32_t varCell::get_address(void)
{
  return this->p->address + offset;
}

/**
 * @brief Get the id of the var cell
 * 
 * @return string 
 */
string varCell::get_id(void)
{
  if (this->p->is_array()) {
    return this->p->get_id() + "[" + to_string(this->offset) + "]";
  } else {
    return this->p->get_id();
  }
}