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
		} else if (((level == LOG_LVL_WARNING) || (level == LOG_LVL_ERROR)) && (lineNum != 0)) {
			pPrefixStr += sprintf(pPrefixStr, ANSI_COLOR_GRAY "Line %d " ANSI_COLOR_RESET, lineNum);
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