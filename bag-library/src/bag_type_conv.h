/*
 * type_conv.h
 *
 *  Created on: May 16, 2018
 *      Author: David
 */

#ifndef SRC_BAG_TYPE_CONV_H_
#define SRC_BAG_TYPE_CONV_H_

#define TYPE_CONV_DECAL_OR(base, decal, value)					base <<= decal; \
																base |= value;

#define TYPE_CONV_2U8_TO_U16(u16, u8_1, u8_2)	 				u16 = u8_1; \
																TYPE_CONV_DECAL_OR(u16, 8, u8_2)

#define TYPE_CONV_3U8_TO_U32(u32, u8_1, u8_2, u8_3)	 			u32 = u8_1; \
																TYPE_CONV_DECAL_OR(u32, 8, u8_2) \
																TYPE_CONV_DECAL_OR(u32, 8, u8_3)

#define TYPE_CONV_4U8_TO_U32(u32, u8_1, u8_2, u8_3, u8_4) 		u32 = u8_1; \
																TYPE_CONV_DECAL_OR(u32, 8, u8_2) \
																TYPE_CONV_DECAL_OR(u32, 8, u8_3) \
																TYPE_CONV_DECAL_OR(u32, 8, u8_4)

#endif /* SRC_BAG_TYPE_CONV_H_ */
