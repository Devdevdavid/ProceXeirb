/*******************************************************************************
 *  Main Author : Pierre JOUBERT
 *  With the kind collaboration of : Julien BESSE
 *  Date : 04/04/2018
 *  OS : Linux
 *    The goal of this program is to transfer an hexadecimal file threw the a
 * serial connection. The file is send in integer, not in ASCII.
 ******************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <fcntl.h>
#include <termios.h>
#include <unistd.h>

#include <bag_devlib.h>

#define CHUNK_SIZE        64      // Size of each chunk sent to FPGA, bigger is slower, but if it's too low, data will get lost

int set_interface_attribs(int fd, int speed, int parity) 
{
  struct termios tty;

  memset(&tty, 0, sizeof tty);

  if (tcgetattr(fd, &tty) != 0) {
    LOG_ERROR("Failed from tcsetattr(): code %d", errno);
    return -1;
  }

  cfsetospeed(&tty, speed);
  cfsetispeed(&tty, speed);

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

  if (tcsetattr(fd, TCSANOW, &tty) != 0) {
    LOG_ERROR("Failed from tcsetattr(): code %d", errno);
    return -1;
  }
  return 0;
}

void set_blocking(int fd, int should_block) 
{
  struct termios tty;

  memset(&tty, 0, sizeof tty);

  if (tcgetattr(fd, &tty) != 0) {
    LOG_ERROR("Failed from tggetattr(): code %d", errno);
    return;
  }

  tty.c_cc[VMIN]  = should_block ? 1 : 0;
  tty.c_cc[VTIME] = 5;            // 0.5 seconds read timeout

  if (tcsetattr (fd, TCSANOW, &tty) != 0) {
    LOG_ERROR("Failed setting term attributes: code %d", errno);
  }
}

void print_usage(void) 
{
  LOG("You should use this program with the following arguments :\n");
  LOG("\t ./bag-compiler <file.bytes> -p <port>\n");
  // LOG("Options\n");
  // LOG("\t -s  : -\n");
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
    print_usage();
    return -1;
  } 

  // Check all argument
  for (index = 1; index < argc; index++) {
    if (!strncmp(argv[index], "-p", 2)) {
      if (argc - index > 1) {
        // The next argument is an output file path
        portStr = argv[++index];
      } else {
        LOG_ERROR("-p error: argument missing");
        return -1;
      }
    } else {
      // This is an input file
      if (inputFilePath == NULL) {
        inputFilePath = argv[index];
      } else {
        LOG_ERROR("Too much input files");
        print_usage();
        return -1;
      }
    }
  }

  /** Open Serial Port */
  comPort = open(portStr,  O_RDWR | O_NOCTTY | O_SYNC);
  if (comPort < 0) {
    LOG_ERROR("Failed to open %s: %s", portStr, strerror(errno));
    return -1;
  }

  /** Open input binary file  */
  binFile = open(inputFilePath,  O_RDWR);
  if (binFile < 0) {
    LOG_ERROR("Failed to open %s: %s", inputFilePath, strerror(errno));
    return -1;
  }

  /** Get binary file length */
  binFileLen = lseek(binFile, 0L, SEEK_END);
  lseek(binFile, 0L, SEEK_SET);

  /** Check the size of the binary */
  if (binFileLen > HARD_RAM_SIZE) {
    LOG_ERROR("The binary file is too large for RAM size: %d (max: %d)", binFileLen, HARD_RAM_SIZE);
    return -1;
  }

  /** Configure serial port */
  set_interface_attribs(comPort, B115200, 0);  // set speed to 115,200 bps, 8n1 (no parity)
  set_blocking(comPort, 0);                    // set no blocking
  
  LOG_DEBUG("Chunk size: %d bytes", CHUNK_SIZE);
  LOG_INFO("Sending data to the target...   0%%");
  do {
    /** Read from binary file */
    sizeRead = read(binFile, buffer, CHUNK_SIZE);
    if (sizeRead == -1) {
      LOG_ERROR("Couldn't read from binary file: %s", strerror(errno));
      return -1;
    }

    /** Write what was read on the serial port */
    if (write(comPort, buffer, sizeRead) == -1) {
      LOG_ERROR("Coun't write to serial port: %s", strerror(errno));
      return -1;
    }

    /** Display loading bar */
    byteSentCount += sizeRead;

    // Move Cursor Up, Go to Colomn 1, Clear the line
    LOG("\033[1A\033[;1\033[K");
    LOG_INFO("Sending data to the target... %d%%", (100 * byteSentCount) / binFileLen);

  } while (byteSentCount < binFileLen);
  
  LOG_INFO("Work done ! (%d bytes sent)", byteSentCount);

  close(binFile);
  close(comPort);

  return 0;
}

