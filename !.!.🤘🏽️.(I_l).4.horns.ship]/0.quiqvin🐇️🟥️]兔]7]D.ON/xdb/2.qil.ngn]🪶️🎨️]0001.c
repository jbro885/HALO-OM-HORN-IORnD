//🖨️
//do we really need this!?!? (its a metaphor
// if u wanna pull it from a socket next it would be a diff pro
//finish this first pls
//🖨️

#include <stdio.h> 
#include <stdlib.h> 
#include <pthread.h>

 #include <time.h>
#include <stdlib.h>
#include <fcntl.h>
#include <string.h>

#include <unistd.h>

extern int stdTidBitSize_H ; 
extern int stdBlockSize_H  ;
extern int stdBufferSize_H ; 
extern int stdKbdInOffset_H ; 
//extern char buffer0_H[409600000];  // u dont wanna clobber the buffer thats ignorant
//extern char buffer_H[409600000];  

char* fileName = "tid]????.pro";
//char buffer[409600000];
char buffer[409600000];
char buffer2[409600000]; 
char buffer3[409600000];
char buffer4[409600000]; 
//char buffer2[409600000]; 
char tidStripped[32];


 char txt[4] = ".pro"; 
 char *tidLocation;
int tidIndex; 



int msCount = 1 ; 
int msCountNew = 0 ;



 

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
////////////////
void editorDrawRows() {
  int y;
  for (y = 0; y < 24; y++) {
    write(STDOUT_FILENO, "~\r\n", 3);
  }
}

/////22 https://viewsourcecode.org/snaptoken/kilo/03.rawInputAndOutput.html
void editorRefreshScreen() {
  write(STDOUT_FILENO, "\x1b[2J", 4);
    write(STDOUT_FILENO, "\x1b[H", 3);
    
     editorDrawRows();
  write(STDOUT_FILENO, "\x1b[H", 3);
}
///die ? skipped 
// will let us clear screen on exit...
void die(const char *s) {
  write(STDOUT_FILENO, "\x1b[2J", 4);
  write(STDOUT_FILENO, "\x1b[H", 3);
  perror(s);
  exit(1);
}

//////25

int parseKey(int keyBoardValue){

 switch (keyBoardValue) {
    case 17 :
     printf("keyBoardValue = %d",keyBoardValue);
      write(STDOUT_FILENO, "\x1b[2J", 4);
      write(STDOUT_FILENO, "\x1b[H", 3);
   //https://www.physics.udel.edu/~watson/scen103/ascii.html  
      exit(0);
      break;
       case 48 :
       printf("keyBoardValue = %d",keyBoardValue);
      break;
      case '1' :
       printf("keyBoardValue = %d",keyBoardValue);
      break;
       case '3' :
       printf("keyBoardValue = %d",keyBoardValue);
       die("read");
      break;
       case '17' :
       printf("keyBoardValue = %d",keyBoardValue);
       die("read");
    //  break;
 
  }
  
  //
}

///



int main(int argc, char* argv[]){





    if (argv[1] != NULL){ 
	 
	printf("passed arg !%s \n", argv[1]);
	strcpy(tidStripped, argv[1]);

	tidLocation = strstr(argv[1], ".pro");
	         // search for string
 if (tidLocation != NULL){       
 // may not exist!
 
 printf(".pro = %s + %s \n",tidLocation,argv[1]);
 
 
 tidIndex = tidLocation - argv[1] ;
 
 printf("tidloc = %d \n" , tidIndex);
 
 tidStripped[tidIndex] = '\0';
 // removeSubstr(tidStripped, ".txt");
  printf("tidStripped= %s \n",tidStripped);



//



 int binFlipInt = 0 ; 
  char binQuartzFlip8[8]; 
////
 while(1 ){
 
 int fd = open(argv[1], O_RDWR | O_APPEND | O_CREAT, 0777);
int bitsRead = read(fd, buffer, sizeof(buffer));
close(fd); 

//printf("fd closed +1 \n");
  
  //wana new 1 that uses only 1 buffer not right now tho
  // and if u do , save old till 'monolith'
  readFrom_Position(stdKbdInOffset_H, buffer ,binQuartzFlip8, sizeof(binQuartzFlip8));
 
//💎️u shouldnt need 2 run quarts but it will print same <3    
 editorRefreshScreen(); //🏔️
//printf("kbd⌨️= %s \n ",binQuartzFlip8);
   
   int keyBoardValue = bin2dec(binQuartzFlip8);
   //🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️
   parseKey(keyBoardValue);
  
      //🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️🏔️
   //📬️📬️📬️📬️📬️📬️📬️📬️📬️📬️📬️📬️
   // u can now write 2 "2nd argv mem if u like
   // or u can wait till "SAVE STATE
   //or u can use argv mem "as u should" as "IN MEM"
// and "SAVE" as a final "ascii print 4 user ;) 
   
  //📬️📬️📬️📬️📬️📬️📬️📬️📬️📬️📬️📬️
   // converttobinary(msCountNew, binQuartzFlip8, sizeof(binQuartzFlip8));
    
   // printf("🕛️bin= %s \n ",binQuartzFlip8);

// do we really need 2buffers? , cant we return buffer?
//printf("buffer2before-writee :%s\n",buffer2);
//write2Position(0 , buffer, buffer2 , binQuartzFlip8 , 8, stdBlockSize_H);

 //printf("buffer2AFTER-writee :%s\n",buffer2);

// fd = open(argv[1], O_RDWR | O_TRUNC | O_CREAT, 0777); //if i dont
 
 ///💡️
//no more writing 2 file, this isn't kilo
// kilo will write 2 file THEN std out
//write(STDOUT_FILENO, buffer2 , stdBlockSize_H); //
//close(fd); 

   ///
  // msCountNew++;
   msSleep(4444);
  // msSleep(4444);
   }

////////


 }else{
 //💣️
 // we just leave this for now, it will sort out 
 // when u get 2 it, why preoptimize (we have; it got tossed cuz bugs that have nothing 2 do with fx...
  //💣️
 printf("no .txt = use fs.txt \n");
 
 
 }
 
	 }else{
	printf("no arg \n");
	//strcpy(fileName, "txtfs[0000].txt"); //demo text 🧻️📌️
	};




  
 // free(buffer);
 // free(buffer2);
    return 0; 
} 
