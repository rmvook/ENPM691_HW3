#include <stdlib.h>
#include <string.h>
#include <stdio.h>

void function(char* str) {
	printf(" %s/n", str);
	system("any command");
}
int main(int argc, char** argv) {
	void(*ptr)(char* str);
	ptr = &function;
	char buff[64];
	strcpy(buff, argv[1]);
	(*ptr)(argv[2]);
}