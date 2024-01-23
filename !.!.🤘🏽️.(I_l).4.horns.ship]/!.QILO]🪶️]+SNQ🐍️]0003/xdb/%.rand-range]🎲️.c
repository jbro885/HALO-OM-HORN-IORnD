
//https://www.geeksforgeeks.org/pthread_self-c-example/

#include <stdio.h> 
#include <stdlib.h> 
#include <pthread.h> 

 #include <time.h>
#include <stdlib.h>


  
int main(int argc, char* argv[]){ 
  
  
  // either write 2 fs , or write 2 file if it doesnt exist
  // honestly this should be done when 
  //mt.mem block is written , and this may even go in header.h
  
 

srand(time(NULL));   // Initialization, should only be called once.(SEEDER)
//int r = (rand() % (0 - 100 + 1)) + 0  ;      // Returns a pseudo-random integer between 0 and RAND_MAX.
//  (upper - lower + 1)) + lower; 
int r =  rand() % (65 - 20 + 1) + 20 ;

printf("ran = %d  \n",r );

  
    return 0; 
} 
