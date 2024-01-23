//🦄️
//https://www.codequoi.com/en/handling-a-file-by-its-descriptor-in-c/#writing_to_a_file_descriptor_in_c
//https://stackoverflow.com/questions/13450809/how-to-search-a-string-in-a-char-array-in-c


//might as well be doing blockchain HERE
//https://www.jmeiners.com/tiny-blockchain/


// genesis block can still be empty 
// we will keep track of "blockchain" 
// seperate from "RAM style mem
// but blockchain is still supposed to remember 
// ram events (hashes) (and even there should be // META STATE of blockchain as it goes from //clk cycle 2 cycle 
// remember the whole thing is "INTENTIONALLY A GLOBAL "MMO FILESYSTEM" 
// admittedly this COULD stall u . just move fast
/// however THIS just creates an empty "MEM SPACE"
// keep that seperate from blockchain creation 
// its ez after all <3 


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
//-----------------txtfs pid arg
char pid_argv1[256];  // 1024/2 = 512 / 2 =
//char txt[128] = ".txt";  // 256/2 = 


 char* fileName = "txtfs[0000].txt";
 
int blockSize = 4096; 
int byteSize = 8 ; 

char emptyByte[] = "........";

int main(int argc, char* argv[])
{

  int fd = open(fileName, O_RDWR | O_TRUNC | O_CREAT, 0777);
  //O_APPEND
    
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

lseek(fd, 0, SEEK_END);
 //write(fd, "Hello World!\n", 13); //

	blockSize = 64 + 8; //DEBUG
	//wc -m txtfs0002.txt //filename
	//can we divide by eight? 
	while(count < blockSize){ 
	
	//snprintf(buffer, 10, "%d", count);
	//length_of_buffer = strlen(buffer);
	// write(fd, buffer, length_of_buffer);
	//write(fd, emptyByte, 8); //
	write(fd, ".", 1); //
	//printf("down %s \n", buffer);//4 debuging threads

count++;
// this could be ur first test of "clock"
// even tho there is no mem file 2 read clock from... 
// clock could write 2 "Modem folder" or something . w/e who cares
//usleep(10000000);
//sleep(1); 
}

	close(fd);

    return 0;
}
