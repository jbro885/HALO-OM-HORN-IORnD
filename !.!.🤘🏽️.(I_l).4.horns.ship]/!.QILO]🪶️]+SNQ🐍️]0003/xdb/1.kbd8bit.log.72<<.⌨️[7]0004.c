
//https://www.geeksforgeeks.org/input-output-system-calls-c-create-open-close-read-write/

//+ wut is fd =  kernel lvl (asm ;) <3
//👩🏻‍🔧️ = hanni pam🐰️

//https://www.codequoi.com/en/handling-a-file-by-its-descriptor-in-c/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <sys/poll.h>
#include <termios.h>

#include <fcntl.h>  

///////////
#include <time.h>   /* Needed for struct timespec */

int msCount = 1 ; 
int msCountNew = 0 ; 
////----------------------
int blockSize = 4096; 
int byteSize = 8 ;
char emptyByte[] = "........";
char fuzzByte[] = "abcdEFGH";
///--------------
int c ;
int length_of_buffer = 0; 
int length_of_file = 0 ; 

char growing_list[1024];
char static_list[1];

char tmp = '.';

int sz;  
char snum[5];
 char op[8];
 int count = 0;
 int fd ; 
  char* fileName = "txtfs[0000].txt";
  /////
  int miniBufferLength = 56 ;
   char miniBuffer[56];
   int miniBufferOffset = 8;
  ////
  char buffer[72]; 
 
  int bitsRead ; 
  int circularBufferCounter = 0;
  
  
  
  int keysPressedDec = 0;
  
   char txt[4] = ".txt"; 
  
 //--------------------------------- 

int msSleep(long miliseconds)
{
   struct timespec rem;
   struct timespec req= {
       (int)(miliseconds / 1000),     /* secs (Must be Non-Negative) */ 
       (miliseconds % 1000) * 1000000 /* nano (Must be in range of 0 to 999999999) */ 
   };
msCount++ ;
   return nanosleep(&req , &rem);
}

//////////////

void set_term_quiet_input()
{
  struct termios tc;
  tcgetattr(0, &tc);
  tc.c_lflag &= ~(ICANON | ECHO);
  tc.c_cc[VMIN] = 0;
  tc.c_cc[VTIME] = 0;
  tcsetattr(0, TCSANOW, &tc);
}





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
      // converttobinary2(c, op);
      
      converttobinary(c, op, sizeof(op));
     
     ///////////////////0000000000000000
       
       
       circularBufferKbd(); 
       bufferReplacer();
    //   circularDebug();
         ///////oooooooooooooooooooooo
         printf("binary : %s\n", op);
       // tmp = c ;
}
///////
int bufferCutter(){
/// we cut off "front and back of kbd mem" from buffer , then we dont "NEED"
// 2 "add offsets in "circularBufferKbd()", and we can use "SHIFTING"
int copyCount = 0; 

while(copyCount < miniBufferLength){
miniBuffer[copyCount] = buffer[miniBufferOffset + copyCount];
copyCount++;
}

//copyCount = 0 ; 
printf("minibuffer cut %s\n", miniBuffer);
//exit(91); 
}
//-----------------

int bufferReplacer(){
// u need 2 put the "mini buffeR" back in "FD buffer" when ur done with it ! 

int copyIn = 0 ; 

while(copyIn < miniBufferLength){
buffer[miniBufferOffset + copyIn] = miniBuffer[copyIn] ;
//printf("in copyIn");
copyIn++;
}
printf("buffer replaced %s\n", buffer);
//exit(92);

}
/////////

int circularBufferKbd(){

//char testA = 'abcdefgh';

printf("circularBufferKbd \n");
int byteAddCount = 0 ; 
int byteAddCount2 = 0 ; 
//int inodeOffset = 8 ; 
int memBlockLimit = 56;



if(circularBufferCounter  < memBlockLimit ){
//printf("greater thann \n");
//printf("%d bits read!\n", bitsRead );
while(byteAddCount < byteSize){
//printf("greater byteCnt 🐟️ \n");
//printf(" byte count %d\n", byteAddCount );
//printf("circ buff count!: %d \n", circularBufferCounter );
miniBuffer[ circularBufferCounter ] =  op[byteAddCount];
byteAddCount++;
circularBufferCounter++;
}

}else{
printf("length circularBufferCounter = %d \n", circularBufferCounter);
printf(" byteaddcount = %d \n", byteAddCount);


// HAVEN"T CHECKED THIS YET
printf("not greater thann 🎣️ \n");
while(byteAddCount < byteSize){
memmove(&miniBuffer[0], &miniBuffer[1], sizeof(miniBuffer) - sizeof(*miniBuffer));

//miniBuffer[memBlockLimit - 8 +  byteAddCount ] = fuzzByte[byteAddCount]; //48 + byteAddCount ; //op[byteAddCount];
//printf("op[byteAddCount] : %d\n", op[byteAddCount] );

byteAddCount++;
circularBufferCounter++;

}

while(byteAddCount2 < byteSize){
miniBuffer[memBlockLimit - 8 +  byteAddCount2 ] = op[byteAddCount2];//fuzzByte[byteAddCount2];
// could also probalby just turn this into "#(atoi)" and "<< 2 "strtol'
byteAddCount2++;
}

// shift buffer 8 or we bits 2 left "byteSize"
}

printf("minibuff Contents: %s\n",miniBuffer);
//printf("CircBuff Contents: %s\n", buffer);
}




