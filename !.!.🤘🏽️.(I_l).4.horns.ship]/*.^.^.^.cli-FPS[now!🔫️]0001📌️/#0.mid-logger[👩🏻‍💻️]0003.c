#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <sys/poll.h>
#include <termios.h>

void set_term_quiet_input()
{
  struct termios tc;
  tcgetattr(0, &tc);
  tc.c_lflag &= ~(ICANON | ECHO);
  tc.c_cc[VMIN] = 0;
  tc.c_cc[VTIME] = 0;
  tcsetattr(0, TCSANOW, &tc);
}

int c ;
int length_of_buffer = 0; 
int length_of_file = 0 ; 

char growing_list[1024];


char tmp = '.';

void append(char* s, char c) {
        int len = strlen(s);
       // length_of = len;
        s[len] = c;
        s[len+1] = '\0';
}

int main() { 

int fd = open("foo.txt", O_WRONLY | O_CREAT | O_TRUNC, 0644);  

int flags = fcntl(fd, F_GETFL, 0);
fcntl(fd, F_SETFL, flags | O_NONBLOCK);


  struct pollfd pfd = { .fd = 0, .events = POLLIN };
  set_term_quiet_input();
  while (1) {
    if (poll(&pfd, 1, 0)>0) {
       c = getchar();
      printf("Key pressed: %c \n", c);
      
     
//append(growing_list, tmp);
append(growing_list, c);
printf("%s\n", growing_list);
length_of_buffer = strlen(growing_list); // want prv ln
printf("length = %d \n", length_of_buffer);
    

      if (c=='q') break;
    }
   // usleep(1000); // Some work 
    
    // putc(c, file);
    // check if char array is greater than 
    // last stored length if so print 2 file 
    // if not ignore this 
   
   // putc(c, file); /// works (2 often) (doesnt' work in while loop tho even tho while loop works !?!? 
    //
 
 while(length_of_file < length_of_buffer){ 
 FILE *file = fopen("mt.txt", "w");
  length_of_file++; 
  fputs(growing_list, file);
 putc(c, file);  ///OFF!? is looping 2 fast or something? 
 		// i think ur supposed 2 have opened another PIPE before trying 2 write 2 file? 
		//but it does print, so its weird... (i bet it would pipe 2 a cli/server? where i could write? 
		// seems rediculous tho  
  printf("length = %d \n", length_of_file);
 
  };
// update the lengthVAR here , or it will loop 
//forever 
      
  }
  
  
}
