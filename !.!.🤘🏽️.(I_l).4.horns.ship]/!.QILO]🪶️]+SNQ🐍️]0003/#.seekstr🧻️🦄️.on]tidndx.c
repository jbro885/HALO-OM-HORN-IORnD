//🦄️
//https://www.codequoi.com/en/handling-a-file-by-its-descriptor-in-c/#writing_to_a_file_descriptor_in_c
//https://stackoverflow.com/questions/13450809/how-to-search-a-string-in-a-char-array-in-c


#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>
#include <string.h>

char buffer[1024];
int bytesRead;
char *tidLocation;
int tidIndex; 
int length_of_buffer = 0; 
int count = 0;

int main(){
    
    char* fileName = "txtfs0.txt";

    int fd = open(fileName, O_RDWR);
    
    if(fd == -1){
        printf("\nError Opening File!!\n");
        exit(1);
    }
    else{
        printf("\nFile %s opened sucessfully!\n", fileName);
    }

    

     bytesRead = read(fd, buffer, sizeof(buffer));
    
    buffer[bytesRead] = '\0'; // null terminates w/e that means it works
    
    int i ; 
    
     tidLocation = strstr(buffer, "start");      // search for string
 if (tidLocation != NULL)          // may not exist!
 {
     printf("Found string at index = %ld\n", tidLocation - buffer);
     
     tidIndex = tidLocation - buffer ;
     tidIndex = tidIndex + 16; //offset <3 
     printf("tidIndex = %d\n", tidIndex );
     
     lseek(fd, tidIndex, SEEK_SET); // set fd 2 start at "TID"
 }                                 
 else
 {
     printf("String not found\n");  // `strstr` returns NULL if search string not found
 }
 
 
 write(fd, "Hello World!\n", 13);
	//
	while(count > -3){
	//while(1){
	
	snprintf(buffer, 10, "%d", count);
	length_of_buffer = strlen(buffer);
	write(fd, buffer, length_of_buffer);
	//printf("down %s \n", buffer);//4 debuging threads

count--;

//sleep(1);
}
tidIndex = tidIndex + 32; //offset <3 
lseek(fd, tidIndex, SEEK_SET);
write(fd, "End!\n", 5);
	close(fd);
// close(fd)

   // while(i <  bytesRead){
    
   // }

//int index = strchr(values,find)-values;


 //   printf("%d bytes read!\n", bytesRead);
   // printf("File Contents:\n%s\n", buffer);

//remember binary write is goal
// header is ez but try "ATOI" options first <3
//https://stackoverflow.com/questions/7109964/creating-your-own-header-file-in-c
    return 0;
}
