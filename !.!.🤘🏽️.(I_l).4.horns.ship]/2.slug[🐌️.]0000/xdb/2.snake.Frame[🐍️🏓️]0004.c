
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
  //🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🏓️
  // THE WAY THIS TABLE DOESN"T "REELOOP"
  // IS BECAUSE ITS DRAWING BACKWARS (redrawing squre overnover)
  // even tho ur drawing stuff anyways it seems kinda "HACKY"
    // Render table
    //🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️
    printf("┌");
    for (int i = 0; i < COLS; i++)
      printf("─");
    printf("┐\n");

    for (int j = 0; j < ROWS; j++) {
      printf("│");
      for (int i = 0; i < COLS; i++)
        //printf("\033[38;2;255;0;0;48;2;0;255;0m\U00002580\033[0m");
        printf("\033[38;2;255;255;255;48;2;0;0;255m\U00002580\033[0m");
      printf("│\n");
    }

    printf("└");
    for (int i = 0; i < COLS; i++)
      printf("─");
    printf("┘\n");
 
    int gameover = 0;
  
    
    
//#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️
    while (!quit && !gameover) {
    

      fflush(stdout);

      usleep(5 * 1000000 / 60);

      // Read keyboard
      struct timeval tv;
      fd_set fds;
      tv.tv_sec = 0;
      tv.tv_usec = 0;

      FD_ZERO(&fds);
      FD_SET(STDIN_FILENO, &fds);
      select(STDIN_FILENO + 1, &fds, NULL, NULL, &tv);
      if (FD_ISSET(STDIN_FILENO, &fds)) {
        int ch = getchar();
        if (ch == 27 || ch == 'q') {
          quit = 1;
        } 
      }
    }
//#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️#👨🏽‍💻️
  }

  // Show cursor
  printf("\e[?25h");

 tcsetattr(STDIN_FILENO, TCSANOW, &oldt);
  return 0;
}

