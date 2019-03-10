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

    uint16_t loopId;
    uint16_t condId;

    var returnVar;

  public:
    void add_argument(var *v);
    void set_return_var(var *v);

    var * get_var(string varName);
    void add_local_var(var *v);

    void add_instru(instruction *i);

    // Loops and conditions
    string get_next_loop_id(void);
    string consume_loop_id(void);
    uint32_t get_loop_back_address(string loopIdToClose);
    string get_next_cond_id(void);
    string consume_cond_id(void);
    void check_loops_and_cond(void);

  private: 
    string build_cond_loop_id(uint16_t num);
};

#endif /* FONCTION_HPP */