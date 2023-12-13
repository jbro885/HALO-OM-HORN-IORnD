//🦄️
//https://www.codequoi.com/en/handling-a-file-by-its-descriptor-in-c/#writing_to_a_file_descriptor_in_c


#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>

#include <string.h>

int	fd;
	int count = 0;
char buffer[10];
////////////



char filename[255];
char txt[50] = ".txt";

int main(int argc, char* argv[])
{

if (argv[1] != NULL){ 
	strcpy(filename, argv[1]);
	//need to append .txt HERE not in other file
	//https://www.educative.io/blog/concatenate-string-c
	
	strcat(filename, txt); 
	printf("%s \n", filename);
	 }else{
	printf("no arg \n");
	strcpy(filename, "pid-d?.txt");
	};
	



int length_of_buffer = 0; 

  // how to get pid after fact? take arg
	//fd = open(filename, O_APPEND | O_CREAT, 0777); //O_TRUNC (clobbers entire file) u can do ur own append w/e


fd = open(filename, O_WRONLY | O_APPEND | O_CREAT, 0777);
	//fd = open("test.txt", O_WRONLY | O_APPEND | O_CREAT, 0777); //O_TRUNC (clobbers entire file) u can do ur own append w/e
if (fd == -1)
		return (1);
//	Print the fd of the new file
	printf("fd = %d\n", fd);
//	Write into the file descriptor
	write(fd, "Hello World!\n", 13);
	while(1){
	
	
	snprintf(buffer, 10, "%d", count);
	length_of_buffer = strlen(buffer);
	write(fd, buffer, length_of_buffer);
	printf("down %s \n", buffer);//4 debuging threads

count--;
sleep(1);
}
	close(fd);
	return (0);
}
