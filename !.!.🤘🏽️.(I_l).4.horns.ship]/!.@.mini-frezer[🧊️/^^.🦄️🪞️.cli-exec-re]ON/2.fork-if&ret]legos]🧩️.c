//https://www.youtube.com/watch?v=ss1-REMJ9GA
//Creating new processes with fork()! 
//Jacob Sorber
/////////////////////////////////////////////
#include<stdio.h>
int main() {
int returnVal; 

returnVal = fork();
if (returnVal == 0 ){ // fork "returns 0"? (when ? why?) wutelse otherwise?
//fork();
printf("child node (if0). %d\n" , getpid());
printf("returnVal (if0). %d\n" , returnVal);
//childnode returns a value of "0" 
//probably unless u turn it into a scoped parent
}else{
printf("parent node (if1). %d\n" , getpid());
printf("returnVal (if1). %d\n" , returnVal);
// parent is returning the "PID" of childnode.
}
 

/*
fork();
//fork();
printf("fork the universe. %d\n" , getpid());
printf("fork the multiverse. %d\n" , getpid());
*/

/*
int count = 0;
while(1){
printf("Goodbye Cruel world");
printf("count %d \n", count);
count++;
sleep(2);
}
*/
}

