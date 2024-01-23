#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define BINTIME_LEN 240
// this is just a binary converter gone wrong :/ 
char* int_to_binstr(int num, int bits_wanted)
{
	char *bin_string = malloc(bits_wanted);
	int i;

	for(i = 0; i < bits_wanted; i++) {
		bin_string[(bits_wanted - 1) - i] = (char) (int)'0' + ((num >> i) & 1);
	}
	return bin_string;
}

char* get_bintime(int bitLength) 
{
	char *bintime;
	bintime = malloc(BINTIME_LEN);
	time_t rawtime;
	
	rawtime = time(NULL);
	struct tm *timeinfo = localtime(&rawtime);

	sprintf(bintime, "%s:%s:%s\n", int_to_binstr(timeinfo->tm_hour, bitLength), 
			int_to_binstr(timeinfo->tm_min, bitLength), 
			int_to_binstr(timeinfo->tm_sec, bitLength));
	return bintime;
}

int main()
{
	printf("%s\n", get_bintime(16));
	return 0;
}
