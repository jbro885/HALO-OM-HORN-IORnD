/*🧿️to prevent HORN/NU-HALO/💸️ blockchain etc 💸️ , from becoming an unweildy/untestable "MONOLITH" 🔍️ 
output 2 "sol]0.txt" if not "Fs[].txt" is present. ez/tedius 2 fix but w/e 🧿️
*/
#include<stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
// #include "^.H.orn-uniHeader.h" 

char* changeBitCount(char *buffer0 ,char *buffer1 ,int bitsWanted){
//char *concat_0s = malloc(bitsWanted);
//char concat_0s[64]
if(sizeof(buffer0) < bitsWanted ){

int i ;

for(i = 0; i < bitsWanted - sizeof(buffer0) ; i++) {

buffer1[i] = '0'; 

}

buffer1[i] = '\0';
strcat(buffer1,buffer0 ); 


}else{

// just cut @ 
char concat_0s[64] ; // = malloc(bitsWanted);

char *b0 = buffer0 + bitsWanted; // sneaky trix! 
//https://stackoverflow.com/questions/4761764/how-to-remove-first-three-characters-from-string-with-c
strcpy(buffer1,b0);

}

return buffer1; // if this doesn't work PASS concat_0s as arg

}

//⏳️⏳️⏳️⏳️⏳️⏳️⏳️⏳️⏳️⏳️⏳️
// all this stuff is kinda unecessary , its nice for debugging
//but u could be using "RAWTIME ie: 1329832 or w/e 2 bin
//1705900929 = 01100101101011011111101110000001
//(which is 31+0pad digits... so yea...), up 2 u. 
// it SHOULD return a higher number actually so w/e 
// u can parse a 48/64 bit number , but u dont need 2 . 
// the "month is never going to be more than 4 bits, so if u want
// u can make a binary parser like that...

// if u ever want u can just take "TIMERAW" from header
// convert it 2 int then do w/e [{good 2 know}+ontrack+liv4AVA <3<QLU]
//kcell keep betryaing me , but the jokes on them <QLU
int rawSeconds(char *bintime32)
{
    
   time_t seconds = time(NULL);//Unix epoch 00:00:00 UTC on 1 January 1970
    
   if (seconds == -1)
      {
        puts("The time() function failed");
        return(1);
      }

 //  printf("%ld\n", seconds);
 converttobinary(seconds, bintime32, 32);
}

char* int_to_binstr(int num, int bits_wanted)
{
	char *bin_string = malloc(bits_wanted);
	int i;

	for(i = 0; i < bits_wanted; i++) {
		bin_string[(bits_wanted - 1) - i] = (char) (int)'0' + ((num >> i) & 1);
	}
	
	bin_string[bits_wanted] = '\0';
	
	return bin_string;
}


char* get_bintime(char* bintime , int bitLength ) 
{
	//char *bintime;
	//bintime = malloc(sizeof(bintime));
	time_t rawtime;
	
	rawtime = time(NULL);
	struct tm *timeinfo = localtime(&rawtime);

// %s:%s:%s:%s:%s:%s
//%s%s%s%s%s%s
	sprintf(bintime, "%s:%s:%s:%s:%s:%s",
	int_to_binstr(timeinfo->tm_year, bitLength), 
	int_to_binstr(timeinfo->tm_mon, bitLength), 
	int_to_binstr(timeinfo->tm_mday, bitLength), 
	 int_to_binstr(timeinfo->tm_hour, bitLength), 
			int_to_binstr(timeinfo->tm_min, bitLength), 
			int_to_binstr(timeinfo->tm_sec, bitLength));
			
			//printf("%s\n",bintime);
	return bintime;
}
/*
tm_sec	int	seconds after the minute	0-61*
tm_min	int	minutes after the hour	0-59
tm_hour	int	hours since midnight	0-23
tm_mday	int	day of the month	1-31
tm_mon	int	months since January	0-11
tm_year	int	years since 1900	
tm_wday	int	days since Sunday	0-6
tm_yday	int	days since January 1	0-365
tm_isdst	int	Daylight Saving Time flag	
*/

//⏳️⏳️⏳️⏳️⏳️⏳️⏳️⏳️⏳️⏳️⏳️

