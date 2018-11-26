#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int main(int argc, char* args[]) {
	char input[256];
	char *conf = "test f˜ / .progrc";
	char *license = "THISSOFTWAREIS...";
	printf(license);
	strcpy(input, args[1]);
	if (system(conf))
		printf("Missing.progrc");
}