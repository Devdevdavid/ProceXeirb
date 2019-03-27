#ifndef GLOBAL_HPP
#define GLOBAL_HPP

#include <bag_devlib.h>

#define APP_VERSION     "2.0.49-devantd"

/* MACRO: Each ERROR/WARNING are counted */
#define _LOG_ERROR(format, ...)   LOG_ERROR_L(format, fileLineCounter, ##__VA_ARGS__); nbErrorDetected++;
#define _LOG_WARNING(format, ...) LOG_WARNING_L(format, fileLineCounter, ##__VA_ARGS__); nbWarningDetected++;

/* CONSTANT ADDRESSES */
// The define below are hexadecimal value on 5 digits
#define DUMMY_FLASH_ADDR        "00000"
#define SIN_TABLE_ADDR          "03000"
#define SHARED_MEM_ADDR         "02000"
#define STACK_POINTER_ADDR      "02000" // To update
#define DYN_ADDI_ADDR           "02000" // To update

// Global variable 
#ifdef MAIN_CPP
uint16_t nbErrorDetected = 0;               // Number of error detected during compilation
uint16_t nbWarningDetected = 0;             // Number of warning detected during compilation
#else
extern uint16_t nbErrorDetected;               
extern uint16_t nbWarningDetected;             
#endif 


#endif /* GLOBAL_HPP */

