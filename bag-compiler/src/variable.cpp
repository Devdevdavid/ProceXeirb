#include "variable.hpp"

  var::var() {
    name = "noName";
    id = "Undefined";
    type = UNDEFINED;
    isUsedAsWrite = false;
    isUsedAsRead = false;
    isLocal = false;
    value = 0;
    address = 0;
    contextOffset = 0;
  }
  var::~var() {}

  bool var::isUnused(void) 
  {
    return (isUsedAsWrite == false) || (isUsedAsRead == false);
  }