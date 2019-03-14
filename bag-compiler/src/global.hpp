#ifndef GLOBAL_HPP
#define GLOBAL_HPP

#include <bag_devlib.h>

/* MACRO */
#define _LOG_ERROR(format, ...)   LOG_ERROR(format, ##__VA_ARGS__); nbErrorDetected++;
#define _LOG_WARNING(format, ...) LOG_WARNING(format, ##__VA_ARGS__); nbWarningDetected++;

// Global variable 
#ifdef MAIN_CPP
uint16_t nbErrorDetected = 0;               // Number of error detected during compilation
uint16_t nbWarningDetected = 0;             // Number of warning detected during compilation
#else
extern uint16_t nbErrorDetected;               
extern uint16_t nbWarningDetected;             
#endif 


#endif /* GLOBAL_HPP */

