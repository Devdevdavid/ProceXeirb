/*******************************************************************************
 *  Main Author : Pierre JOUBERT
 *  With the kind collaboration of : Julien BESSE
 *  Date : 04/04/2018
 *  OS : Linux
 *  Updated by David DEVANT on 2019-02-02
 *                            _/_/      _/_/_/  _/      _/ 
 *                         _/    _/  _/        _/_/  _/_/  
 *                        _/_/_/_/    _/_/    _/  _/  _/   
 *                       _/    _/        _/  _/      _/    
 *                      _/    _/  _/_/_/    _/      _/     
 *
 *                           _/_/_/_/_/    _/_/  
 *                              _/      _/    _/ 
 *                             _/      _/    _/  
 *                            _/      _/    _/   
 *                           _/        _/_/      
 *
 *                      _/    _/  _/_/_/_/  _/      _/
 *                     _/    _/  _/          _/  _/   
 *                    _/_/_/_/  _/_/_/        _/      
 *                   _/    _/  _/          _/  _/     
 *                  _/    _/  _/_/_/_/  _/      _/    
 *                                                    
 *
 *    The goal of this program is to convert a program written in language 
 *  assembly to hexa, ready to put in the RAM of the processor we have created.
 * Usage: ./asm input_file.asm outputfile.bytes
 * 
 * Compiler option : IS_BINARY_MODE
 ******************************************************************************/

#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <termios.h>
#include <unistd.h>
#include <stdint.h>
#include <math.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <sys/file.h>

#define LINE_BUFFER_SIZE  20    // Max Length of a ASM line
#define INST_BIT_LENGTH   5     // Bits allocated to Instructions
#define VALUE_BIT_LENGTH  20    // Bits allocated to Value

#define MAX_RAM_SIZE      8192  // Maximum RAM size


// list of instructions available
//locical operands
#define NOR 0x0
#define LOR 0x1 // logical OR
#define AND 0x2
#define XOR 0x3

//mathematical operands
#define ADD 0x4
#define SUB 0x5
#define DIV 0x6
#define MUL 0x7
#define MOD 0x8 //modulo

//float operands
#define FAD 0x9 // addition 
#define FDI 0xA //division
#define FMU 0xB //multiply

//Casts
#define FTI 0xC //float to int 
#define ITF 0xD //int to float

//UTILS
#define STA 0x10
#define JCC 0x11
#define JMP 0x12 //jump
#define GET 0x13

//TESTS
#define TGT 0x14 //greater than
#define TLT 0x15 //lower than
#define TEQ 0x16 //equal

//MEMORY MOVEMENTS
#define GAD 0x18
#define SAD 0x19

//intern shit
#define VAR 0x69

int decodeInstruction(char * instruction) {
  if (!strcmp(instruction, "NOR")) return NOR;
  if (!strcmp(instruction, "LOR")) return LOR;
  if (!strcmp(instruction, "AND")) return AND;
  if (!strcmp(instruction, "XOR")) return XOR;
  if (!strcmp(instruction, "ADD")) return ADD;
  if (!strcmp(instruction, "SUB")) return SUB;
  if (!strcmp(instruction, "DIV")) return DIV;
  if (!strcmp(instruction, "MUL")) return MUL;
  if (!strcmp(instruction, "MOD")) return MOD;
  if (!strcmp(instruction, "FAD")) return FAD;
  if (!strcmp(instruction, "FDI")) return FDI;
  if (!strcmp(instruction, "FMU")) return FMU;
  if (!strcmp(instruction, "FTI")) return FTI;
  if (!strcmp(instruction, "ITF")) return ITF;
  if (!strcmp(instruction, "STA")) return STA;
  if (!strcmp(instruction, "JCC")) return JCC;
  if (!strcmp(instruction, "JMP")) return JMP;
  if (!strcmp(instruction, "GET")) return GET;
  if (!strcmp(instruction, "TGT")) return TGT;
  if (!strcmp(instruction, "TLT")) return TLT;
  if (!strcmp(instruction, "TEQ")) return TEQ;
  if (!strcmp(instruction, "GAD")) return GAD;
  if (!strcmp(instruction, "SAD")) return SAD;
  if (!strcmp(instruction, "VAR")) return VAR;
  return 1;
}

/**
 * Place the two char pointer at the beginning of the instruction and the value
 * @param  line     Input String (can be modified)
 * @param  instStr  Pointer on Instruction
 * @param  valueStr Pointer on Value
 * @return          0: OK, -1: Error
 */
