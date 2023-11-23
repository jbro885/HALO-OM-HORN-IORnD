//http://www.csc.villanova.edu/~mdamian/threads/posixthreads.html
//http://www.csc.villanova.edu/~mdamian/threads/hello.txt

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

void * PrintHello(void * data)
{
    int my_data = (int)data;  
    

    printf("\n Hello from new thread - got %d !\n", my_data);
    
    
char command1[50];

   strcpy( command1, "./1.count-down" );
     system(command1);
printf("finished pcommand");
    
    pthread_exit(NULL);
}

int main()
{
    int rc;
    pthread_t thread_id;

    int t = 11;

    rc = pthread_create(&thread_id, NULL, PrintHello, (void*)t);
    if(rc)
    {
      printf("\n ERROR: return code from pthread_create is %d \n", rc);
      exit(1);
    }
    printf("\n Created new thread (%u)... \n", thread_id);
    
char command[50];

   strcpy( command, "./1.count.2.3" );
     system(command);
printf("finished command");
    pthread_exit(NULL);
}

