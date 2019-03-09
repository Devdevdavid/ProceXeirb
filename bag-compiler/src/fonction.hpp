#ifndef FONCTION_HPP
#define FONCTION_HPP

#include <string>
#include <cstdio>
#include <cstdlib>
#include <cstdint>
#include <vector>

#include <bag_devlib.h>

#include "variable.hpp"
#include "instruction.hpp"
#include "global.hpp"

using namespace std;

class fonction
{
  public:
    fonction();
    ~fonction();

    bool isBeingEdited;     // Tell to the compiler if the function is being edited

    string name;

    vector<var> variableTable;
    vector<instruction *> instruTable;

    var returnVar;

  public:
    void add_argument(var *v);
    void set_return_var(var *v);

    void set_address(uint32_t address);
};

#endif /* FONCTION_HPP */