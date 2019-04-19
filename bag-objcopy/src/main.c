/*******************************************************************************
 *  First Author : Pierre JOUBERT
 *  With the kind collaboration of : Julien BESSE
 *  Date : 04/04/2018
 *  OS : Linux
 *  Updated by David DEVANT on 2019-02-02
 *  Desc: The goal of this program is to convert a program written in language 
 *  assembly to hexa, ready to put in the RAM of the processor we have created.
 *  See print_usage() for usage.
 ******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdint.h>
#include <errno.h>
#include <math.h>

#include <bag_devlib.h>

#define LINE_BUFFER_SIZE  20    // Max Length of a ASM line
#define INST_BIT_LENGTH   5     // Bits allocated to Instructions
#define VALUE_BIT_LENGTH  20    // Bits allocated to Value

// List of instructions available
// LOGICAL OPERANDS
#define NOR 0x0 // Logical NOT OR
#define LOR 0x1 // Logical OR
#define AND 0x2 // Logical AND
#define XOR 0x3 // Logical Exclusive OR

// INTEGER OPERANDS
#define ADD 0x4 // Addition of integer
#define SUB 0x5 // Substraction of integer
#define DIV 0x6 // Division of integer
#define MUL 0x7 // Multiplication of integer
#define MOD 0x8 // Modulo of integer

// REAL OPERANDS
#define FAD 0x9 // Addition of real
#define FDI 0xA // Division of real
#define FMU 0xB // Multiplication of real

// CASTS
#define FTI 0xC // Real to integer conversion
#define ITF 0xD // Integer to real conversion

// UTILS
#define PSH 0xE // Decrement stack pointer
#define POP 0xF // Increment stack pointer
#define STA 0x10 // Store Accu
#define JCC 0x11 // Jump with carry condition
#define JMP 0x12 // Jump at address
#define GET 0x13 // Load into Accu

// TESTS
#define TGT 0x14 // Greater than comparaison
#define TLT 0x15 // Lower than comparaison
#define TEQ 0x16 // Equal comparaison

// MEMORY MOVEMENTS
#define CSA 0x17 // Compute Stack Address 
#define GAD 0x18 // Get at address
#define SAD 0x19 // Set at address

// VARIABLES (Not an instruction)
#define VAR 0x69

void print_size(uint32_t instructionCounter, uint32_t varCounter);

/**
 * @brief Make the association between the string and numerical 
 * representation of each instructions
 * 
 * @param instruction 
 * @return int Instruction code
 */
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
  if (!strcmp(instruction, "PSH")) return PSH;
  if (!strcmp(instruction, "POP")) return POP;
  if (!strcmp(instruction, "STA")) return STA;
  if (!strcmp(instruction, "JCC")) return JCC;
  if (!strcmp(instruction, "JMP")) return JMP;
  if (!strcmp(instruction, "GET")) return GET;
  if (!strcmp(instruction, "TGT")) return TGT;
  if (!strcmp(instruction, "TLT")) return TLT;
  if (!strcmp(instruction, "TEQ")) return TEQ;
  if (!strcmp(instruction, "GAD")) return GAD;
  if (!strcmp(instruction, "CSA")) return CSA;
  if (!strcmp(instruction, "SAD")) return SAD;
  if (!strcmp(instruction, "VAR")) return VAR;
  return -1;
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
    return -1;
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
    return -1;
  }

  return 0;
}

void print_usage(void) 
{
  LOG("You should use this program with the following arguments :\n");
  LOG("\t ./bag-objcopy -i <file.asm> -o <file.bytes> [-s, -f]\n");
  LOG("Options\n");
  LOG("\t -s          : Print size of the generated file\n");
  LOG("\t -f <format> : BIN = Binary for bag-upload (default)\n");
  LOG("\t               COE = COE file for Vivado\n");
}

