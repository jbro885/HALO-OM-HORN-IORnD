//🦄️
// we are just writing dummy data 2 
// first inode position 
// we can sus out the rest later 
// it isn't gonna just "dev up in a linear fashion"
// we want dummy data, we will wrap in blockchain 
// then take new change at same mem position or w/e 
// and merge diff 

//BLOCK HEADER STRUCTURE : 
//[[VERSion(4by)][Previous block hash(32by)][Merkle Root(32by)][Timestamp secs from gen+date (4)][Difficulty index(4)][nonce(4)][padding(48)]]

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <sys/poll.h>
#include <termios.h>

#include <fcntl.h>  
#include <errno.h>



 // wont let me malloc buffer0 size 4 w/e reason w/e
			//it means when u think its doing it , its fake...
char buffer0[409600000];
char buffer1[409600000]; 


extern int stdBitByteSize_H ; 
extern int stdBlockSize_H  ;
extern int stdBufferSize_H ; 
//////
extern int stdProcTimeOffset_H ; 
extern int stdKbdInOffset_H ;
//////////
int c ;
int length_of_buffer = 0; 
int length_of_file = 0 ; 

char growing_list[1024];
char static_list[1];

char tmp = '.';

int sz;  
char snum[5];
 char op[8];
///
// char fileName[] ; 
//char* fileName = "foo.txt";
 char* fileName[64]; // filename has 2 have bits assigned first or doesn't work
   // 
   
   char *tidLocation;
int tidIndex; 
/////////
char bintime32[32];
///////////////////

/*
void set_term_quiet_input()
{
  struct termios tc;
  tcgetattr(0, &tc);
  tc.c_lflag &= ~(ICANON | ECHO | IEXTEN); //ISIG https://viewsourcecode.org/snaptoken/kilo/02.enteringRawMode.html (9)
  // NOT DOING THIS RIGHT NOW
  // MAYBE IF THEY TEACH US COPY PASTE BUT THEY DONT...
  // WE  CAN VISIT THIS ON OUR OWN THEN.
  raw.c_iflag &= ~(IXON); // step 10]kilo
  
   raw.c_oflag &= ~(OPOST);
  tc.c_cc[VMIN] = 0;
  tc.c_cc[VTIME] = 0;
  tcsetattr(0, TCSANOW, &tc);
  
  
}
*/
/////////////
struct termios orig_termios;

// die is supposed 2 be global or something...
void disableRawMode() {
  if (tcsetattr(STDIN_FILENO, TCSAFLUSH, &orig_termios) == -1)
    die("tcsetattr");
}
void enableRawMode() {
  if (tcgetattr(STDIN_FILENO, &orig_termios) == -1) die("tcgetattr");
  atexit(disableRawMode);
  struct termios raw = orig_termios;
  raw.c_iflag &= ~(BRKINT | ICRNL | INPCK | ISTRIP | IXON);
  raw.c_oflag &= ~(OPOST);
  raw.c_cflag |= (CS8);
  raw.c_lflag &= ~(ECHO | ICANON | IEXTEN | ISIG);
  raw.c_cc[VMIN] = 0;
  raw.c_cc[VTIME] = 1;
  if (tcsetattr(STDIN_FILENO, TCSAFLUSH, &raw) == -1) die("tcsetattr");
}
// is die supposed 2 be global or something...?
void die(const char *s) {
    write(STDOUT_FILENO, "\x1b[2J", 4);
  write(STDOUT_FILENO, "\x1b[H", 3);
  perror(s);
  exit(1);
}
////////////////

void append(char* s, char c) {
        int len = strlen(s);
       // length_of = len;
        s[len] = c;
        s[len+1] = '\0';
       // tmp = c ;
}

void replace(char* s, char c) {
        int len = strlen(s);
       // length_of = len;
        s[0] = c;
        s[len+1] = '\0';
        
      //  itoa(c, snum, 10); // base 10 ? base 2 !?
        
        // sprintf(snum, "%d", c);
        //  printf("itoa : %s\n", snum);
      //   converttobinary(c, op);
       
       // tmp = c ;
}

