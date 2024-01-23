#include <stdio.h>
//#include <unistd. h>
//#include <sys/types.h>

char* strArgv1 = "11101011";
int main(void)
{
    printf("first array %s \n", strArgv1);
    
  char strArgv2[4] ; 
   changeBitCount(strArgv1,strArgv2, 4);
   printf("2 array %s \n", strArgv2);

 printf("2 array count %ld \n", sizeof(strArgv2));

// eat stayc after
    return 81;
}
