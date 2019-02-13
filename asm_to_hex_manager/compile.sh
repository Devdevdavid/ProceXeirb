#!/bin/bash
gcc main2.c -std=c99 -Wall -o asm_to_hex_manager
./asm_to_hex_manager test.asm test.bin
