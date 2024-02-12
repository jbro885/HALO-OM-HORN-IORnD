
//https://www.geeksforgeeks.org/pthread_self-c-example/

#include <stdio.h> 
#include <stdlib.h> 
#include <pthread.h>

 #include <time.h>
#include <stdlib.h>
#include <fcntl.h>
#include <string.h>

extern int stdTidBitSize_H ; 
extern int stdBlockSize_H  ;
extern int stdBufferSize_H ; 
//extern char buffer0_H[409600000];  // u dont wanna clobber the buffer thats ignorant
//extern char buffer_H[409600000];  

char* fileName = "tid]????.pro";
//char buffer[409600000];
char *buffer ; 
char *buffer2 ; 
//char buffer2[409600000]; 
char tidStripped[32];


 char txt[4] = ".pro"; 
 char *tidLocation;
int tidIndex; 

int main(int argc, char* argv[]){

buffer = malloc(stdBufferSize_H);
buffer2 = malloc(stdBufferSize_H);

//int stdTidBitSize_H = return_stdTidBitSize_H() ; 
//int stdBlockSize_H = return_stdBlockSize_H() ; 

    if (argv[1] != NULL){ 
	 
	printf("passed arg !%s \n", argv[1]);
	strcpy(tidStripped, argv[1]);
	// ask if contains ".txt"
	// if not it goes in "FS"
	//seek "FS" at "header" for "tid" 
	// put it there if doesn't exist...
	// when is fs created? 
	// JUST USE .txt's for now <ez'st
	//🧐️🧐️🧐️🧐️🧐️🧐️🧐️🧐️🧐️🧐️🧐️🧐️
	
	//tidLocation = strstr(argv[1], ".txt");
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
 //its supposed 2 be a '#.txt' *> gonna remove .txt substring 4 storage.
 //🕯️🔍️{following is THE WAY]NOS <SUPERQLU<3 🔍️
 //🕯️ur gonna need 2 search "TID" at 'certain location '(4.fs) cuz i just
 //🕯️created a tid of "0000" lol ;) 
 ///🕯️ tids are supposed 2 be "passed in decimal!" so need converting!
 //🕯️ were gonna assume tids.txt are already binary ;) <3 (created in order)
 //🔍️
 //int fd = open(argv[1], O_RDWR | O_APPEND | O_CREAT, 0777);	
//close(fd);

//🍍️ jan22
//throw tidStripped as a 32 bit or w/e onto tidStripped.txt
// then move on 2 next (kbd writing ) | FS.txt

//changeBitCount(strArgv1,strArgv2, 32);
//🏮️ w/e # it should be a "constant in ".h"🏮️ 

int fd = open(argv[1], O_RDWR | O_APPEND | O_CREAT, 0777);
int bitsRead = read(fd, buffer, sizeof(buffer));
//close(fd); 

printf("fd closed \n");
//


createMtSpace(0, stdBlockSize_H,buffer);



char tid_Padded[64]; 
//❤️‍🩹️
changeBitCount(tidStripped,tid_Padded, stdTidBitSize_H,tidIndex );
// this doesn't work right because "sizeof('tidStripped'
//pass a desired size 2 fix it 
//changeBitCount(tidStripped,tid_Padded, 4);
//changeBitCount(tidStripped,tid_Padded, 32);
printf("tid_Padded Contents: %s\n", tid_Padded);
//❤️‍🩹️
//❣️already having problem with "bits read being fake
//❣️get it the "eff out of there asap <3) 
write2Position(0 , buffer, buffer2 , tid_Padded , stdTidBitSize_H, stdBlockSize_H);
//write2Position(0 , buffer, buffer2 , tid_Padded , 32, 4096);
// txt is still on "tidStripped"
//printf("bffer2 Contents: %s\n", buffer2);
char bintime32[32];
rawSeconds(bintime32);
strcpy(buffer,buffer2);
// do we really need 2buffers? , cant we return buffer?

write2Position(stdTidBitSize_H , buffer, buffer2 , bintime32 , stdTidBitSize_H);

 fd = open(argv[1], O_RDWR | O_TRUNC | O_CREAT, 0777); //if i dont

write(fd, buffer2 , stdBlockSize_H); //
close(fd); 

//🍥️ if anything i would have "cr. be create fs or "tid.txt"
//🍥️ and give the "fs a unique "fs id" that woulda been tid.txt
//🍥️in which case this may run "BEFORE as "cr.<augmented"
////🍥️and pass directly 2 kbd which will write 
///🍥️depending on "file type"
///🍥️no w8 kbd is getting passed a "tid" it will assoc 2 r/rw
//🍍️
 }else{
 printf("no .txt = use fs.txt \n");
 
 
 }
 
 
	
	//int fd = open(fileName, O_RDWR | O_APPEND | O_CREAT, 0777);

// u have 2 decide if u wanna make "blank file here or in "cr"

	
	 }else{
	printf("no arg \n");
	//strcpy(fileName, "txtfs[0000].txt"); //demo text 🧻️📌️
	};

/*
  if (argv[1] != NULL){ 
	strcpy(fileName, argv[1]);
	//need to append .txt HERE not in other file
	//https://www.educative.io/blog/concatenate-string-c
	
	strcat(fileName, txt); 
	//printf("%s \n", pid_argv1);
	//////👣️👣️👣️👣️👣️👣️👣️
	tidLocation = strstr(argv[1]), ".txt");
	         // search for string
 if (tidLocation != NULL)          // may not exist!
 {
     printf("Found string at index = %ld\n", tidLocation - buffer);
     
     tidIndex = tidLocation - buffer ;
     tidIndex = tidIndex + 16; //offset <3 
     printf("tidIndex = %d\n", tidIndex );
     
     //lseek(fd, tidIndex, SEEK_SET); // set fd 2 start at "TID"
 }                                 
 else
 {
     printf("String not found\n");  // `strstr` returns NULL if search string not found
 }
	///👣️👣️👣️👣️👣️👣️👣️👣️
	 }else{
	printf("no arg \n");
	strcpy(fileName, "txtfs[0000].txt"); //demo text 🧻️📌️
	};
  
  */
//  tidLocation = strstr(buffer, ".txt");
  
  // either write 2 fs , or write 2 file if it doesnt exist
  // honestly this should be done when 
  //mt.mem block is written , and this may even go in header.h
  
 //🎲️

srand(time(NULL));   // Initialization, should only be called once.(SEEDER)
//int r = (rand() % (0 - 100 + 1)) + 0  ;      // Returns a pseudo-random integer between 0 and RAND_MAX.
//  (upper - lower + 1)) + lower; 
int r =  rand() % (65 - 20 + 1) + 20 ;

printf("ran = %d  \n",r );

//int fd = open(fileName, O_RDWR | O_APPEND | O_CREAT, 0777);
//int fd = open("tid]!.txt", O_RDWR | O_APPEND | O_CREAT, 0777);

//int bitsRead = read(fd, buffer, sizeof(buffer));

//write(fd, " " ,1);
//close(fd); 
  
  free(buffer);
  free(buffer2);
    return 0; 
} 
