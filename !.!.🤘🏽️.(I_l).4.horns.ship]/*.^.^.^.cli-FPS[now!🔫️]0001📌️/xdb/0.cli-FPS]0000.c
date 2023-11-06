/*
	OneLoneCoder.com - Command Line First Person Shooter (FPS) Engine
	"Why were games not done like this is 1990?" - @Javidx9

	License
	~~~~~~~
	Copyright (C) 2018  Javidx9
	This program comes with ABSOLUTELY NO WARRANTY.
	This is free software, and you are welcome to redistribute it
	under certain conditions; See license for details. 
	Original works located at:
	https://www.github.com/onelonecoder
	https://www.onelonecoder.com
	https://www.youtube.com/javidx9

	GNU GPLv3
	https://github.com/OneLoneCoder/videos/blob/master/LICENSE

	From Javidx9 :)
	~~~~~~~~~~~~~~~
	Hello! Ultimately I don't care what you use this for. It's intended to be 
	educational, and perhaps to the oddly minded - a little bit of fun. 
	Please hack this, change it and use it in any way you see fit. You acknowledge 
	that I am not responsible for anything bad that happens as a result of 
	your actions. However this code is protected by GNU GPLv3, see the license in the
	github repo. This means you must attribute me if you use it. You can view this
	license here: https://github.com/OneLoneCoder/videos/blob/master/LICENSE
	Cheers!

	Background
	~~~~~~~~~~
	Whilst waiting for TheMexicanRunner to start the finale of his NesMania project,
	his Twitch stream had a counter counting down for a couple of hours until it started.
	With some time on my hands, I thought it might be fun to see what the graphical
	capabilities of the console are. Turns out, not very much, but hey, it's nice to think
	Wolfenstein could have existed a few years earlier, and in just ~200 lines of code.

	IMPORTANT!!!!
	~~~~~~~~~~~~~
	READ ME BEFORE RUNNING!!! This program expects the console dimensions to be set to 
	120 Columns by 40 Rows. I recommend a small font "Consolas" at size 16. You can do this
	by running the program, and right clicking on the console title bar, and specifying 
	the properties. You can also choose to default to them in the future.
	
	Controls: A = Turn Left, D = Turn Right, W = Walk Forwards, S = Walk Backwards

	Future Modifications
	~~~~~~~~~~~~~~~~~~~~
	1) Shade block segments based on angle from player, i.e. less light reflected off
	walls at side of player. Walls straight on are brightest.
	2) Find an interesting and optimised ray-tracing method. I'm sure one must exist
	to more optimally search the map space
	3) Add bullets!
	4) Add bad guys!

	Author
	~~~~~~
	Twitter: @javidx9
	Blog: www.onelonecoder.com

	Video:
	~~~~~~	
	https://youtu.be/xW8skO7MFYw

	Last Updated: 27/02/2017
*/


#include <stdio.h>


int nScreenWidth = 120;			// Console Screen Size X (columns)
int nScreenHeight = 40;			// Console Screen Size Y (rows)
int nMapWidth = 16;				// World Dimensions
int nMapHeight = 16;

float fPlayerX = 14.7f;			// Player Start Position
float fPlayerY = 5.09f;
float fPlayerA = 0.0f;			// Player Start Rotation
float fFOV = 3.14159f / 4.0f;	// Field of View
float fDepth = 16.0f;			// Maximum rendering distance
float fSpeed = 5.0f;			// Walking Speed


int main(int argc, char *argv[]) {


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
}

// That's It!! - Jx9
