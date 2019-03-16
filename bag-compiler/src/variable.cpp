#include "variable.hpp"

  var::var() {
    id = "Undefined";
    isUsedAsWrite = false;
    isUsedAsRead = false;
    contextOffset = 0;
  }
  var::~var() {}

  bool var::isUnused(void) 
  {
    return (isUsedAsWrite == false) || (isUsedAsRead == false);
  }