//https://www.youtube.com/watch?v=AAeQLBwM-DQ
//Perceptrons Refactored - Zero to Neural Networks - [ C Programming ]
// after this "tsodings github may have a few more of these...
// go for self driving 3d car fast. >> self flying spaceship >> albicurre warp drive <3
#include <stdio.h>
#include <stdlib.h>
#define THRESHOLD 0.1
#define INPUT_COUNT 5  /// like assembly  (defining a 'macro")


void output(float p){
if(p > THRESHOLD){
printf("Over");
}else{
printf("Under");};
 return ; 
}

		          //💡️//*actually a pointer 2 a float (meme addr of float
char *get_question(int i, float *weight){ // functional string literal...

switch(i){
case 0 :

// *de referencing mem address ...then assigning it a value (trickiest part of .c)
// *weight = 0.8; /// importance (or positive or negative (when BNN)
 	// seems like if we go back and do pos or neg it/ 1 or 0 , can be used as TF
 // BNN = 1, -1 < as weights (not decimales, feel free 2 change after <3 2 1 or 0 even 🔍️>
//https://arxiv.org/pdf/1602.02830.pdf
*weight = 0.0;

// these can be in an array ez (also binaries)
return "New or Load?";   // in future this is "CLI" 		
break; 
case 1 :
*weight = 0.0;
return "Human or AI Control?"; // how many players? how many human? AI? (WSR start)
break; 
case 2 :
*weight = 0.0;
return "Halo-VM(HVM) or Native Hardware Bitbang.c?";
break; 
case 3 :
*weight = 0.0;
return "Network or Local?";
break; 
case 4 :
*weight = 0.1;
return "Binary or Ascii?";
break; 
}

//return "Question 1";
}


int main( int argc, char * argv[] ) {

//printf();
//scanf();

float x[INPUT_COUNT];     //inputs(usr)    // wanna redo these in binary but just speed thru first
float w[INPUT_COUNT];    // weights (native or reocurring (rnn)/reinforced
float p = 0.0 ; 


for(int i = 0 ; i < INPUT_COUNT ; i++){
			 //💡️//&=address
 printf("%s",get_question(i,&w[i] ));
 scanf("%f", &x[i]);
// printf("Question 1");
 printf("\n");
 
 p += x[i] * w[i];
 
}

printf("P= %f" , p);
// 🥳️congrats u literally just made a neural net that will last a LONG TIME (cross plat ;)♾️


 printf("\n");
 
 output(p);
    return 0;
}

