#ifndef GLOBAL_HPP
#define GLOBAL_HPP

#include <bag_devlib.h>

#define APP_VERSION     "2.1.117-devantd"

/* MACRO: Each ERROR/WARNING are counted */
#define _LOG_ERROR(format, ...)   LOG_ERROR_L(format, fileLineCounter, ##__VA_ARGS__); nbErrorDetected++;
#define _LOG_WARNING(format, ...) LOG_WARNING_L(format, fileLineCounter, ##__VA_ARGS__); nbWarningDetected++;

/* CONSTANT ADDRESSES */
// The define below are hexadecimal value on 5 digits
#define SIN_TABLE_ADDR          0x03000
#define COS_TABLE_ADDR          (SIN_TABLE_ADDR + 90)
#define SHARED_MEM_ADDR         0x02000
#ifndef DEBUG
#define DUMMY_FLASH_ADDR        "00000" // To Update
#define STACK_POINTER_ADDR      "02000" // To update
#define DYN_OFFSET_ADDR         "02000" // To update
#define DYN_ADDI_ADDR           "02000" // To update
#define EIP_ADDR                "02000" // To update
#define EBP_ADDR                "02000" // To update
#define ESP_ADDR                STACK_POINTER_ADDR
#else
#define DUMMY_FLASH_ADDR        "DUMMY_FLASH_ADDR" // To Update
#define STACK_POINTER_ADDR      "STACK_POINTER_ADDR" // To update
#define DYN_ADDI_ADDR           "DYN_ADDI_ADDR" // To update
#define EIP_ADDR                "EIP_ADDR" // To update
#define EBP_ADDR                "EBP_ADDR" // To update
#define ESP_ADDR                STACK_POINTER_ADDR
#endif

/* CONSTANT LIMITS */
#define ARRAY_MAX_SIZE          128

// Global variable 
#ifdef MAIN_CPP
uint16_t nbErrorDetected = 0;               // Number of error detected during compilation
uint16_t nbWarningDetected = 0;             // Number of warning detected during compilation
#else
extern uint16_t nbErrorDetected;               
extern uint16_t nbWarningDetected;             
#endif 


#endif /* GLOBAL_HPP */

