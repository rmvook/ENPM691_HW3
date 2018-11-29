#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
int function(int x, char *str) {
	char buf[256];
	strcpy(buf, str);
	return x;
}
int main(int argc, char **argv) {
	function(64, argv[1]);
}