int splitLineArgs(char * line, char ** instStr, char ** valueStr) 
{
  int lineLength;

  lineLength = strlen(line);

  // Line should at least contains 2 char + a space between
  if (lineLength < 3) {
    return 1;
  }

  // Instruction start at the beginning of the line
  (*instStr) = &line[0];

  // Init pointer
  (*valueStr) = 0;

  for (int index = 0; index < lineLength; ++index) {
    if (line[index] == ' ') {
      // Replace by a 0
      line[index] = '\0';

      // Start the value str
      if (index < lineLength - 1) {
        (*valueStr) = &line[index + 1];
      }
    }

    // Remove end of line characters
    if ((line[index] == '\n') || (line[index] == '\r')) {

      // Replace by a 0
      line[index] = '\0';
    }
  }

  // Did we detect the value ?
  if ((*valueStr) == 0) {
    return 1;
  }

  return 0;
}

int main(int argc, char const *argv[])
{
  int index;
  int lineCounter = 0;
  const char * inputFilePath;
  const char * outputFilePath;
  FILE * asmFile = NULL;
  FILE * binFile = NULL;

  char lineBuffer[LINE_BUFFER_SIZE];
  char * instStr;
  char * valueStr;

  int instCode;
  int value;
  int output;

  const int outputMaxValue = (int) pow(2, VALUE_BIT_LENGTH + INST_BIT_LENGTH) - 1;

  // Arg check
  if (argc != (4 + 1)) {
    printf("You should use this program with the following arguments :\n");
    printf("\t ./bag-objcopy -i <file.asm> -o <file.bytes>\n");
    return 1;
  } 

  // Check all argument
  for (index = 1; index < argc; index++) {
    if (!strncmp(argv[index], "-i", 2)) {
      if (argc - index > 1) {
        // The next argument is an output file path
        inputFilePath = argv[++index];
      } else {
        fprintf(stderr, "-i error: argument missing\n");
        return 1;
      }
    } else if (!strncmp(argv[index], "-o", 2)) {
      if (argc - index > 1) {
        // The next argument is an output file path
        outputFilePath = argv[++index];
      } else {
        fprintf(stderr, "-o error: argument missing\n");
        return 1;
      }
    } else {
      fprintf(stderr, "Argument error: \"%s\"\n", argv[index]);
      return 1;
    }
  }

  /** Open files */
  asmFile = fopen(inputFilePath, "r");
  if (asmFile == NULL) {
    printf("Unable to open input file\n");
    return 1;
  }
  binFile = fopen(outputFilePath, "w");
  if (binFile == NULL) {
    printf("Unable to open output file\n");
    return 1;
  }

  // Loop on all lines
  while (1) {
    lineCounter++;

    // Get a line
    if (fgets(lineBuffer, LINE_BUFFER_SIZE, asmFile) == NULL) {
      if (feof(asmFile)) {
        break;
      }
      printf("Can't read line %d of ASM file\n", lineCounter);
      return 1;
    }

    // Split arguments
    if (splitLineArgs(lineBuffer, &instStr, &valueStr) == -1) {
      printf("Can't split line %d of ASM file\n", lineCounter);
      return 1;
    }

    // Convert data
    instCode = decodeInstruction(instStr);
    if (instCode == -1) {
      printf("Unknown instruction on line %d : \"%s\"\n", lineCounter, instStr);
      return 1;
    }
    value = (int) strtol(valueStr, NULL, 16);
    
    // VAR are not managed the same way
    if (instCode == VAR) {
      output = value;
    } else {
      output = (instCode << VALUE_BIT_LENGTH) | value;
    }

    if (output > outputMaxValue) {
      printf("Too big binary value on line %d : 0x%X (max: 0x%X)\n", lineCounter, value, outputMaxValue);
      return 1;
    }

    // Write in output file
#ifdef IS_BINARY_MODE
    fwrite(&output, sizeof(output), 1, binFile);
#else
    snprintf(lineBuffer, LINE_BUFFER_SIZE, "%07x\n", output);
    fputs(lineBuffer, binFile);
#endif
  }

  printf("%d instructions written\n", lineCounter - 1);

  // Complete file by 0 if in binary mode
#ifdef IS_BINARY_MODE
  printf("Completing with zeros to reach %d bytes...\n", MAX_RAM_SIZE);
  output = 0;
  while (lineCounter++ < MAX_RAM_SIZE) {
    fwrite(&output, sizeof(output), 1, binFile);
  }
  printf("Work done !\n");
#endif 

  fclose(asmFile);
  fclose(binFile);
  
  return 0;
}