int circularDebug(){
// HAVEN"T CHECKED THIS YET
int byteAddCount = 0 ; 
printf("not greater thann \n");
printf("%d bits read!\n", bitsRead );
while(byteAddCount < byteSize){
//memmove(&buffer[0], &buffer[1], sizeof(buffer) - sizeof(*buffer));
//buffer[ bitsRead - byteSize + byteAddCount] = op[byteAddCount];
//int opChar = op - 48;
//buffer[8 + circularBufferCounter - 8 ] = op[byteAddCount];
// somthing here isn't right , i need u 2 convert "BIN 2 ascii" 
//buffer[8 + byteAddCount  ] = op[byteAddCount];
buffer[64 - 8 + byteAddCount  ] = op[byteAddCount];
printf("op[byteAddCount] : %d\n", op[byteAddCount] );
byteAddCount++;
}

// shift buffer 8 or we bits 2 left "byteSize"
printf("CircBuff Contents: %s\n", buffer);
// else case was acting weird . 

}

/////⭐️⭐️⭐️⭐️

char *tidLocation;
int tidIndex; 
char argv1_st[];

int main(int argc, char* argv[]){ 


  if (argv[1] != NULL){ 
	strcpy(argv1_st, argv[1]);
	//need to append .txt HERE not in other file
	//https://www.educative.io/blog/concatenate-string-c
	
	//strcat(fileName, txt); 
	//printf("%s \n", pid_argv1);
	tidLocation = strstr(argv[1], ".txt"); 
	
	 printf("Found string at index = %ld\n", tidLocation - argv[1]);
     
	 }else{
	printf("no arg (exiting program?) \n");
	// theoretically we would have 2 create mem. 
	// but i longterm may have u just "exit(91);"
	//strcpy(fileName, "argv1_st"); //demo text 🧻️📌️
	};
	
	

/*
   if (argv[2] != NULL){ 
	//strcpy(pid_argv2, argv[2]);
	//need to append .txt HERE not in other file
	//https://www.educative.io/blog/concatenate-string-c
	
	//strcat(fileName, txt); 
	printf("string contents %s \n", pid_argv2);
	 }else{
	printf("no arg2 \n");
	//strcpy(fileName, "txtfs[0000].txt"); //demo text 🧻️📌️
	};
	
	printf("string argv %s \n", strArgv2);
*/



          // search for string
/*

 if (tidLocation != NULL)          // may not exist!
 {
     printf("Found string at index = %ld\n", tidLocation - buffer);
     
     tidIndex = tidLocation - buffer ;
     tidIndex = tidIndex + 16; //offset <3 
     printf("tidIndex = %d\n", tidIndex );
     
   //  lseek(fd, tidIndex, SEEK_SET); // set fd 2 start at "TID"
 }                                 
 else
 {
     printf("String not found\n");  // `strstr` returns NULL if search string not found
 }
 */
 
 exit(91);
 

 
int flags = fcntl(fd, F_GETFL, 0);
fcntl(fd, F_SETFL, flags | O_NONBLOCK);


  struct pollfd pfd = { .fd = 0, .events = POLLIN };
  set_term_quiet_input();
  while (1) {
    if (poll(&pfd, 1, 0)>0) {
       c = getchar();
      printf("Key pressed: %c \n", c);
      
     ///🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️
 fd = open(fileName, O_RDONLY, 0777);

      bitsRead = read(fd, buffer, sizeof(buffer));

       printf("%d bits read!\n", bitsRead ); // if bytes read is less than "2 blockS" WRITE THEM NOW
    printf("File Contents: %s\n", buffer);
     close(fd);
     
     bufferCutter();
     ///🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️🧬️
//append(growing_list, tmp);
append(growing_list, c);
replace(static_list, c);

printf("%s\n", growing_list);
length_of_buffer = strlen(growing_list); // want prv ln
printf("length = %d \n", length_of_buffer);
    

     // if (c=='q') break;
   //  https://stackoverflow.com/questions/26783701/how-to-use-escape-key-to-end-a-loop-in-c
   
   if (c== 27){
   
   printf("escaping manually 27=esc]on \n");
    break;}
    }
    
    keysPressedDec++; ///////////////////
    
    /* int writeToSpecificMemoryLocation(){
    //this can actually go in header, it will take buffer and data
    // and write 2 wherever u tell it 2 rite. 
    // can use this 4 clock and kbd
    // use multiple blocks then we can feel out benchmarks
    }
    */

   msSleep(44); // i ran 3 of these 4 like an hour , super 
 while(length_of_file < length_of_buffer){ 
// FILE *file = fopen("mt.txt", "w");

//📌️📌️📌️📌️📌️📌️📌️
//write(fd, op , sizeof(op));
//buffer[8 + length_of_file ] = op;
 fd = open(fileName, O_RDWR | O_TRUNC | O_CREAT, 0777); //if i dont TRUNC appends
write(fd, buffer ,bitsRead); //
close(fd); 
//📌️📌️📌️📌️📌️📌️📌️📌️
// this is cute , and "ON" but it want scancodes in binary
//write(fd, tmp, sizeof(tmp));
 length_of_file++; 

  printf("length = %d \n", length_of_file);
  };
// update the lengthVAR here , or it will loop 
//forever 
      
  }
  
  
}




