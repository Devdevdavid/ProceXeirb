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

#define DEVLIB_VERSION "DevLib v1.0.1"

/* ========================================
 * 
 * ========================================
 */

#define HARD_RAM_SIZE      			(8192*4)  // Maximum RAM size in bytes (2**13 * 32 bits)


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
#define LOG_WARNING(format, ...) 	lib_log(stderr, LOG_LVL_WARNING, __FUNCTION__, __LINE__, format, ##__VA_ARGS__)
#define LOG_ERROR(format, ...) 		lib_log(stderr, LOG_LVL_ERROR, __FUNCTION__, __LINE__, format, ##__VA_ARGS__)
#define LOG_INFO(format, ...) 		lib_log(stdout, LOG_LVL_INFO, __FUNCTION__, __LINE__, format, ##__VA_ARGS__)
#define LOG(format, ...) 			lib_log(stdout, LOG_LVL_NO_PREFIX, __FUNCTION__, __LINE__, format, ##__VA_ARGS__)

void lib_log(FILE *output, uint8_t level, const char funcName[], uint32_t lineNum, const char format[], ...);

/* ========================================
 * ARGUMENTS
 * ========================================
 */

#define ARGS_STR_BUFF_MAX_LENGTH 100

struct arg_t {
	uint16_t index;
	char key[ARGS_STR_BUFF_MAX_LENGTH];
	char strValue[ARGS_STR_BUFF_MAX_LENGTH];
	uint32_t u32Value;
};

#ifndef ARGS_MAX_NUMBER
#define ARGS_MAX_NUMBER 10
#endif
struct args_t {
	struct arg_t table[ARGS_MAX_NUMBER];
	uint8_t count;
};

int8_t get_args(struct args_t *args, int argc, char *argv[]);


#endif /* SRC_BAG_DEVLIB_H_ */
