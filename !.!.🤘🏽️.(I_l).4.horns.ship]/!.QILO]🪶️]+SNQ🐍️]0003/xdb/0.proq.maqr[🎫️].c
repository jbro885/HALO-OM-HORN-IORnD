
//https://www.geeksforgeeks.org/pthread_self-c-example/

#include <stdio.h> 
#include <stdlib.h> 
#include <pthread.h>

 #include <time.h>
#include <stdlib.h>
#include <fcntl.h>
char* fileName = "tid]????.txt";
  char buffer[409600000]; 
char buffer2[409600000]; 


 char txt[4] = ".txt"; 
 char *tidLocation;
int tidIndex; 

int main(int argc, char* argv[]){ 

    if (argv[1] != NULL){ 
	 
	printf("passed arg !%s \n", argv[1]);
	
	// ask if contains ".txt"
	// if not it goes in "FS"
	//seek "FS" at "header" for "tid" 
	// put it there if doesn't exist...
	// when is fs created? 
	
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

int fd = open(fileName, O_RDWR | O_APPEND | O_CREAT, 0777);
//int fd = open("tid]!.txt", O_RDWR | O_APPEND | O_CREAT, 0777);

//int bitsRead = read(fd, buffer, sizeof(buffer));

//write(fd, " " ,1);
close(fd); 
  
    return 0; 
} 
