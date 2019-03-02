/*
 * circular_buffer.h
 *
 *  Created on: May 16, 2018
 *      Author: David
 */

#ifndef SRC_BAG_CIRCULAR_BUFFER_H_
#define SRC_BAG_CIRCULAR_BUFFER_H_

#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>

#include "bag_devlib.h"

struct circ_buff_t {
	uint8_t *pBuffStart;
	uint8_t *pHeadRead;
	uint8_t *pHeadWrite;
	uint8_t *pBuffEnd;
	uint16_t length;
	uint16_t buffSize;
};

void circ_buff_init(struct circ_buff_t *buff, uint8_t *buffAddr, uint16_t buffSize);
void circ_buff_clear(struct circ_buff_t *buff);
int8_t circ_buff_write(struct circ_buff_t *buff, uint8_t *pData, uint16_t len);
int8_t circ_buff_write_byte(struct circ_buff_t *buff, uint8_t data);
uint16_t circ_buff_read(struct circ_buff_t *buff, uint8_t *pData, uint16_t len);
uint8_t circ_buff_read_byte(struct circ_buff_t *buff);


#endif /* SRC_BAG_CIRCULAR_BUFFER_H_ */
