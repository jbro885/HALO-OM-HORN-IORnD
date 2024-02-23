
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <termios.h>

#include <sys/fcntl.h>

#define COLS 60
#define ROWS 30

int main() {

int fd = open("foo.txt", O_WRONLY | O_CREAT | O_APPEND, 0644); 


//🗓️🗓️🗓️🗓️🗓️🗓️🗓️🗓️🗓️🗓️🗓️🗓️
//printing map 2 file + z&w 2 reconsome here or
// thru vertex 2 3d
// not that it matters cuz it doesnt' actually
// Consume a map just keeps printing 
// while it also prints snake moving
// u may just rather start from scratch
// but its nice to have "SOMETHING"
// ur gonna want a map "maker anyways"
// unless u just use 3x3 map ;) 
// and make sure u can move around ;) 
// look up "c" rouge like (no ncurse)
// and make ur own system , tbh 
//🗓️🗓️🗓️🗓️🗓️🗓️🗓️🗓️🗓️🗓️🗓️🗓️
  // Hide cursor
  printf("\e[?25l");

  // Switch to canonical mode, disable echo
  struct termios oldt, newt;
  tcgetattr(STDIN_FILENO, &oldt);
  newt = oldt;
  newt.c_lflag &= ~(ICANON | ECHO);
  tcsetattr(STDIN_FILENO, TCSANOW, &newt);

  int x[1000], y[1000];
  int quit = 0;
  while (!quit) {
    // Render table
    printf("┌");
   }

  // Show cursor
  printf("\e[?25h");

 tcsetattr(STDIN_FILENO, TCSANOW, &oldt);
  return 0;
}

