
//https://www.geeksforgeeks.org/pthread_self-c-example/

#include <stdio.h> 
#include <stdlib.h> 
#include <pthread.h> 

char p1id[50];
char p2id[50];
char t1id[50];
char t2id[50];

void* calls(void* ptr) 
{ 

snprintf(p2id,50, "%d", pthread_self());

snprintf(t2id,50, "%d", gettid());
// probably need 2 truncate this .
//strcpy( p2id, );
    // using pthread_self() get current thread id 
  //  printf("In function \nthread id = %d\n", pthread_self()); 
  printf("In function \nthread id = %s\n", p2id); 
  
    printf("In function \nthread tid = %s\n", t2id); 
  //while(1){}
    pthread_exit(NULL); 
    return NULL; 
} 
  
int main() 
{ 
    pthread_t thread; // declare thread 
    pthread_create(&thread, NULL, calls, NULL); 
   // printf("In main \nthread id = %d\n", thread);  
    pthread_join(thread, NULL);  
    
    snprintf(p1id,50, "%d", getpid());
    printf("In main \nthread id = %s\n", p1id);  
    ///////////
       pthread_t thread2; // declare thread 
    pthread_create(&thread2, NULL, calls, NULL); 
     pthread_join(thread2, NULL); 
    return 0; 
} 
