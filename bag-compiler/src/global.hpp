/******************************************************************************
 *  Authors : David DEVANT
 *  Date    : 04/05/2019
 *  OS      : Linux / MacOS
 *    This header define some usefull macros and constants
 ******************************************************************************/

#ifndef GLOBAL_HPP
#define GLOBAL_HPP

#include <bag_devlib.h>

#define APP_VERSION     "2.2.62-devantd"

/* MACRO: Each ERROR/WARNING are counted */
#define _LOG_ERROR(format, ...)   LOG_ERROR(format, ##__VA_ARGS__); nbErrorDetected++;
#define _LOG_WARNING(format, ...) LOG_WARNING(format, ##__VA_ARGS__); nbWarningDetected++;

/* CONSTANT ADDRESSES */
// The define below are hexadecimal value on 5 digits
#define SIN_TABLE_ADDR          0x04000
#define COS_TABLE_ADDR          (SIN_TABLE_ADDR + 90)
#define SHARED_MEM_ADDR         0x03000
#define CALL_STACK_START        0x02000     // CallStack ram start address
#define CALL_STACK_END          0x023FF     // CallStack ram end address
#ifndef DEBUG
    #define LCD_ADDR                "80001"     // LCD Display Address
    #define ESP_ADDR                "02400"     // Stack Pointer
    #define EBP_ADDR                "02401"     // Base Pointer
    #define DYN_ADDI_ADDR           "02402"     // Output of the dynamic adress computer 
    #define EIP_ADDR                "02403"     // Instruction Address register
    #define DUMMY_FLASH_ADDR        "02404"     // 1 Byte of Flash memory
    // Optimum Integer divisor
    #define OPTI_DIV_I_IN1_ADDR     "02408"     // Optimum divisor integer IN1 address
    #define OPTI_DIV_I_IN2_ADDR     "02409"     // Optimum divisor integer IN2 address
    #define OPTI_DIV_I_OUT_ADDR     "0240A"     // Optimum divisor integer OUT address
    #define OPTI_DIV_I_RDY_ADDR     "0240B"     // Optimum divisor integer READY address
    // Optimum Real divisor
    #define OPTI_DIV_R_IN1_ADDR     "0240C"     // Optimum divisor reel IN1 address
    #define OPTI_DIV_R_IN2_ADDR     "0240D"     // Optimum divisor reel IN2 address
    #define OPTI_DIV_R_OUT_ADDR     "0240E"     // Optimum divisor reel OUT address
    #define OPTI_DIV_R_RDY_ADDR     "0240F"     // Optimum divisor reel READY address
    // Timer
    #define TIMER_INPUT_ADDR        "02410"     // Timer input addresse
    #define TIMER_OUTPUT_ADDR       "02411"     // Timer output addresse
#else
    #define LCD_ADDR                "LCD_ADDR"
    #define ESP_ADDR                "ESP_ADDR" 
    #define EBP_ADDR                "EBP_ADDR" 
    #define DYN_ADDI_ADDR           "DYN_ADDI_ADDR" 
    #define EIP_ADDR                "EIP_ADDR" 
    #define DUMMY_FLASH_ADDR        "DUMMY_FLASH_ADDR" 
    // Optimum Integer divisor
    #define OPTI_DIV_I_IN1_ADDR     "OPTI_DIV_I_IN1_ADDR"     // Optimum divisor integer IN1 address
    #define OPTI_DIV_I_IN2_ADDR     "OPTI_DIV_I_IN2_ADDR"     // Optimum divisor integer IN2 address
    #define OPTI_DIV_I_OUT_ADDR     "OPTI_DIV_I_OUT_ADDR"     // Optimum divisor integer OUT address
    #define OPTI_DIV_I_RDY_ADDR     "OPTI_DIV_I_RDY_ADDR"     // Optimum divisor integer READY address
    // Optimum Real divisor
    #define OPTI_DIV_R_IN1_ADDR     "OPTI_DIV_R_IN1_ADDR"     // Optimum divisor real IN1 address
    #define OPTI_DIV_R_IN2_ADDR     "OPTI_DIV_R_IN2_ADDR"     // Optimum divisor real IN2 address
    #define OPTI_DIV_R_OUT_ADDR     "OPTI_DIV_R_OUT_ADDR"     // Optimum divisor real OUT address
    #define OPTI_DIV_R_RDY_ADDR     "OPTI_DIV_R_RDY_ADDR"     // Optimum divisor real READY address
    // Timer
    #define TIMER_INPUT_ADDR        "TIMER_INPUT_ADDR"        // Timer input addresse
    #define TIMER_OUTPUT_ADDR       "TIMER_OUTPUT_ADDR"       // Timer output addresse
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

