#include "fonction.hpp"

fonction::fonction() 
{
    isBeingEdited = false;
    name = "";
    variableTable.clear();
    instruTable.clear();
    loopId = 0;
    condId = 0;
    varCount = 0;
    params.clear();
    returnVar = NULL;
    startRamAddress = 0;
}

fonction::~fonction() 
{

}

/**
 * @brief Declare a new argument to the function
 * The value of v is not used
 * 
 * @param v 
 * @return int 0
 */
int fonction::add_argument(var *v)
{
    if (v == NULL) { return -1; }

    // Arguments comes with value already written
    v->isUsedAsWrite = true;
    
    params.push_back(*v);

    return 0;
}

/**
 * @brief Declare the returned variable
 * 
 * @param v : NULL = no returned value
 * @return int 0
 */
int fonction::set_return_var(varCell *vc) 
{
    // Flag the used as read
    if (vc != NULL) { 
        vc->p->isUsedAsRead = true;
    }

    // Link the object
    returnVar = vc;

    return 0;
}

/**
 * @brief Check if the specified variable is 
 * valid as an input argument for the function
 * 
 * @param paramIndex the index of the argument 
 * @param v 
 * @return boolean 
 */
bool fonction::is_argument_valid(uint16_t paramIndex, varCell *vc) 
{
    if (paramIndex >= params.size()) {
        _LOG_ERROR("Too much arguments");
        return false;
    }

    if (params.at(paramIndex).type != vc->p->type) {
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
    
    // We care about the returned value, check type
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
 * @brief Find a variable in the context by looking 
 * by its name
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
    v->contextOffset = (-1) * ( 1 + varCount++); // The offset starts at -1
    variableTable.push_back(v);
}

/**
 * @brief Add a new instruction to the function context
 * @param i 
 */
void fonction::add_instru(instruction *i)
{
    instruTable.push_back(i);
}

/* ======================
 *    LOOP MANAGEMENT
 * ====================== 
 */

string fonction::build_cond_loop_id(uint16_t num)
{
    return this->name + "#" + to_string(num);
}

string fonction::get_next_loop_id(void)
{
    loopStack.push(++this->loopId);
    return build_cond_loop_id(loopStack.top());
}

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

uint32_t fonction::get_loop_back_address(string loopIdToClose)
{
    // begin by the end to get speed
    for (int index = instruTable.size() - 1; index >= 0; index--) {
        if (instruTable.at(index)->type == TANT_QUE) {
            if (instruTable.at(index)->id == loopIdToClose) {
                return instruTable.at(index)->address;
            }
        }
    }
    _LOG_ERROR("Internal Error : get_loop_back_address()");
    return 0;
}

string fonction::get_next_cond_id(void)
{
    condStack.push(++this->condId);
    return build_cond_loop_id(condStack.top());
}

string fonction::get_cur_cond_id(void)
{
    return build_cond_loop_id(condStack.top());
}

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

void fonction::check_loops_and_cond(void)
{
    if (condStack.size() > 0) {
        _LOG_ERROR("All conditions are not closed");
    }

    if (loopStack.size() > 0) {
        _LOG_ERROR("All loops are not closed");
    }
}