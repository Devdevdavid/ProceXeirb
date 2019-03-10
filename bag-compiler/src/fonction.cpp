#include "fonction.hpp"

fonction::fonction() 
{
    this->loopId = 0;
    this->condId = 0;
}

fonction::~fonction() 
{

}

void fonction::add_argument(var *v) 
{

}

void fonction::set_return_var(var *v) 
{

}

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

void fonction::add_local_var(var *v) 
{
    v->id = this->name + "::" + v->name;
    variableTable.push_back(*v);
}

void fonction::add_instru(instruction *i)
{
    instruTable.push_back(i);
}

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