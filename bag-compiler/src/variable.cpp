/******************************************************************************
 *  Authors : David DEVANT
 *  Date    : 04/05/2019
 *  OS      : Linux / MacOS
 *    This class manages the variable system 
 ******************************************************************************/

#include "variable.hpp"

var::var()
{
  name = "noName";
  type = UNDEFINED;
  isUsedAsWrite = false;
  isUsedAsRead = false;
  isLocal = false;
  value = 0;
  contextOffset = 0;
  address = 0;
  arraySize = 0;
  varCellArray = NULL;
  referencedVar = NULL;
  id = "Undefined";
}
var::~var() {}

/**
 * @brief Create count variable Cell in the variable
 * 
 * @param count: number of variable cell to create
 */
void var::create_var_cell(uint16_t count)
{
  int index;

  this->varCellArray = new varCell[count];
  for(index = 0; index < count; index++) {
    this->varCellArray[index].offset = index; 
    this->varCellArray[index].p = this; 
  }
  this->arraySize = count;
}

/**
 * @brief Get a specified variable cell
 * 
 * @param index 
 * @return varCell* 
 */
varCell * var::get_var_cell(uint16_t index)
{
  return &this->varCellArray[index];
}

/**
 * @brief Tell if the variable has more 
 * than one variable cell
 * 
 * @return true 
 * @return false 
 */
bool var::is_array(void)
{
  return (this->arraySize > 1);
}

/**
 * @brief Tell if the variable is used as read and write
 * 
 * @return true 
 * @return false 
 */
bool var::is_unused(void)
{
  return (isUsedAsWrite == false) || (isUsedAsRead == false);
}

/**
 * @brief Set the address of the first variable cell
 * Next cells will follow this address
 * 
 * @param address 
 */
void var::set_base_address(uint32_t address)
{
  this->address = address;
}

/**
 * @brief Set the unique id of a variable
 * 
 * @param contextName: name of the context 
 * where the variable is declared
 */
void var::set_id(string contextName)
{
  this->id = contextName + "::" + this->name;
}

/**
 * @brief Get the unique id of the variable
 * 
 * @return string 
 */
string var::get_id(void)
{
  return this->id;
}