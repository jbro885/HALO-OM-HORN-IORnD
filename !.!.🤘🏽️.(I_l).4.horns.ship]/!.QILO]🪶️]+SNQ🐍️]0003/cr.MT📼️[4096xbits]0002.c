//🦄️
// we are just writing dummy data 2 
// first inode position 
// we can sus out the rest later 
// it isn't gonna just "dev up in a linear fashion"
// we want dummy data, we will wrap in blockchain 
// then take new change at same mem position or w/e 
// and merge diff 

//BLOCK HEADER STRUCTURE : 
//[[VERSion(4by)][Previous block hash(32by)][Merkle Root(32by)][Timestamp secs from gen+date (4)][Difficulty index(4)][nonce(4)][padding(48)]]

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>
#include <string.h>
#include <stdint.h>


char buffer[409600000]; 
char buffer2[409600000]; 

 char* fileName[64];
 //char* strArgv2[64];
 char* strArgv2 = "write-inode";
 
 char* previousHash32[32];
 
 char pid_argv1[256]; 
 char pid_argv2[256]; 
 
 char txt[4] = ".txt"; 
int bytesRead;

int blockSize = 4096; 


uint32_t fnv32_hash(const char *str, size_t len)
{

//https://gist.github.com/sgsfak/9ba382a0049f6ee885f68621ae86079b

    unsigned char *s = (unsigned char *)str;	/* unsigned string */

    /* See the FNV parameters at www.isthe.com/chongo/tech/comp/fnv/#FNV-param */
    const uint32_t FNV_32_PRIME = 0x01000193; /* 16777619 */

    uint32_t h = 0x811c9dc5; /* 2166136261 */
    while (len--) {
        /* xor the bottom with the current octet */
        h ^= *s++;
        /* multiply by the 32 bit FNV magic prime mod 2^32 */
        h *= FNV_32_PRIME;
    }
    
     printf("h Contents: %d\n", h);

    return h;
}

int main(int argc, char* argv[]){
    
     
    if (argv[1] != NULL){ 
	strcpy(fileName, argv[1]);
	//need to append .txt HERE not in other file
	//https://www.educative.io/blog/concatenate-string-c
	
	strcat(fileName, txt); 
	//printf("%s \n", pid_argv1);
	 }else{
	printf("no arg \n");
	strcpy(fileName, "txtfs[0000].txt"); //demo text 🧻️📌️
	};


   if (argv[2] != NULL){ 
	//strcpy(pid_argv2, argv[2]);
	//need to append .txt HERE not in other file
	//https://www.educative.io/blog/concatenate-string-c
	
	//strcat(fileName, txt); 
	printf("string contents %s \n", pid_argv2);
	 }else{
	printf("no arg2 \n");
	//strcpy(fileName, "txtfs[0000].txt"); //demo text 🧻️📌️
	};
	
	printf("string argv %s \n", strArgv2);


    int fd = open(fileName, O_RDWR | O_APPEND | O_CREAT, 0777);
  //O_APPEND
    
    if(fd == -1){
        printf("\nError Opening File!!\n");
        exit(1);
    }
    else{
        printf("\nFile %s opened sucessfully!@Q\n", fileName);
    }

  

    int bitsRead = read(fd, buffer, sizeof(buffer));
    
     close(fd);
     
printf("%d bf size!\n", sizeof(buffer));
 //   printf("%d bytes read!\n", bitsRead);
    printf("File Contents: %s\n", buffer);

   
     int N = (int)(buffer[9]); // count in in length of block sizes till it = "0" (not 48 etc)
   printf("ascii=%d \n", N);
   //  printf("bffer Contents: %s\n", buffer[1]);
  
  //🧮️
   int countedChars = countAllCharsInBuffer(buffer , sizeof(buffer));
   printf(" char len!= %d\n", countedChars);
    //🧮️
 //  if(countedChars)
    
    /// exit(111);
 
 int writePosition = countedChars;
 int writeLength = returnblockSize0() ; 
 
 int writeSize = writePosition + writeLength;

  createMtSpace(writePosition, writeLength,buffer);
  

  printf("writeSize length: %d\n", writeSize);
  
  
  fd = open(fileName, O_RDWR | O_TRUNC | O_CREAT, 0777); //if i dont TRUNC appends

  
write(fd, buffer , writeSize);

	close(fd);

    return 0;
  

}
