
//https://www.geeksforgeeks.org/pthread_self-c-example/

#include <stdio.h> 
#include <stdlib.h> 
#include <pthread.h>

 #include <time.h>
#include <stdlib.h>
#include <fcntl.h>
#include <string.h>

char* fileName = "tid]????.txt";
  char buffer[409600000]; 
char buffer2[409600000]; 
char tidStripped[8];


 char txt[4] = ".txt"; 
 char *tidLocation;
int tidIndex; 

int main(int argc, char* argv[]){ 

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
	//tidLocation = strstr(buffer2, ".txt");
	tidLocation = strstr(argv[1], ".txt");
	         // search for string
 if (tidLocation != NULL){       
 // may not exist!
 
 printf(".txt = %s + %s \n",tidLocation,argv[1]);
 
 
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
int fd = open(argv[1], O_RDWR | O_APPEND | O_CREAT, 0777);
int bitsRead = read(fd, buffer, sizeof(buffer));



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
  
    return 0; 
} 
