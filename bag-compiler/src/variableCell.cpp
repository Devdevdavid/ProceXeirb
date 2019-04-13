#include "variableCell.hpp"

varCell::varCell()
{
  p = NULL;
  offset = 0;
}
varCell::~varCell() {}

uint32_t varCell::get_address(void)
{
  return this->p->address + offset;
}

string varCell::get_id(void)
{
  if (this->p->arraySize == 1) {
    return this->p->get_id();
  } else {
    return this->p->get_id() + "[" + to_string(this->offset) + "]";
  }
}