#include <stdio.h>
#include <string.h>
#include <limits.h>
#include <sys/wait.h>

// get rid of wimplicit warnings?
//#include <unistd. h>
#include <sys/types.h>
//=---------------

int main(int argc, char *argv[])
{
    int status;
    char command[PATH_MAX]; /* PATH_MAX is defined in sys/syslimits.h, included by limits.h */
   // strcpy(command, "./test1");
    status = system("./test1");
    if ( WIFEXITED(status) ) {
          printf("The return value: %d\n", WEXITSTATUS(status));
    }
    else if (WIFSIGNALED(status)) {
          printf("The program exited because of signal (signal no:%d)\n", WTERMSIG(status));
    } 
    return 0;
}