//https://newton.ex.ac.uk/teaching/resources/jmr/multifile.html
//================================

// were waiting on "sudo-crystal-clock" till fs is more fleshed (else 2fake)

//
int jsonParseFull(char *buffer0 ,char *buffer1, int countedChars){

int i ; 
int objCount ; //# of {'s
while(i < countedChars){
//char object[]; 

//count "{"'s , then we will iterate counting backwards  ,and just iterate
// our strategy live , no need 2 architect . fail and go again. 
}
//return buffer1; 
}


 
int tidAsFile(){
}


// we just want 2 make a nother block at end of count. 
// so u should count blocksize 
//------------------------------------
// void wont return #1 ;)
int compareBuffers(char *buffer0 , char *buffer1, char *buffer2){

// im looking at "demo.html" and will look at "git/patch w/e"  2 try 2 understand WHAT
// WE NEED DIFF FOR , cuz just getting "errors , even "nu array " is ez...
// //we CAN store ". or 0 if not a "diff" but '.' could be a period...
//❓️
// isn't there a better return formula for that? im pretty sure i saw in one of those '.c' files...
// may even be "DELTA" (i think thats an "immediate compression")
// ar we compressing all till diff patch?
//🤯️
// or are we compressing the whole string as "1" cuz their all very similiar and it zeros out diff'blocks'????
//😖️
//4example?: compress 2 , get third so decompress , deltadiffs compresses a new ? 
//😖️
//🤯️
//❓️
/*
   char ch1 = getc(file1);
   char ch2 = getc(file2);
   int error = 0, pos = 0, line = 1;
   while (ch1 != EOF && ch2 != EOF){
      pos++;
      if (ch1 == '
' && ch2 == '
'){
         line++;
         pos = 0;
      }
      if (ch1 != ch2){
         error++;
         printf("Line Number : %d \tError"
         " Position : %d 
", line, pos);
      }
      ch1 = getc(fp1);
      ch2 = getc(fp2);
   }
   printf("Total Errors : %d\t", error);
   */
}

//-----------------------------
const int blockSize0 = 4096; 

int returnblockSize0(){
return blockSize0 ;
}


int countAllBlocksInBuffer(char *buffer,int bufferSize){
// count blocks 
}

int countAllCharsInBuffer(char *buffer,int bufferSize){
//👨‍🚀️
// this is almost right, but dont loop thru entire , just go "blocksize*count(=1++) + 1" 
// and compare 2 "int=0"cuz thats wut mt is <3
// you will still get a count just *blocksize... count all 4 debug w/e
//👨‍🚀️
int i = 0 ; 
char b2s[1];
 int result;
 int number0;
 
  printf("str out: \n");

while(i < bufferSize){

 number0 = (int)(buffer[i]);
/* 
 if(i = 8){
   printf("asciidebug =%d \n", number0);
   exit(46);
 }
*/

if (number0 == 0 ){
//if (number0 != 46 ){ ] on
 printf("asciidebug cnt =%d \n", i);
 return i ; 
//exit(36);
}

i++;
 
 }

return i ; 
}

