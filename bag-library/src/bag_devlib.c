/*
 * bag_devlib.c
 *
 *  Created on: May 15, 2018
 *      Author: David
 */

#include "bag_devlib.h"

void lib_log(FILE *output, uint8_t level, const char funcName[], uint32_t lineNum, const char format[], ...)
{
	va_list arg;
	time_t timer;
	struct tm *timeinfo;
	char prefixStr[101] = "";
	char *pPrefixStr = prefixStr;

	if (level != LOG_LVL_NO_PREFIX) {
		pPrefixStr += sprintf(pPrefixStr, "[");
		switch(level) {
			case LOG_LVL_DEBUG: 	pPrefixStr += sprintf(pPrefixStr, ANSI_COLOR_BLUE   "DEBUG"); break;
			case LOG_LVL_WARNING: 	pPrefixStr += sprintf(pPrefixStr, ANSI_COLOR_YELLOW "WARN "); break;
			case LOG_LVL_ERROR: 	pPrefixStr += sprintf(pPrefixStr, ANSI_COLOR_RED    "ERROR"); break;
			case LOG_LVL_INFO:  	pPrefixStr += sprintf(pPrefixStr, ANSI_COLOR_GREEN  "INFO "); break;
			default:			 	break;
		}
		time(&timer);
		timeinfo = localtime(&timer);
		pPrefixStr += strftime(pPrefixStr, 101, ANSI_COLOR_RESET "] %T ", timeinfo); // %D : Date, %T : Time
		
		// Display line and function name only for debug level
		if (level == LOG_LVL_DEBUG) {
			pPrefixStr += sprintf(pPrefixStr, ANSI_COLOR_GRAY "%s() (L.%d) " ANSI_COLOR_RESET, funcName, lineNum);
		}
	}

	va_start(arg, format);
	fprintf(output, prefixStr, NULL);
	vfprintf(output, format, arg);
	va_end(arg);
	
	if (level != LOG_LVL_NO_PREFIX) {
		fprintf(output, "\n", NULL);
	}

	fflush(output);
}

int8_t get_args(struct args_t *args, int argc, char *argv[])
{
	uint8_t argsIndex = 0; // Ignore first arg which is exe path
	uint8_t curArg = 1;
	uint16_t curIndex = 1;
	bool isPreviousValue = false;

	memset(args, 0, sizeof(struct args_t));

	while (curArg < argc) {
		// Length check
		if (strlen(argv[curArg]) >= ARGS_STR_BUFF_MAX_LENGTH) {
			LOG_ERROR("The arg %d is too long (%d char)", curArg, strlen(argv[curArg]));
			return ERROR;
		}
		if (isPreviousValue) {
			isPreviousValue = false;
			if (argv[curArg][0] == '-') {
				LOG_ERROR("A value was needed for previous arg -%s", args->table[argsIndex].key);
				return ERROR;
			}
			strcpy(args->table[argsIndex].strValue, argv[curArg]);
			++argsIndex;
		}
		else if (argv[curArg][0] == '-') { // If is a option
			strcpy(args->table[argsIndex].key, argv[curArg] + 1); // +1: Don't copy the '-'
			if ((argv[curArg][1] >= 'A') && (argv[curArg][1] <= 'Z')) {
				isPreviousValue = true; // A value is needed
			} else {
				++argsIndex;
			}
		}
		else {
			strcpy(args->table[argsIndex].key, argv[curArg]);
			args->table[argsIndex].index = curIndex++;
			++argsIndex;
		}
		curArg += 1;
	}
	if (isPreviousValue) {
		LOG_ERROR("The value of -%s is missing",  args->table[argsIndex].key);
		return ERROR;
	}
	args->count = argsIndex;

	return SUCCESS;
}
