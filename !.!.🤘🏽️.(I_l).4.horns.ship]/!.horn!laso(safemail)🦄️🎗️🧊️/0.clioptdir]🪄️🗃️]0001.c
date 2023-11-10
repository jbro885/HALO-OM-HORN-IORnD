//https://stackoverflow.com/questions/25374573/c-problems-with-using-getchar-and-switch-case-to-get-user-input-for-a-main-menu
//🧙🏻‍♂️️🪄️

///i think u need 2 automatically run "dir reader"
// (as an exe fork , also u need to figure out how 2 do multiple forks
// "ON UR OWN"

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <dirent.h>
////////
#include<unistd.h>
#include<sys/wait.h>
#include<sys/types.h>

char name[256][256];

 int input;

    /*Displays the menu to user*/

     DIR           *d;
  struct dirent *dir;
  int count = 0;
 // int index = 0;
  
int readDir(){
while ((dir = readdir(d)) != NULL)
    {
      printf("[%d] %s\n",count, dir->d_name);
      strcpy(name[count],dir->d_name);
      count++;
    }

    closedir(d);
}

int main(){

   d = opendir(".");
  if (d)
  {
  
    readDir();
  }

printf("next \n");
// we dont actually need a switch ,(for dir execute) 
// just execute char[input] (if input is not over dir[count]
    while(1){
        input=getchar();
        getchar();
        input = input - '0';
        printf("%d\n",input);
     printf("%s\n", name[input]);
     
     
     
     int i;

pid_t pid;
int status;
siginfo_t *infop;
printf("Start\n");
pid=fork();
printf("Fork returned %d\n",pid);
if(pid == 0) {
//if(stop == 0) {  // this didn't seem 2 work.. .
sleep(2);
printf("\n In child %d \n",getpid());
//execl("0.hello]0001",NULL); // this is working , hb mult children?
//name[input]
//execl("0.hello]0001",NULL); //]on
execl(name[input],NULL);  // ]ON = BIGWIN
 //readDir(); // this didn't happen but i think calling it as an
 // exe would work , ( ie only use cli 2 launch read dir)
 // it SHOULD exe forks or w/e 
//& if hello prints 2 "FILE"  instead of command line that maybe
//bestter
//}
}
else{
printf("\n In parent %d \n",getpid());
wait(&status);
//printf("The child exited with status %d",WEXITSTATUS(&status));
printf("The child exited with status");
}
     
     
     

    } 
    return EXIT_SUCCESS;
}
