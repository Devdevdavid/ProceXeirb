/******************************************************************************
 *  Authors : David DEVANT
 *  Date    : 04/05/2019
 *  OS      : Linux / MacOS
 *    This class manages the context system of functions 
 ******************************************************************************/

#include "fonction.hpp"

fonction::fonction() 
{
    isBeingEdited = false;
    isCalledAtLeastOnce = false;
    name = "";
    variableTable.clear();
    instruTable.clear();
    loopId = 0;
    loopStack.empty();
    condId = 0;
    condStack.empty();
    varCount = 0;
    args.clear();
    returnVar = NULL;
    startRamAddress = 0;
}

fonction::~fonction() 
{}

/**
 * @brief Declare a new arguments to the function
 * The value of v is not used
 * 
 * @param v : the variable to use as argument to the function
 * @return 0: Ok, -1: Error
 */
int fonction::add_argument(var *v)
{
    if (v == NULL) { return -1; }
    
    args.push_back(*v);

    return 0;
}

/**
 * @brief Declare the returned variable cell
 * Note: You can't return a variable (with more than one cell)
 * 
 * @param vc : NULL = no returned value
 */
void fonction::set_return_var(varCell *vc) 
{
    // Flag the used as read
    if (vc != NULL) { 
        vc->p->isUsedAsRead = true;
    }

    // Link the object (Can be NULL)
    returnVar = vc;
}

/**
 * @brief Check if the specified variable is 
 * valid as an input argument for the function
 * @note Log error inside
 * 
 * @param paramIndex: the index of the argument 
 * @param vc: The var cell to use as argument to a function
 * @return true: valid, false: not valid
 */
bool fonction::is_argument_valid(uint16_t paramIndex, varCell *vc) 
{
    if (paramIndex >= args.size()) {
        _LOG_ERROR("Too much arguments");
        return false;
    }

    if (args.at(paramIndex).type != vc->p->type) {
        _LOG_ERROR("Wrong type for argument %d", paramIndex + 1);
        return false;
    }

    return true;
}

/**
 * @brief Check if the specified variable is valid for
 * the returned value of the function
 * @param v : NULL indicate void
 * @return boolean 
 */
bool fonction::is_returned_var_valid(varCell * vc)
{
    if (returnVar == NULL) {
        if (vc == NULL) {
            // Function is void and nothing as return value
            return true;
        } else {
            _LOG_ERROR("Returned value of function \"%s\" is void", this->name.c_str());
            return false;
        }
    } else {
        if (vc == NULL) {
            // Function return something but we don't care
            return true;
        }
    }
    
    // We care about the returned value, check the type
    if (returnVar->p->type != vc->p->type) {
        _LOG_ERROR("Wrong type for returned value");
        return false;
    }

    return true;
}

/**
 * @brief Tell if the function is not used in the program
 * 
 * @return bool 
 */
bool fonction::is_unused()
{
    return (isCalledAtLeastOnce == false);
}

/**
 * @brief Find a local variable in the context by looking 
 * with its name
 * @param varName 
 * @return var* : NULL if not found
 */
var * fonction::get_var(string varName)
{
    uint32_t index;
    for (index = 0; index < variableTable.size(); ++index) {
        if (variableTable.at(index)->name == varName) {
            return variableTable.at(index); // Return the existing variable
        }
    }
    return NULL;
}

/**
 * @brief Add a new local variable to the function context
 * @param v 
 */
void fonction::add_var(var *v)
{
    v->set_id(this->name);
    // -1: the offset is negative because callstack begin 
    // at high addresses and go to low addresses
    // 1: Skip the oldEBP in the callstack to get the first variable
    v->contextOffset = (-1) * ( 1 + varCount++);
    variableTable.push_back(v);
}

/**
 * @brief Add a new instruction to the function context
 * @param i : pointer on instruction to add
 */
void fonction::add_instru(instruction *i)
{
    instruTable.push_back(i);
}

/* ======================
 *    LOOP MANAGEMENT
 * ====================== 
 */

/**
 * @brief Usefull tool to build loop and condition identifiers
 * 
 * @param num : unique id in the context
 * @return string : association of the function name and num
 */
string fonction::build_cond_loop_id(uint16_t num)
{
    return this->name + "#" + to_string(num);
}

/**
 * @brief Build a new loop id in the 
 * context and return its id
 * 
 * @return string: id of the new loop
 */
string fonction::get_next_loop_id(void)
{
    loopStack.push(++this->loopId);
    return build_cond_loop_id(loopStack.top());
}

/**
 * @brief Forget the last loop id built after
 * returning it
 * @note Displays a log error in case of empty loop id stack
 * 
 * @return string 
 */
string fonction::consume_loop_id(void)
{
    if (loopStack.size() > 0) {
        string id = build_cond_loop_id(loopStack.top());
        loopStack.pop();
        return id;
    } else {
        _LOG_ERROR("No loop to close here");
        return "";
    }
}

/**
 * @brief Get the address of a declared loop thanks to its id
 * 
 * @param loopId
 * @return Address of a previously declared loop beginning
 */
uint32_t fonction::get_loop_back_address(string loopId)
{
    int index;
    // Begin by the end to get speed
    for (index = instruTable.size() - 1; index >= 0; index--) {
        if (instruTable.at(index)->type == TANT_QUE) {
            if (instruTable.at(index)->id == loopId) {
                return instruTable.at(index)->address;
            }
        }
    }
    _LOG_ERROR("Internal Error : get_loop_back_address()");
    return 0;
}

/**
 * @brief Build a new condition id in the 
 * context and return its id
 * 
 * @return string: id of the new condition
 */
string fonction::get_next_cond_id(void)
{
    condStack.push(++this->condId);
    return build_cond_loop_id(condStack.top());
}

/**
 * @brief Give the id of the last created
 * condition
 * 
 * @return the condition id
 */
string fonction::get_cur_cond_id(void)
{
    return build_cond_loop_id(condStack.top());
}

/**
 * @brief Forget the last condition id built after
 * returning it
 * @note Displays a log error in case of empty condition id stack
 * 
 * @return string 
 */
string fonction::consume_cond_id(void)
{
    if (condStack.size() > 0) {
        string id = build_cond_loop_id(condStack.top());
        condStack.pop();
        return id;
    } else {
        _LOG_ERROR("No condition to close here");
        return "";
    }
}

/**
 * @brief Check for unclosed loop or condition
 * @note log error inside
 */
void fonction::check_loops_and_cond(void)
{
    if (condStack.size() > 0) {
        _LOG_ERROR("All conditions are not closed");
    }

    if (loopStack.size() > 0) {
        _LOG_ERROR("All loops are not closed");
    }
}