//#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main () {
   char command[50];

   strcpy( command, "./1.count.2.3" ); // this uses "sh " 2 do its bidding...? wuuut why?
   fork(); // runs the same command at same time... i need2 run diff command ofc.	
   			// but i guess this is a good start? 
   system(command);
printf("finished command");
   return(0);
} 
