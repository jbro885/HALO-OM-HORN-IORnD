//http://www.rkoucha.fr/tech_corner/sigwinch.html
#define _GNU_SOURCE
#include <sys/types.h>
#include <stdio.h>
#include <unistd.h>
#include <signal.h>
#include <sys/ioctl.h>
#include <termios.h>
#include <string.h>
#include <assert.h>
#include <stdlib.h>


// ----------------------------------------------------------------------------
// Name   : winch_display
// Usage  : Display buffer to reduce the number of write calls to display
//          the frame on the screen
// ----------------------------------------------------------------------------
static char winch_display[4096];


// ----------------------------------------------------------------------------
// Name   : winch_offset
// Usage  : Current offset in the displayu buffer
// ----------------------------------------------------------------------------
static int winch_offset;


// ----------------------------------------------------------------------------
// Name   : winch_buffer_flush
// Usage  : Flush the content of the display buffer
// Return : None
// ----------------------------------------------------------------------------
static void winch_buffer_flush(int fd)
{
int rc;

  if (winch_offset > 0) {
    rc = write(fd, winch_display, winch_offset);
    assert(rc == winch_offset);
    winch_offset = 0;
  }
 
} // winch_buffer_flush


// ----------------------------------------------------------------------------
// Name   : winch_buffer_write
// Usage  : Write into an internal buffer and flush it to stdout when it
//          is full
// Return : None
// ----------------------------------------------------------------------------
static void winch_buffer_write(int fd, char *data, size_t data_sz)
{
int i, j;

  for (j = 0, i = winch_offset;
       (j < (int)data_sz) && (i < (int)sizeof(winch_display)); 
       i ++, j ++) {
    winch_display[i] = data[j];
  }

  // New offset
  winch_offset = i;

  // If the display buffer is full ==> Flush it !
  if (winch_offset == (int)sizeof(winch_display)) {
    winch_buffer_flush(fd);
  }

  // If there are more data to write
  if (j < (int)data_sz) {
    // Recursive call
    winch_buffer_write(fd, data + j, data_sz - j);
  }

} // winch_buffer_write



// ----------------------------------------------------------------------------
// Name   : display_border
// Usage  : Display a frame around the terminal's window
// Return : None
// ----------------------------------------------------------------------------
static void display_border(
                           int      fd,
			   unsigned short rows,
                           unsigned short columns
                          )
{
unsigned short r, c;
int            rc;
char           banner[25];
static char   *line = (char *)0;
static size_t  line_sz = 0;

  // Adjust the size of the line buffer
  // (+1 to take in account terminating '\n')
  if ((int)line_sz < (columns + 1)) {
    line = (char *)realloc(line, columns + 1);
    line_sz = columns + 1;
  }

  r = 0;

  // Print first line
  if (rows > 1) {
    unsigned short saved_rows = rows;

    // '\n' to go back to beginning of line after last display of 'colsXrows'
    winch_buffer_write(fd, "\n", 1);
    line[0] = '+';
    for (c = 1; c < (columns - 1); c ++) {
      line[c] = '-';
    }
    if (columns - 1) {
      line[columns - 1] = '+';
    }
    line[columns] = '\n';
    winch_buffer_write(fd, line, columns + 1);

    rows -= 1;

    if (rows >= 2) {
      line[0] = '|';
      for (c = 1; c < (columns - 1); c ++) {
        line[c] = '*';
      }
      if (columns - 1) {
        line[columns - 1] = '|';
      }
      line[columns] = '\n';

      // Print intermediate lines
      for (r = 0; r < (rows - 2); r ++) {
        winch_buffer_write(fd, line, columns + 1);
      } // End for

      rows -= r;
    }

    // Print last line
    if (rows == 2) {
      line[0] = '+';
      for (c = 1; c < (columns - 1); c ++) {
        line[c] = '-';
      }
      if (columns - 1) {
        line[columns - 1] = '+';
      }
      line[columns] = '\n';
      winch_buffer_write(fd, line, columns + 1);

      rows -= 1;
    } else {
      assert(1 == rows);
    }

    rc = snprintf(banner, sizeof(banner), "%dx%d: ",
                  columns, saved_rows);
  } else {
    // '\n' to go back to beginning of line after
    // last display of 'colsXrows'
    rc = snprintf(banner, sizeof(banner), "\n%dx%d: ",
                  columns, rows);
  }

  winch_buffer_write(fd, banner, rc);

  winch_buffer_flush(fd);
} // display_border


// ----------------------------------------------------------------------------
// Name   : winch_winsz
// Usage  : Current size of the terminal
// ----------------------------------------------------------------------------
static struct winsize winch_winsz;


// ----------------------------------------------------------------------------
// Name   : sig_handler
// Usage  : Signal handler for SIGWINCH
// Return : None
// ----------------------------------------------------------------------------
static void sig_handler(int sig)
{

  if (SIGWINCH == sig) {
    ioctl(0, TIOCGWINSZ, &winch_winsz);
    display_border(1, winch_winsz.ws_row, winch_winsz.ws_col);
  }

} // sig_handler



// ----------------------------------------------------------------------------
// Name   : main
// Usage  : Program's entry point
// Return : 0, if OK
//          !0, if error
// ----------------------------------------------------------------------------
int main(void)
{
char           line[256];
size_t         l;

  ioctl(0, TIOCGWINSZ, &winch_winsz);
  display_border(1, winch_winsz.ws_row, winch_winsz.ws_col);

  // Capture SIGWINCH
  signal(SIGWINCH, sig_handler);

  while (fgets(line, sizeof(line), stdin)) {
    l = strlen(line);
    if (l > 0) {
      if ('\n' == line[l - 1]) {
        line[l - 1] = '\0';
      }

      if (!strcmp(line, "exit")) {
        break;
      }
    }

    display_border(1, winch_winsz.ws_row, winch_winsz.ws_col);
  } // End while

  return 0;

} // main
