//🪄️
// WHAT ACTUALLY IS THIS? 
// it represents "SCREEN AND GAME"
//point being u may have enuff information at this point
// to do w/e it is ur trying 2 do w/o "practice"
// meaning u may want 2 add "kbdlogger" 2 cli now
//😇️😇️😇️😇️😇️😇️😇️😇️😇️😇️😇️
// dont i want "FD/PID/tid"'s in "BINARY"? OFC i do 
// but just sit tight, we will get there <3 , no rush

//👨🏾‍🚀️seems the answer is "gettid()" btw 
// pid is somehow the same for all pthreads tid is diff.
// if u want u can name the files ur own "TID" tho 
//* 2.check-dir-inc-xid]🛒️]0000
//😇️😇️😇️😇️😇️😇️😇️😇️😇️😇️😇️

//🚫️🍴️🚫️ (its pthread)ur good

//http://www.csc.villanova.edu/~mdamian/threads/posixthreads.html
//http://www.csc.villanova.edu/~mdamian/threads/hello.txt

//✳️✳️✳️✳️✳️✳️✳️✳️✳️✳️✳️✳️
//🥇️
//*(so first u may want menu 2 "NEVER USE EXEC" , and be polling keybd or w/e 
//u need 2 do 
//[which they are scared off cuz we didn't do first try but is important ///NOW!] / sober up and do work. 
//🥇️
//✳️✳️✳️✳️✳️✳️✳️✳️✳️✳️✳️✳️


//dec3 - when u strcat " arg.txt"  make sure its " ">""./

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

void * PrintHello(void * data)
{
    int my_data = (int)data;  
    

    printf("\n Hello from new thread - got %d !\n", my_data);
    
    
char command1[50];

  // strcpy( command1, "./1.write.down.fd+arg]🦄️" );
   //  system(command1);
   //  system("./^.fd28bit-log+cliop🪄️⌨️])
   system("./1.write-up-fd+arg]🦄️" );
printf("finished pcommand");
    
    pthread_exit(NULL);
}

void * PrintBye(void * data)
{
    int my_data = (int)data;  
    

    printf("\n Hello from new thread - got %d !\n", my_data);
    
    
//char command1[50];

  // strcpy( command1, "./1.write.down.fd+arg]🦄️" );
   //  system(command1);
   //  system("./^.fd28bit-log+cliop🪄️⌨️])
   //system("./1.write-up-fd+arg]🦄️" );
   system("./1.write.down.fd+arg]🦄️");
printf("finished pcommand");
    
    pthread_exit(NULL);
}

int main()
{
    int rc;
    pthread_t thread_id;
    
     int rc2;
    pthread_t thread_id2;

    int t = 11;

    rc = pthread_create(&thread_id, NULL, PrintHello, (void*)t);
    if(rc)
    {
      printf("\n ERROR: return code from pthread_create is %d \n", rc);
      exit(1);
    }
    printf("\n Created new thread (%u)... \n", thread_id);
    
    
     rc2 = pthread_create(&thread_id2, NULL, PrintBye, (void*)t);
    if(rc)
    {
      printf("\n ERROR: return code from pthread_create is %d \n", rc);
      exit(1);
    }
    printf("\n Created new thread (%u)... \n", thread_id);
    
    
    
    
    
char command[50];

  // strcpy( command, "./1.write-up-fd+arg]🦄️" );
 // strcpy( command,  thread_id);
 ///    system(command);
// system("./^.fd28bit-log+cliop🪄️⌨️])
//system("./1.write.down.fd+arg]🦄️");
printf("finished command");
    pthread_exit(NULL);
}