int main(int argc, char const *argv[])
{
  FILE * asmFile = NULL;
  FILE * outFile = NULL;
  const char * inputFilePath;
  const char * outputFilePath;
  const uint32_t outputMaxValue = (uint32_t) pow(2, VALUE_BIT_LENGTH + INST_BIT_LENGTH) - 1;
  int lineCounter = 0;

  char lineBuffer[LINE_BUFFER_SIZE];
  char * instStr;
  char * valueStr;

  int8_t instCode;
  uint32_t value;
  uint32_t output;

  uint8_t index;
  uint32_t varCounter = 0;              // Number of variable in the asm file
  uint32_t instructionCounter = 0;      // Number of instruction (!= VAR) in the asm file

  uint8_t printSizeOpt = 0;
  uint8_t fileFormatOpt = 0;            // 0: Binary (for bag-upload), 1: COE (for Vivado ROM)

  // Arg check
  if (argc < (4 + 1)) {
    print_usage();
    return 1;
  } 

  // Check all argument
  for (index = 1; index < argc; index++) {
    if (!strncmp(argv[index], "-s", 2)) {
      printSizeOpt = 1;
    } else if (!strncmp(argv[index], "-f", 2)) {
      if (argc - index > 1) {
        // The next argument is the format mode
        ++index;
        if (!strncmp(argv[index], "BIN", 3)) {
          fileFormatOpt = 0;
        } else if (!strncmp(argv[index], "COE", 3)) {
          fileFormatOpt = 1;
        } else {
          LOG_ERROR("-f error: unknown format: %s", argv[index]);
          return 1;
        }
      } else {
        LOG_ERROR("-f error: argument missing");
        return 1;
      }
    } else if (!strncmp(argv[index], "-i", 2)) {
      if (argc - index > 1) {
        // The next argument is an output file path
        inputFilePath = argv[++index];
      } else {
        LOG_ERROR("-i error: argument missing");
        return 1;
      }
    } else if (!strncmp(argv[index], "-o", 2)) {
      if (argc - index > 1) {
        // The next argument is an output file path
        outputFilePath = argv[++index];
      } else {
        LOG_ERROR("-o error: argument missing");
        return 1;
      }
    } else {
      LOG_ERROR("Argument error: \"%s\"", argv[index]);
      print_usage();
      return 1;
    }
  }

  /** Open files */
  asmFile = fopen(inputFilePath, "r");
  if (asmFile == NULL) {
    LOG_ERROR("Failed to open %s: %s", inputFilePath, strerror(errno));
    return 1;
  }
  outFile = fopen(outputFilePath, "w");
  if (outFile == NULL) {
    LOG_ERROR("Failed to open %s: %s", outputFilePath, strerror(errno));
    return 1;
  }

  if (fileFormatOpt == 1) {
    fprintf(outFile, "memory_initialization_radix=16;\n");
    fprintf(outFile, "memory_initialization_vector=\n");
  }

  // Loop on all lines of input file
  while (1) {
    lineCounter++;

    // Get a line
    if (fgets(lineBuffer, LINE_BUFFER_SIZE, asmFile) == NULL) {
      if (feof(asmFile)) {
        break;
      }
      LOG_ERROR("Can't read line %d of ASM file", lineCounter);
      return 1;
    }

    // Split arguments
    if (splitLineArgs(lineBuffer, &instStr, &valueStr) == -1) {
      LOG_ERROR("Can't split line %d of ASM file: \"%s\"", lineCounter, lineBuffer);
      return 1;
    }

    // Convert data
    instCode = decodeInstruction(instStr);
    if (instCode == -1) {
      LOG_ERROR("Unknown instruction on line %d : \"%s\"", lineCounter, instStr);
      return 1;
    }
    value = (uint32_t) strtol(valueStr, NULL, 16);
    
    // VAR are not managed the same way
    if (instCode == VAR) {
      output = value;
      ++varCounter;
    } else {
      output = (instCode << VALUE_BIT_LENGTH) | value;
      ++instructionCounter;
    }

    if (output > outputMaxValue) {
      LOG_ERROR("Too big binary value on line %d : 0x%X (max: 0x%X)", lineCounter, value, outputMaxValue);
      return 1;
    }

    // Write in output file
    if (fileFormatOpt == 0) {
      fwrite(&output, sizeof(output), 1, outFile);
    } else if(fileFormatOpt == 1) {
      fprintf(outFile, "%07x\n", output);
    }
  }

  if (fileFormatOpt == 0) {
    // Complete file by 0x00 if in binary mode
    output = 0;
    while (lineCounter++ <= (HARD_RAM_SIZE / sizeof(output))) {
      fwrite(&output, sizeof(output), 1, outFile);
    }
  } else if (fileFormatOpt == 1) {
    fprintf(outFile, ";\n");
  }
  
  LOG_INFO("Work done !");

  if (printSizeOpt > 0) {
    print_size(instructionCounter, varCounter);
  }

  fclose(asmFile);
  fclose(outFile);
  
  return 0;
}

/**
 * @brief Print the size of the generated file
 * 
 * @param instructionCounter 
 * @param varCounter 
 */
void print_size(uint32_t instructionCounter, uint32_t varCounter)
{
  uint32_t totalSizeBit, totalSizeByte;
  float percentUsed;

  totalSizeBit = (instructionCounter + varCounter) * (INST_BIT_LENGTH + VALUE_BIT_LENGTH);
  totalSizeByte = (totalSizeBit / 8) + ((totalSizeBit % 8 > 0) ? 1 : 0);
  percentUsed = (totalSizeByte * 100.0) / (HARD_RAM_SIZE);

  LOG_INFO("Program   : %4d INST", instructionCounter);
  LOG_INFO("Variables : %4d VAR", varCounter);
  LOG_INFO("Total     : %4d bytes (%.2f%% Full)", totalSizeByte, percentUsed);
}


