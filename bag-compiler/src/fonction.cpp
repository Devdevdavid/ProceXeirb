#include "fonction.hpp"

fonction::fonction() 
{
    this->loopId = 0;
    this->condId = 0;
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
int fonction::set_return_var(var *v) 
{
    // Copy the object
    returnVar = v;

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
bool fonction::is_argument_valid(uint16_t paramIndex, var *v) 
{
    if (paramIndex >= params.size()) {
        _LOG_ERROR("Too much arguments");
        return false;
    }

    if (params.at(paramIndex).type != v->type) {
        _LOG_ERROR("Wrong type for argument %d", paramIndex + 1);
        return false;
    }

    return true;
}

/**
 * @brief Check if the specified variable is valid for
 * the returned value of the function
 * @param v 
 * @return boolean 
 */
bool fonction::is_returned_var_valid(var *v) 
{
    if (returnVar->type != v->type) {
        _LOG_ERROR("Wrong type for returned value");
        return false;
    }

    return true;
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
        if (variableTable.at(index).name == varName) {
            return &variableTable.at(index); // Return the existing variable
        }
    }
    return NULL;
}

/**
 * @brief Add a new local variable to the function context
 * @param v 
 */
void fonction::add_local_var(var *v) 
{
    if (v->is_standard) {
        v->id = v->name;
    } else {
        v->id = this->name + "::" + v->name;
    }
    variableTable.push_back(*v);
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
    return this->name + "::" + to_string(num);
}

string fonction::get_next_loop_id(void)
{
    ++this->loopId;
    return build_cond_loop_id(this->loopId);
}

string fonction::consume_loop_id(void)
{
    if (this->loopId > 0) {
        return build_cond_loop_id(this->loopId--);
    } else {
        _LOG_ERROR("No loop to close here");
        return "";
    }
}

uint32_t fonction::get_loop_back_address(string loopIdToClose)
{
    // begin by the end to get speed
    for (int index = instruTable.size() - 1; index > 0; index--) {
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
    ++this->condId;
    return build_cond_loop_id(this->condId);
}

string fonction::consume_cond_id(void)
{
    if (this->condId > 0) {
        return build_cond_loop_id(this->condId--);
    } else {
        _LOG_ERROR("No condition to close here");
        return "";
    }
}

void fonction::check_loops_and_cond(void)
{
    if (this->condId > 0) {
        _LOG_ERROR("All conditions are not closed");
    }

    if (this->loopId > 0) {
        _LOG_ERROR("All loops are not closed");
    }
}