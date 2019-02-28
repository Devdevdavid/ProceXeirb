/*******************************************************************************
 *  Main Author : Pierre JOUBERT
 *  With the kind collaboration of : Julien BESSE
 *  Date : 04/04/2018
 *  OS : Linux
 *                        ______  ___ _____ ___   
 *                        |  _  \/ _ \_   _/ _ \  
 *                        | | | / /_\ \| |/ /_\ \ 
 *                        | | | |  _  || ||  _  | 
 *                        | |/ /| | | || || | | | 
 *                        |___/ \_| |_/\_/\_ | |_/ 
 *            ___________  ___   _   _  ___________ ___________  
 *           |_   _| ___ \/ _ \ | \ | |/  ___|  ___|  ___| ___ \ 
 *             | | | |_/ / /_\ \|  \| |\ `--.| |_  | |__ | |_/ / 
 *             | | |    /|  _  || . ` | `--. \  _| |  __||    /  
 *             | | | |\ \| | | || |\  |/\__/ / |   | |___| |\ \  
 *             \_/ \_| \_\_| |_/\_| \_/\____/\_|   \____/\_| \_| 
 *             ___  ___  ___   _   _   ___  _____  ___________ 
 *             |  \/  | / _ \ | \ | | / _ \|  __ \|  ___| ___ \
 *             | .  . |/ /_\ \|  \| |/ /_\ \ |  \/| |__ | |_/ /
 *             | |\/| ||  _  || . ` ||  _  | | __ |  __||    / 
 *             | |  | || | | || |\  || | | | |_\ \| |___| |\ \ 
 *             \_|  |_/\_| |_/\_| \_/\_| |_/\____/\____/\_| \_|
 *
 *    The goal of this program is to transfer an hexadecimal file threw the a
 * serial connection. The file is send in integer, not in ASCII.
 * Usage: ./dtm input_file.bytes /dev/serialport
 ******************************************************************************/
#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <termios.h>
#include <unistd.h>

#include <stdint.h>

#include <sys/types.h>
#include <sys/stat.h>

#define MAX_RAM_SIZE  8192
#define CHUNK_SIZE    64 // Size of each chunk sent to FPGA, bigger is slower, but if it's too low, data will get lost

int set_interface_attribs(int fd, int speed, int parity) {
  struct termios tty;
  memset (&tty, 0, sizeof tty);
  if (tcgetattr (fd, &tty) != 0) {
    printf ("error %d from tcgetattr \n", errno);
    return -1;
  }

  cfsetospeed (&tty, speed);
  cfsetispeed (&tty, speed);

  tty.c_cflag = (tty.c_cflag & ~CSIZE) | CS8;     // 8-bit chars
  // disable IGNBRK for mismatched speed tests; otherwise receive break
  // as \000 chars
  tty.c_iflag &= ~IGNBRK;         // disable break processing
  tty.c_lflag = 0;                // no signaling chars, no echo,
                                  // no canonical processing
  tty.c_oflag = 0;                // no remapping, no delays
  tty.c_cc[VMIN]  = 0;            // read doesn't block
  tty.c_cc[VTIME] = 5;            // 0.5 seconds read timeout

  tty.c_iflag &= ~(IXON | IXOFF | IXANY); // shut off xon/xoff ctrl

  tty.c_cflag |= (CLOCAL | CREAD);// ignore modem controls,
                                  // enable reading
  tty.c_cflag &= ~(PARENB | PARODD);      // shut off parity
  tty.c_cflag |= parity;
  tty.c_cflag &= ~CSTOPB;
  tty.c_cflag &= ~CRTSCTS;

  if (tcsetattr (fd, TCSANOW, &tty) != 0) {
    printf ("error %d from tcsetattr\n", errno);
    return -1;
  }
  return 0;
}

void set_blocking(int fd, int should_block) {
  struct termios tty;
  memset (&tty, 0, sizeof tty);
  if (tcgetattr (fd, &tty) != 0) {
    printf ("error %d from tggetattr\n", errno);
    return;
  }

  tty.c_cc[VMIN]  = should_block ? 1 : 0;
  tty.c_cc[VTIME] = 5;            // 0.5 seconds read timeout

  if (tcsetattr (fd, TCSANOW, &tty) != 0)
    printf ("error %d setting term attributes\n", errno);
}

int main(int argc, char const *argv[])
{
  int index;
  const char * inputFilePath = NULL;
  const char * portStr = NULL;
  int sizeRead;
  int32_t buffer[CHUNK_SIZE];
  int binFileLen;
  int byteSentCount = 0;
  int comPort = 2, binFile;

  // Arg check
  if (argc != (3 + 1)) {
    printf("You should use this program with the following arguments :\n");
    printf("\t ./bag-compiler <file.bytes> -p <port>\n");
    return -1;
  } 

  // Check all argument
  for (index = 1; index < argc; index++) {
    if (!strncmp(argv[index], "-p", 2)) {
      if (argc - index > 1) {
        // The next argument is an output file path
        portStr = argv[++index];
      } else {
        fprintf(stderr, "-p error: argument missing\n");
        return -1;
      }
    } else {
      // This is an input file
      if (inputFilePath == NULL) {
        inputFilePath = argv[index];
      } else {
        fprintf(stderr, "Too much input files\n");
        return -1;
      }
    }
  }

  /** Open Serial Port */
  comPort = open(portStr,  O_RDWR | O_NOCTTY | O_SYNC);
  if (comPort < 0) {
    printf ("error %d opening %s: %s \n", errno, portStr, strerror(errno));
    return -1;
  }

  /** Open input binary file  */
  binFile = open(inputFilePath,  O_RDWR);
  if (binFile < 0) {
    printf ("Error %d opening %s: %s \n", errno, inputFilePath, strerror(errno));
    return -1;
  }

  /** Get binary file length */
  binFileLen = lseek(binFile, 0L, SEEK_END);
  lseek(binFile, 0L, SEEK_SET);

  /** Check the size of the binary */
  if (binFileLen > MAX_RAM_SIZE) {
    printf ("The binary file is too large for RAM size: %d (max: %d)\n", binFileLen, MAX_RAM_SIZE);
    return -1;
  }

  /** Configure serial port */
  set_interface_attribs(comPort, B115200, 0);  // set speed to 115,200 bps, 8n1 (no parity)
  set_blocking(comPort, 0);                    // set no blocking
  
  printf("Chunk size: %d bytes\n", CHUNK_SIZE);
  printf("Sending data to the target...   0%%");
  do {
    /** Read from binary file */
    sizeRead = read(binFile, buffer, CHUNK_SIZE);
    if (sizeRead == -1) {
      printf("Coun't read from binary file: %s\n", strerror(errno));
      return -1;
    }

    /** Write what was read on the serial port */
    if (write(comPort, buffer, sizeRead) == -1) {
      printf("Coun't write to serial port: %s\n", strerror(errno));
      return -1;
    }

    /** Display loading bar */
    byteSentCount += sizeRead;
    printf("\b\b\b\b%3d%%", (100 * byteSentCount) / binFileLen);
    fflush(stdout);

  } while (byteSentCount < binFileLen);
  
  printf("\b\b\b\b\b 100%%\nDone (%d bytes sent).\n", byteSentCount);

  close(binFile);
  close(comPort);

  return 0;
}

