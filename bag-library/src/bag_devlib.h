/*
 * devlib.h
 *
 *  Created on: May 15, 2018
 *      Author: David
 */

#ifndef SRC_BAG_DEVLIB_H_
#define SRC_BAG_DEVLIB_H_

#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <stdarg.h>
#include <time.h>
#include <stdbool.h>
#include <string.h>

#define DEVLIB_VERSION "DevLib v1.3"

/* ========================================
 *             PROCEXEIRB
 * ========================================
 */

#define HARD_RAM_SIZE      			(8192*4)  // Maximum RAM size in bytes (2**13 * 32 bits)

// List of instructions available
// LOGICAL OPERANDS
#define OP_NOR 0x0 // Logical NOT OR
#define OP_LOR 0x1 // Logical OR
#define OP_AND 0x2 // Logical AND
#define OP_XOR 0x3 // Logical Exclusive OR

// INTEGER OPERANDS
#define OP_ADD 0x4 // Addition of integer
#define OP_SUB 0x5 // Substraction of integer
#define OP_DIV 0x6 // Division of integer
#define OP_MUL 0x7 // Multiplication of integer
#define OP_MOD 0x8 // Modulo of integer

// REAL OPERANDS
#define OP_FAD 0x9 // Addition of real
#define OP_FDI 0xA // Division of real
#define OP_FMU 0xB // Multiplication of real

// CASTS
#define OP_FTI 0xC // Real to integer conversion
#define OP_ITF 0xD // Integer to real conversion

// UTILS
#define OP_PSH 0xE // Decrement stack pointer
#define OP_POP 0xF // Increment stack pointer
#define OP_STA 0x10 // Store Accu
#define OP_JCC 0x11 // Jump with carry condition
#define OP_JMP 0x12 // Jump at address
#define OP_GET 0x13 // Load into Accu

// TESTS
#define OP_TGT 0x14 // Greater than comparaison
#define OP_TLT 0x15 // Lower than comparaison
#define OP_TEQ 0x16 // Equal comparaison

// MEMORY MOVEMENTS
#define OP_CSA 0x17 // Compute Stack Address 
#define OP_GAD 0x18 // Get at address
#define OP_SAD 0x19 // Set at address

// VARIABLES (Not an instruction)
#define OP_VAR 0x69


/* ========================================
 * RETURN
 * ========================================
 */
#define SUCCESS 					0
#define ERROR 						-1

/* ========================================
 * LOG
 * ========================================
 */

#define LOG_LVL_DEBUG   			1
#define LOG_LVL_WARNING 			2
#define LOG_LVL_ERROR  				3
#define LOG_LVL_NO_PREFIX 			4
#define LOG_LVL_INFO	 			5

/***
 * @see https://en.wikipedia.org/wiki/ANSI_escape_code
 */
#ifdef LOG_SUPPORT_COLOR
#define ANSI_COLOR_RED     "\x1b[31m"
#define ANSI_COLOR_GREEN   "\x1b[32m"
#define ANSI_COLOR_YELLOW  "\x1b[33m"
#define ANSI_COLOR_BLUE    "\x1b[34m"
#define ANSI_COLOR_MAGENTA "\x1b[35m"
#define ANSI_COLOR_CYAN    "\x1b[36m"
#define ANSI_COLOR_GRAY    "\x1b[90m"
#define ANSI_COLOR_RESET   "\x1b[0m"
#else
#define ANSI_COLOR_RED
#define ANSI_COLOR_GREEN
#define ANSI_COLOR_YELLOW
#define ANSI_COLOR_BLUE
#define ANSI_COLOR_MAGENTA
#define ANSI_COLOR_CYAN
#define ANSI_COLOR_GRAY
#define ANSI_COLOR_RESET
#endif

#ifdef DEBUG
#define LOG_DEBUG(format, ...) 		lib_log(stdout, LOG_LVL_DEBUG, __FUNCTION__, __LINE__, format, ##__VA_ARGS__)
#else
#define LOG_DEBUG(format, ...)
#endif
#define LOG_WARNING(format, ...) 	        lib_log(stderr, LOG_LVL_WARNING, __FUNCTION__, 0, format, ##__VA_ARGS__)
#define LOG_ERROR(format, ...) 	            lib_log(stderr, LOG_LVL_ERROR, __FUNCTION__, 0, format, ##__VA_ARGS__)
#define LOG_WARNING_L(format, line, ...)    lib_log(stderr, LOG_LVL_WARNING, __FUNCTION__, line, format, ##__VA_ARGS__)
#define LOG_ERROR_L(format, line, ...) 	    lib_log(stderr, LOG_LVL_ERROR, __FUNCTION__, line, format, ##__VA_ARGS__)
#define LOG_INFO(format, ...) 			    lib_log(stdout, LOG_LVL_INFO, __FUNCTION__, __LINE__, format, ##__VA_ARGS__)
#define LOG(format, ...) 				    lib_log(stdout, LOG_LVL_NO_PREFIX, __FUNCTION__, __LINE__, format, ##__VA_ARGS__)

void lib_log(FILE *output, uint8_t level, const char funcName[], uint32_t lineNum, const char format[], ...);

#endif /* SRC_BAG_DEVLIB_H_ */
