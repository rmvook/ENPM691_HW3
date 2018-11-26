#include <stdlib.h>
#include <string.h>
#include <stdio.h>

void anyfunction(void) {
	system("someCommand");
}
int main(int argc, char** argv) {
	char* ptr;
	char array[8];
	ptr = array;
	strcpy(ptr, argv[1]);
	printf("Arrayhas %s at %p\n", ptr, &ptr);
	strcpy(ptr, argv[2]);
	printf("Arrayhas %s at %p\n", ptr, &ptr);
}