#!/bin/bash
gcc main.c -std=c99 -Wall -o asm_to_hex_manager
./asm_to_hex_manager ../compiler/test.asm test.hex
