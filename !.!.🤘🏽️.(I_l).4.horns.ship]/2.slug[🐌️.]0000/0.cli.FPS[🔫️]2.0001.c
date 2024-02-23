//🐉️🐉️🐉️🐉️🐉️🐉️🐉️🐉️🐉️🐉️🐉️

//🐍️
https://www.youtube.com/watch?v=dZNmGWH91EQ
Snake - Zero to Neural Networks [ C Programming ]
//🐍️
//🔫️
//https://github.com/OneLoneCoder/CommandLineFPS/blob/master/CommandLineFPS.cpp
//Code-It-Yourself! First Person Shooter (Quick and Simple C++) 
//https://youtu.be/xW8skO7MFYw
//🔫️
//🐉️🐉️🐉️🐉️🐉️🐉️🐉️🐉️🐉️🐉️🐉️
/*

	IMPORTANT!!!!
	~~~~~~~~~~~~~
	READ ME BEFORE RUNNING!!! This program expects the console dimensions to be set to 
	120 Columns by 40 Rows. I recommend a small font "Consolas" at size 16. You can do this
	by running the program, and right clicking on the console title bar, and specifying 
	the properties. You can also choose to default to them in the future.
	
	Controls: A = Turn Left, D = Turn Right, W = Walk Forwards, S = Walk Backwards


	Last Updated: 27/02/2017
*/


#include <stdio.h>
#include <sys/fcntl.h>
#include <errno.h>
#include<stdlib.h>
#include<sys/types.h>
#include<unistd.h>
#include<stdio.h>
#include <stdlib.h>

 //#include <locale.h>
#include <math.h> 
#include <stdlib.h>
#include <stdbool.h>  // just swap this 2 0|1 when u get "CNTRL";

int nScreenWidth = 120;			// Console Screen Size X (columns)
int nScreenHeight = 40;			// Console Screen Size Y (rows)
int nMapWidth = 16;				// World Dimensions
int nMapHeight = 16;

float fPlayerX = 8.0f;			// Player Start Position
float fPlayerY = 8.0f;
float fPlayerA = 0.0f;			// Player Start Rotation
float fFOV = 3.14159f / 4.0f;	// Field of View
float fDepth = 16.0f;			// Maximum rendering distance
float fSpeed = 5.0f;			// Walking Speed


int main(int argc, char *argv[]) {

//FILE* file = fopen("0.map]0000.txt", "r");

int fd = open("#.map]0000.txt", O_RDWR | O_CREAT | O_APPEND, 0644); 

//https://www.geeksforgeeks.org/input-output-system-calls-c-create-open-close-read-write/

//https://stackoverflow.com/questions/29624416/c-read-from-a-file-descriptor

unsigned char map0[1024];

read(fd, map0, sizeof map0);

//printf("%s\n", map0); // print "ENTIRE ARRAY" 
//printf("map0 \n");
// get filesize

 // output data here
//for(int i = 0; i < fsize; i++) {
//   printf("%c", buffer[i]);
//}
//

//wchar_t *screen[nScreenWidth*nScreenHeight];

char screen[nScreenWidth*nScreenHeight];
//
 //printf("\e[?25l");
//

while(1){
for (int x = 0 ; x < nScreenWidth; x++){

float fRayAngle = (fPlayerA - fFOV / 2.0f) + ((float)x / (float)nScreenWidth) 
* fFOV ; 

float fDistanceToWall = 0 ; 
bool bHitWall = false ; 

float fEyeX = sinf(fRayAngle);
float fEyeY = sinf(fRayAngle);
//screen[nScreenWidth * nScreenHeight -1] = '\0';

//printf("screen = %ls \n", screen);
while(!bHitWall && fDistanceToWall < fDepth){

fDistanceToWall += 0.1f; 

int nTestX = (int)(fPlayerX + fEyeX * fDistanceToWall);
int nTestY = (int)(fPlayerY + fEyeY * fDistanceToWall);

if(nTestX < 0 || nTestX >= nMapWidth || nTestY < 0 ||
nTestY >= nMapHeight){

bHitWall = true ; 
fDistanceToWall = fDepth ; 
}else{ if(map0[nTestY * nMapWidth + nTestX] == "1"){
bHitWall = true; }

}} 


// find distance 2 ceil and floor 
int nCeiling = (float)(nScreenHeight / 2.0 ) - nScreenHeight / ((float)fDistanceToWall);

int nFloor = nScreenHeight - nCeiling;

for (int y = 0 ; y < nScreenHeight ; y++){
if(y < nCeiling)
	screen[y*nScreenWidth + x] = '*'; //sky (should be blank but 4 debuG)
	else if(y > nCeiling && y <= nFloor)
	
	screen[y*nScreenWidth + x] = '#'; //'"\033[38;2;255;255;255;48;2;0;0;255m\U00002580\033[0m"'; //wall
	else
	
	screen[y*nScreenWidth + x] = '_'; //floor
	
}}
printf("screen(debug)! \n");
printf("%s\n", screen); // print "ENTIRE ARRAY" 
}
  printf("\033[38;2;255;0;0;48;2;0;255;0m\U00002580\033[0m");
printf("\033[38;2;255;255;255;48;2;0;0;255m\U00002580\033[0m");
printf("\033[38;2;255;255;255;48;2;0;0;255m\U00002580\033[0m" );
printf("\033[38;2;255;0;0;48;2;0;255;0m\U00002580\033[0m""\n");
printf("\033[38;2;255;0;0;48;2;0;255;0m\U00002580\033[0m""\n");
	// Create Screen Buffer
//	wchar_t *screen = new wchar_t[nScreenWidth*nScreenHeight];
//	HANDLE hConsole = CreateConsoleScreenBuffer(GENERIC_READ | GENERIC_WRITE, 0, NULL, CONSOLE_TEXTMODE_BUFFER, NULL);
//	SetConsoleActiveScreenBuffer(hConsole);
//	DWORD dwBytesWritten = 0;

	// Create Map of world space # = wall block, . = space
//	wstring map;
//	map += L"#########.......";
//	map += L"#...............";
//	map += L"################";


	return 0;
};

// That's It!! - Jx9
