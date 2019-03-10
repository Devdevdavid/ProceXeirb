#include "variable.hpp"

  var::var() {
    id = "Undefined";
    isUsedAsWrite = false;
    isUsedAsRead = false;
  }
  var::~var() {}

  bool var::isUnused(void) 
  {
    return (!is_standard) && ((isUsedAsWrite == false) || (isUsedAsRead == false));
  }