//=================================


 int createMtSpace(int writePosition,int writeLength,char *buffer){
 int i = 0; 
 while(i < writeLength){
 
 buffer[writePosition + i] = '.' ;  //48; 
 // is fine but would it be better as "0"'s? w/e 
 i++;
 }
// return buffer ; 
 }

 
 int converttobinary(int number, char *returnPayload,int payloadBitsize){
 
// memset(returnPayload, 8, sizeof(returnPayload));
// returnPayload = malloc(payloadBitsize);
    int auxiliar = number;
    int i;
    int opSize = payloadBitsize -1 ; 

    for (i = 0; i < payloadBitsize; i++) {
    
        auxiliar = auxiliar >> i;
        if (auxiliar & 1 == 1){
            returnPayload[opSize-i] = '1';
        } else{
            returnPayload[opSize-i] = '0';
        }
        auxiliar = number;
    }
    returnPayload[payloadBitsize] = '\0';

return 0 ; 
}





 //😇️ READPOS/WRITE POS ARE 'THE PRIMATIVES' ON WHICH HALO CAN BE BUILT😇️
 //😇️ JUST KEEP BUILDING OUT MEM FIRST CUZ ITS "PRIMATIVE" AND WE WILL HAVE 2 WRITE LESS CODE 4EVER😇️ 
 int readFrom_Position(int readPosition,char *buffer ,char *previousHash32, int returnLength ){
  int copyCount = 0; 
 while(copyCount < returnLength){
 previousHash32[copyCount] = buffer[copyCount + readPosition] ; 
copyCount++;
//countDownDebug--; 
}
  
//  return previousHash32;
 
 }
 
 // u may actually get the write position (from a multi block) doing some lseek magic  or something similar
  int write2Position(int writePosition,char *buffer,char *buffer2 ,  char *payload,int payloadLength ,int bitsRead ){
  
  strncpy(buffer2, buffer, bitsRead);//doing here maybe overkill if u can do it once in "src" but its auto here... w/e <3
  			//it also just makes sure we have "all the vars we need" 4 now...
  
  int copyCount = 0; 
  int countDownDebug = payloadLength ; 
while(copyCount < payloadLength){
//buffer2[copyCount] = buffer[copyCount + writePosition] // buffer[miniBufferOffset + copyCount];
buffer2[copyCount + writePosition] = payload[copyCount] ; 
copyCount++;
countDownDebug--; 
}
  
 // return buffer2;
  // it will just globally replace what was in minibuffer, u dont need to ="return val"
 }
 /*
 int writeToSpecificMemoryLocation(chain , block , ){
 
 //the kbd can "be in the blockchain, and blockchain in "ext2"how?
 //we want the "fs blockchain protect but were not actually gonna "mine it or inc it 2 next blk
 // its all for "show/safety"
 //we will do real blockchain "IN FS" does that make sense?(mimicing macro blkchain...
 }
 */
 
 // FOR BLOCKSIZE CREATION ? 
 // irather use MEMORY HEADER TO SET "LOCAL CONSTANT"
 //blocksize can change, in same blockchain afterall
 //(its good 2 know how 2 program blockchain well. <3
 // were creating something new so dont sweat it.
 // u can read blocksize*blocksminted and see if theirs empty dots, or else run 2 make more
 //
 
 
// Funtion removing spaces from string


// u can make these headers at ur leisure. 
// the theory is that their just "tangential fx"
// i think the messed up thing is when headers include other headers
// that are literally in another file in a c file etc. u would'nt do that
// altho i dont hate the fx being local either

int bufferCutterHeader( char *buffer ,char *miniBuffer,int miniBufferOffset , int miniBufferLength ){
/// we cut off "front and back of kbd mem" from buffer , then we dont "NEED"
// 2 "add offsets in "circularBufferKbd()", and we can use "SHIFTING"
int copyCount = 0; 
while(copyCount < miniBufferLength){
miniBuffer[copyCount] = 'i';// buffer[miniBufferOffset + copyCount];
copyCount++;
}
//return miniBuffer;
}
//

int globalIntPrintTest(int globalTestInt){

//globalTestInt = 929;

printf(" globalTestInt = %d \n", globalTestInt);
}

///---------------
void removeSubstr (char *string, char *sub) {
    char *match;
    int len = strlen(sub);
    while ((match = strstr(string, sub))) {
        *match = '\0';
        strcat(string, match+len);
    }
    
    string[sizeof(string) - sizeof(sub) ] = '\0';
}


//////////=-------------------
char * removeSpacesFromStr(char *string)
{
    // non_space_count to keep the frequency of non space characters
    int non_space_count = 0;
 
    //Traverse a string and if it is non space character then, place it at index non_space_count
    for (int i = 0; string[i] != '\0'; i++)
    {
        if (string[i] != '.' && string[i] != ',' )
        {
            string[non_space_count] = string[i];
            non_space_count++;//non_space_count incremented
        }    
    }
    
    //Finally placing final character at the string end
    string[non_space_count] = '\0';
    return string;
}
 
 /*
int main()
{
    char string[] = "Edpresso:.Dev.,,.-Shot";
    printf("%s \n",string);
    printf("%s \n",removeSpacesFromStr(string));
    return 0;
}
*/
