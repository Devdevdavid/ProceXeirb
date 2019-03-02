/*
 * circular_buffer.c
 *
 *  Created on: May 16, 2018
 *      Author: David
 */
#include "bag_circular_buffer.h"

void circ_buff_init(struct circ_buff_t *buff,  uint8_t *buffAddr, uint16_t buffSize)
{
	buff->pBuffStart = ( uint8_t*) buffAddr;
	buff->buffSize = buffSize;
	buff->pHeadRead = buff->pBuffStart;
	buff->pHeadWrite = buff->pBuffStart;
	buff->length = 0;
	buff->pBuffEnd = buff->pBuffStart + buff->buffSize;
}

void circ_buff_clear(struct circ_buff_t *buff)
{
	buff->pHeadRead = buff->pBuffStart;
	buff->pHeadWrite = buff->pBuffStart;
	buff->length = 0;
}

int8_t circ_buff_write(struct circ_buff_t *buff, uint8_t *pData, uint16_t len)
{
	if (len > buff->buffSize - buff->length) {
		return ERROR;
	}
	buff->length += len; // Reserve the memory in case of interrupt
	while (len) {
		*buff->pHeadWrite++ = *pData++;
		if (buff->pHeadWrite >= buff->pBuffEnd) { // Come back
			buff->pHeadWrite = buff->pBuffStart;
		}
		--len;
	}

	return SUCCESS;
}

int8_t circ_buff_write_byte(struct circ_buff_t *buff, uint8_t data)
{
	return circ_buff_write(buff, &data, 1);
}

uint16_t circ_buff_read(struct circ_buff_t *buff, uint8_t *pData, uint16_t len)
{
	if (len > buff->length) {
		len = buff->length;
	}

	while (len > 0) {
		*pData++ = *buff->pHeadRead++;
		if (buff->pHeadRead >= buff->pBuffEnd) { // Come back
			buff->pHeadRead = buff->pBuffStart;
		}
		--buff->length;
		--len;
	}

	return len;
}

uint8_t circ_buff_read_byte(struct circ_buff_t *buff)
{
	uint8_t data;

	circ_buff_read(buff, &data, 1);

	return data;
}

