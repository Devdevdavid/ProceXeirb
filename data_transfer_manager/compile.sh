#!/bin/bash
gcc main2.c -std=gnu99 -Wall -o data_transfer_manager
./data_transfer_manager ../asm_to_hex_manager/test.bin test 2> serial_port.bin