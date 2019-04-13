#include "variable.hpp"

var::var()
{
  name = "noName";
  id = "Undefined";
  type = UNDEFINED;
  isUsedAsWrite = false;
  isUsedAsRead = false;
  isLocal = false;
  value = 0;
  address = 0;
  contextOffset = 0;
  referencedVar = NULL;
}
var::~var() {}

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

varCell * var::get_var_cell(uint16_t index)
{
  return &this->varCellArray[index];
}

bool var::is_array(void)
{
  return (this->arraySize > 1);
}

bool var::is_unused(void)
{
  return (isUsedAsWrite == false) || (isUsedAsRead == false);
}

void var::set_base_address(uint32_t address)
{
  this->address = address;
}

void var::set_id(string contextName)
{
  this->id = contextName + "::" + this->name;
}

string var::get_id(void)
{
  return this->id;
}