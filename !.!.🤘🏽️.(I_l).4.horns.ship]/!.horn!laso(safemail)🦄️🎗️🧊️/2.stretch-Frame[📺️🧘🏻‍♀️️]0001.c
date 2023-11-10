
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <termios.h>

#include <sys/fcntl.h>

#include <sys/ioctl.h> // variable screen size


#define COLS 50	//rgb =64x35 *was60x30 
#define ROWS 10		//trying half, or w/e  *16x9?

int main() {

 struct winsize w;
  

 //   printf ("lines %d\n", w.ws_row);
   // printf ("columns %d\n", w.ws_col);
   //📺️🧘🏻‍♀️️📺️🧘🏻‍♀️️📺️🧘🏻‍♀️️📺️🧘🏻‍♀️️📺️🧘🏻‍♀️️📺️🧘🏻‍♀️️📺️🧘🏻‍♀️️📺️🧘🏻‍♀️️
   // div_15_col &  div_4.5_rows = sweet spot
    // plus w/e u wanna do to "govern output"
// also u could just tell them 2 fuck off if screen
// isn't size u want (cataclysm does this)
//(u can have a recheck size loop that only lets 
// user pass if screen is wide enuff this is probably best
//💌️⛽️🎅️🍥️🏣️🏣️🏣️🏣️🏣️🏣️🏣️🏣️🏣️🏣️🏣️🏣️
// SUPREME STRATEGY " u have a "FULL WORLD" regardless
// BUT U ONLY SHOW AS MUCH AS IN "VIEW WINDOW
///💌️💌️💌️💌️💌️💌️💌️
//💌️how? render Macro window... 
//💌️, then render a smaller/bigger window inside of it 2 test 
//💲️*by minusing some percent or w/e (if smoller=< ONLY)
////💌️💌️💌️💌️💌️💌️
//*DONT SKIP THIS , ITS EVERYTHING FROM NOW ON
// locking them out of screen is dumb as hell compared
//(obviously hte mex shoulndt ever depend on view 
//Screen size thats just how "snake(RARE)" was b4 
//🃏️ideally game logic will be COMPLETELY seperate form this(Modular)

//*so its already fine (screen size is perfect)
// just take kbd if screen is clicked for now
///
//🕹️🕹️🕹️🕹️🕹️🕹️🕹️🕹️🕹️🕹️🕹️🕹️🕹️🕹️
// but later u may opt for "joystick always & ||
// EVILKEYLOGGER+- HOTKEY 2 PIPE 4 SCREEN CONTROL
//&this is IO so its kinda important...
//(unfortunately 'hard' but is fundamental and u want quality
//so it may always be like this 4 u 
// JUST DO THINGS RIGHT THE FIRST TIME 
// we haven't logged keys at all yet so nows ur chance
// weather u consume from diff program or this one
// is up 2 u ,... i would use keylogger and windower
// in same program , just cuz its a "console"
// but maybe make them seperaable or something...
//HONESTLY ? i would do them from "MASTER CLI..."
// i dont want there 2 be 100 clis, but how can we have
// seperate processes ? 

// just take ur time.🏁️🐢️ 🐇️


//🕹️🕹️🕹️🕹️🕹️🕹️🕹️🕹️🕹️🕹️🕹️🕹️🕹️🕹️
//🏣️🏣️🏣️🏣️🏣️🏣️🏣️🏣️🏣️🏣️🏣️🏣️🏣️🏣️🏣️🏣️🏣️🏣️🏣️
//📺️🧘🏻‍♀️️📺️🧘🏻‍♀️️📺️🧘🏻‍♀️️📺️🧘🏻‍♀️️📺️🧘🏻‍♀️️📺️🧘🏻‍♀️️📺️🧘🏻‍♀️️📺️🧘🏻‍♀️️📺️🧘🏻‍♀️️📺️🧘🏻‍♀️️📺️🧘🏻‍♀️️
//📺️🧘🏻‍♀️️
   
//📺️🧘🏻‍♀️️ 
  // int Cols = 30 ;
  // int Rows = 10 ;

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
  // printf("\n");printf("\n");
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
  //🧘🏻‍♀️️🧘🏻‍♀️️🧘🏻‍♀️️🧘🏻‍♀️️(wanna make this stretch somehow, but not #1 priority...🧘🏻‍♀️️
   //https://stackoverflow.com/questions/1022957/getting-terminal-width-in-c
   //resize sol = "SIGWINCH"
   //https://psychocod3r.wordpress.com/2019/02/25/how-to-get-the-dimensions-of-a-linux-terminal-window-in-c/
  // 
   
    ioctl(STDOUT_FILENO, TIOCGWINSZ, &w);
  int Cols = w.ws_col - (w.ws_col/ 15);  //thes aren't resizing in loop... y?
   int Rows = w.ws_row - (w.ws_row/ 4.5); 
   //🧘🏻‍♀️️🧘🏻‍♀️️🧘🏻‍♀️️🧘🏻‍♀️️🧘🏻‍♀️️🧘🏻‍♀️️🧘🏻‍♀️️🧘🏻‍♀️️🧘🏻‍♀️️🧘🏻‍♀️️🧘🏻‍♀️️🧘🏻‍♀️️🧘🏻‍♀️️🧘🏻‍♀️️🧘🏻‍♀️️🧘🏻‍♀️️🧘🏻‍♀️️🧘🏻‍♀️️🧘🏻‍♀️️🧘🏻‍♀️️🧘🏻‍♀️️🧘🏻‍♀️️
  //🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🏓️
  // THE WAY THIS TABLE DOESN"T "REELOOP"
  // IS BECAUSE ITS DRAWING BACKWARS (redrawing squre overnover)
  // even tho ur drawing stuff anyways it seems kinda "HACKY"
  // the only thing actually wrong with it is the 
  // "FRAME CONTROL {} with all those open "for loops"
  // w/e its doing , i think its kind of amazing. 
    // Render table
    //🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️🤯️
 //   printf("\n");printf("\n");
 
    printf("┌");
    for (int i = 0; i < Cols; i++)
      printf("─");
    printf("┐\n");

    for (int j = 0; j < Rows; j++) {
      printf("│");
      for (int i = 0; i < Cols; i++)
        //printf("\033[38;2;255;0;0;48;2;0;255;0m\U00002580\033[0m");
        //printf("\033[38;2;255;255;255;48;2;0;0;255m\U00002580\033[0m");
        printf("\033[38;2;0;0;0;48;2;255;255;255m\U00002580\033[0m");
      printf("│\n");
    }

    printf("└");
    for (int i = 0; i < Cols; i++)
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