#define CTRL_KEY(k) ((k) & 0x1f)
int main(int argc, char* argv[]){
  //strcpy(fileName,"foo.txt\0");

	  if (argv[1] != NULL){ 
	//strcpy(argv1_st, argv[1]);
	//need to append .txt HERE not in other file
	//https://www.educative.io/blog/concatenate-string-c
	
	//strcat(fileName, txt); 
	//printf("%s \n", pid_argv1);
	tidLocation = strstr(argv[1], ".pro"); 
	
	// printf("Found string at index = %ld\n", tidLocation - argv[1]);
	  if (tidLocation != NULL){  
	  
	  strcpy(fileName,argv[1]);
	  
	  // then its a file , just write 2 " DEFAULT KBD POSITION
// otherwise we will add offset 2 "DEFAULT" ez=pz;)
	  // here we should just "set default file position and set argv as filename
	  }else{ 
	 // if not , then its a "mem address WAIT ON THIS RIGHT NOW < jan23
	 // and we will use "txt.0000]
	 // if "NO ARG. will use debug0000 ;) 
	 
	// strcpy(fileName,fileName_default);
	 exit(91);
	 }
     
	 }else{
	printf("no arg (exiting program? no mem alloc'd...)using debug \n");
	
	strcpy(fileName,"foo.pro");
	 exit(91);
	//strcpy(fileName,fileName_debug);
	// theres no "..."s so it wont write, but dont touch keys just ingnore <3❣️
	// theoretically we would have 2 create mem. 
	// but i longterm may have u just "exit(91);"
	//strcpy(fileName, "argv1_st"); //demo text 🧻️📌️
	};
	


    int fd = open(fileName, O_RDWR | O_APPEND | O_CREAT, 0777);
  //O_APPEND
    
    if(fd == -1){
        printf("\nError Opening File!!\n");
        exit(1);
    }
    else{
    //    printf("\nFile %s opened sucessfully!@Q\n");
    }

  

    int bitsRead = read(fd, buffer0, sizeof(buffer0));
    
     close(fd);
     
//printf("%d bf size!\n", sizeof(buffer0));
 //   printf("%d bytes read!\n", bitsRead);
 //   printf("File Contents: %s\n", buffer0);

   ////////////////
    /////////
int flags = fcntl(fd, F_GETFL, 0);
fcntl(fd, F_SETFL, flags | O_NONBLOCK);


  struct pollfd pfd = { .fd = 0, .events = POLLIN };
//  set_term_quiet_input();
int loopState = 1; 
enableRawMode();
  while (loopState = 1) {
    if (poll(&pfd, 1, 0)>0) {
       c = getchar();
       ////////
       if (read(STDIN_FILENO, &c, 1) == -1 && errno != EAGAIN) die("read");
       /////////
   //   printf("Key pressed: %c \n", c);
      
     
//append(growing_list, tmp);
append(growing_list, c);
replace(static_list, c);
 converttobinary(c, op, sizeof(op)); 
      //   printf("binary : %s\n", op);
//printf("%s\n", growing_list);
length_of_buffer = strlen(growing_list); // want prv ln
//printf("length = %d \n", length_of_buffer);
    
 
    }
    usleep(1000); // Some work 
    
    // putc(c, file);
    // check if char array is greater than 
    // last stored length if so print 2 file 
    // if not ignore this 
   
   // putc(c, file); /// works (2 often) (doesnt' work in while loop tho even tho while loop works !?!? 
    //
 
 while(length_of_file < length_of_buffer){ 
// FILE *file = fopen("mt.txt", "w");
  length_of_file++; 
 // fputs(growing_list, file);
// putc(c, file);  ///OFF!? is looping 2 fast or something? 
 		// i think ur supposed 2 have opened another PIPE before trying 2 write 2 file? 
		//but it does print, so its weird... (i bet it would pipe 2 a cli/server? where i could write? 
		// seems rediculous tho  
//  printf("length = %d \n", length_of_file);
 //sz = write(fd, "hello geeks\n", strlen("hello geeks\n"));  
// write(fd, "hello geeks\n", strlen("hello geeks\n"));  
//THIS WRITES ^ Vnot that, so i know there is SOME WAY ! :)  
//  write(fd, growing_list, sizeof(growing_list));
//😇️🦄️

rawSeconds(bintime32);
//int stdProcTimeOffset_H = 96 ; (was 94, accidently i assume
write2Position(stdProcTimeOffset_H , buffer0, buffer1 , bintime32 , sizeof(bintime32), stdBlockSize_H);

strcpy(buffer0,buffer1);

write2Position(stdKbdInOffset_H , buffer0, buffer1 , op , 8, stdBlockSize_H);
//printf("buffer1= %s \n",buffer1);
 fd = open(fileName, O_RDWR | O_TRUNC , 0777); //if i dont TRUNC appends


write(fd, buffer1 ,stdBlockSize_H); //
close(fd); 


// this is cute , and "ON" but it want scancodes in binary
//write(fd, tmp, sizeof(tmp));
  };
// update the lengthVAR here , or it will loop 
//forever 
      
  }

    return 0;
  

}
