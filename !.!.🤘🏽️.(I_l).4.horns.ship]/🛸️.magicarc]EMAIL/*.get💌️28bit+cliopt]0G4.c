
// this is as good as it gets m8 . 
// it can be in p threads or not doesnt matter
// but u cant scan f , u gonna need 2 parse between "1010"'s
// fine . good. (it even runs sub-processes so it should be ok)
// theres no block mem problesm so thats good

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

#include <dirent.h>

void set_term_quiet_input()
{
  struct termios tc;
  tcgetattr(0, &tc);
  tc.c_lflag &= ~(ICANON | ECHO);
  tc.c_cc[VMIN] = 0;
  tc.c_cc[VTIME] = 0;
  tcsetattr(0, TCSANOW, &tc);
}

int c ;
int length_of_buffer = 0; 
int length_of_file = 0 ; 

char growing_list[1024];
char dynamic_list[32];
char static_list[1];

char tmp = '.';

int sz;  
char snum[5];
 char op[8];
 
 int pol_position ;  // distance since last '1010'

   // 
   
 void converttobinary(int n, char op[8]){
    int auxiliar = n;
    int i;

    for (i = 0; i < 8; i++) {
        auxiliar = auxiliar >> i;
        if (auxiliar & 1 == 1){
            op[7-i] = '1';
        } else{
            op[7-i] = '0';
        }
        auxiliar = n;
    }

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
         converttobinary(c, op);
         
         printf("binary : %s\n", op);
       // tmp = c ;
}

///////////////
 char pre_string0[10];
 char command1[50];
 ///////////////

char name[256][256];

char my_fscan[8];
int my_atoi;

 int input;

    /*Displays the menu to user*/

     DIR           *d;
  struct dirent *dir;
  int count = 0;
  
   int writeDir(){
  while ((dir = readdir(d)) != NULL)
    {
      printf("[%d] %s\n",count, dir->d_name);
      strcpy(name[count],dir->d_name);
      count++;
    }

    closedir(d);
     printf("command: ");
      int myNum;
   //  scanf("%d", &myNum);
   
  // while(1){
   

 // }
     
  //   printf("mynum %d",myNum);
  
  // scan f breaks bit logger
  // also it being in threads seems meaningless...
   //  }
      
//system("./^.scn28bit-logger👼️👩🏻‍🔧️🐰️]D0002");
   
  }
  
  

///////////////

int logger(){

int fd = open("k-log.txt", O_WRONLY | O_CREAT | O_APPEND, 0644);  

int flags = fcntl(fd, F_GETFL, 0);
fcntl(fd, F_SETFL, flags | O_NONBLOCK);


  struct pollfd pfd = { .fd = 0, .events = POLLIN };
  set_term_quiet_input();
  while (1) {
    if (poll(&pfd, 1, 0)>0) {
       c = getchar();
     // printf("Key pressed: %c \n", c);
      
     
//append(growing_list, tmp);
append(growing_list, c);
append(dynamic_list, c);
replace(static_list, c);
//printf("%s\n", growing_list);
length_of_buffer = strlen(growing_list); // want prv ln
//printf("length = %d \n", length_of_buffer);

   

      if (c=='q'){ break;}
     
    }
  
 while(length_of_file < length_of_buffer){ 
// FILE *file = fopen("mt.txt", "w");
  length_of_file++; 

//😇️🦄️
//write(fd, static_list , sizeof(static_list));
write(fd, op , sizeof(op));
 printf("growing_list %s\n", growing_list);
 printf("Key pressed-: %c \n", c);
 

 printf("dynamic_list %s\n", dynamic_list);
 
 char b2s[50];
 strcpy( b2s, op);
 

 
  printf("b2s%s\n", b2s);
 
 //put op in string first
 // also u have 2 use strcmp.
   int result;
 result = strcmp(b2s, "00001010");
 printf("strcmp(str1, str2) = %d\n", result);
 if (result==0){
  printf("b=enter\n");
  
  strcpy(my_fscan ,dynamic_list);
  my_atoi = atoi(my_fscan); 
   printf("my_atoi = %d\n", my_atoi);
   
    memset(dynamic_list, 0, 32); // ON
     printf("cleared dynamic_list %s\n", dynamic_list);
     

    if(my_atoi != 0){
     int i;



 strcpy(pre_string0, "./"); // ./xxe or w/e 

 strcpy( command1, name[my_atoi] );
 
  strcat(pre_string0, command1);
  printf("prestring %s\n", pre_string0);
  
  
  // is system() blocking? pls google. 
   //    system("./1.write.down.fd+arg]🦄️");
 //system(pre_string0);
 

 //pthread_t thread2; // declare thread 
   /// pthread_create(&thread2, NULL, pt_0, NULL); 
     //pthread_join(thread2, NULL); 
     my_atoi = 0 ;
     test_fx();
}
 }
 

// this is cute , and "ON" but it want scancodes in binary
//write(fd, tmp, sizeof(tmp));
  };
// update the lengthVAR here , or it will loop 
//forever 
      
  }
  close(fd);
  }
  
  
  int pt_0(){
  system(pre_string0);
  }
  ///////==============
    void * PrintHello(void * data)
{
    int my_data = (int)data;  
    

    printf("\n Hello from new thread - got %d !\n", my_data);
    
    
char command1[50];

  // strcpy( command1, "./1.write.down.fd+arg]🦄️" );
   //  system(command1);
   //  system("./^.fd28bit-log+cliop🪄️⌨️])
 //  system("./1.write-up-fd+arg]🦄️" );
   system(pre_string0);
printf("finished pcommand");
    
    pthread_exit(NULL);
}
  /////////////-----------------------
  int test_fx(){
  
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

  // strcpy( command, "./1.write-up-fd+arg]🦄️" );
 // strcpy( command,  thread_id);
 ///    system(command);
// system("./^.fd28bit-log+cliop🪄️⌨️])
//system("./1.write.down.fd+arg]🦄️");
system("./4.get💌️28bit+cliopt]0G4");
//writeDir();
//system(pre_string0);
printf("finished command");
    pthread_exit(NULL);
  }
  ////////---------------

  /////////////----------
int main() { 


 d = opendir(".");
  if (d)
  {
  
  // pthread_t thread; // declare thread 
 //   pthread_create(&thread, NULL, readDir, NULL); 
 //   printf("In main \nthread id = %d\n", thread);  
  //  pthread_join(thread, NULL);  
  writeDir();
  }
  // pthread_t thread2; // declare thread 
 //   pthread_create(&thread2, NULL, logger, NULL); 
  //   pthread_join(thread2, NULL); 
  logger();
  
  // just call read dir again if necessary after processing
  // characters "IN LOGGER"
}
