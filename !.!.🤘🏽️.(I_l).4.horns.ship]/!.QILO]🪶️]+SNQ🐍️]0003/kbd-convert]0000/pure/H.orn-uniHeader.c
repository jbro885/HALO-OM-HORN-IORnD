#include<stdio.h>
// #include "H.orn-uniHeader.h" 
 
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
return miniBuffer;
}
//

int globalIntPrintTest(int globalTestInt){

//globalTestInt = 929;

printf(" globalTestInt = %d \n", globalTestInt);
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
