#ifndef FONCTION_HPP
#define FONCTION_HPP

#include <string>
#include <cstdio>
#include <cstdlib>
#include <cstdint>
#include <vector>
#include <stack>

// Forward declaration : Compiler need this to avoid circular header depedency
class fonction;

#include "global.hpp"
#include "variable.hpp"
#include "instruction.hpp"

using namespace std;

class fonction
{
  public:
    fonction();
    ~fonction();

    bool isBeingEdited;     // Tell to the compiler if the function is being edited
    bool isCalledAtLeastOnce; // Tell if the fonction is called at least one time

    string name;            // name of the function

    vector<var *> variableTable;
    vector<instruction *> instruTable;

    // Loop and condition management
    uint16_t loopId;
    stack<uint16_t> loopStack;
    uint16_t condId;
    stack<uint16_t> condStack;
    
    uint16_t varCount;      // Number of declared variable in the function

    // Not (var *) : These are not real variable, just used for type compliance
    vector<var> params;

    // If NULL, this mean no returned variable
    var * returnVar;

    int startRamAddress; // Indicates where the function is located in the RAM

  public:
    int add_argument(var *v);
    int set_return_var(var *v);
    bool is_argument_valid(uint16_t paramIndex, var *v);
    bool is_returned_var_valid(var *v);
    bool is_unused();

    var * get_var(string varName);
    void add_var(var *v);
    void add_instru(instruction *i);

    // Loops and conditions management
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