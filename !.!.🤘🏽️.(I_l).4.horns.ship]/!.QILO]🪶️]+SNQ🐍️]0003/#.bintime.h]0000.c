#include <stdio.h>
#include <stdlib.h>

char bintime[64];
char bintime32[32];

int main()
{
//get_bintime(bintime,8);
//timeFullBin(bintime);
	//printf("bintime !??= %s\n", bintime);
	

	//printf("%s\n", get_bintime(8));

rawSeconds(bintime32);
	printf("bintime32= %s\n", bintime32);
// we dont need "prettified date"
// we can convert that later if u want a clock...
// but we can literally take "date in seconds since jan1-1977
// also thats not really compatible with 
// "crystal counter" so u would need 2 make ur own convert
//ie if it staretd on '8pm/jan31/2024' u would need 2 add
// ur own seconds 2 that 2 get the current date time...
// however ur date stored DOESNT HAVE 2 LINE UP with CRYSTAL...
// especially not yet for any reason.
// espeically while being berated and physically assaulted. by the sky?

//
	return 0;
}
