//https://gist.github.com/ikeating/2826aa4e6d7ecf3aac256ca3d9c6fa6f
#include <stdio.h>
#include <time.h>

int time_nonbin()
{
    
   time_t seconds = time(NULL);//Unix epoch 00:00:00 UTC on 1 January 1970
    
   if (seconds == -1)
      {
        puts("The time() function failed");
        return(1);
      }

   printf("%ld\n", seconds);

   struct tm *ptm = localtime(&seconds);
    
   if (ptm == NULL)
      {
        
          puts("The localtime() function failed");
          return 1;
      }
    
   printf("The time is: %02d:%02d:%02d\n", ptm->tm_hour,
      ptm->tm_min, ptm->tm_sec);
      
    //  sprintf(bintime, "%s:%s:%s\n", int_to_binstr(timeinfo->tm_hour, bitLength), 

   return 0;
}
/*
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
 
int main()
{
    int hour, minute, second;
     
    hour=minute=second=0;
 
    while(1)
    {
        //clear output screen
        system("clear");
         
        //print time in HH : MM : SS format
        printf("%02d : %02d : %02d ",hour,minute,second);
         
         //clear output buffer in gcc
        fflush(stdout);
         
         //increase second
        second++;
 
        //update hour, minute and second
        if(second==60){
            minute+=1;
            second=0;
        }
        if(minute==60){
            hour+=1;
            minute=0;
        }
        if(hour==24){
            hour=0;
            minute=0;
            second=0;
        }
         
        sleep(1);   //wait till 1 second
    }
 
    return 0;
}*/
