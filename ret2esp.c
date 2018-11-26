#include <stdlib.h>
#include <string.h>

void function(char* str) {
	char buf[256];
	strcpy(buf, str);
}
int main(int argc, char** argv) {
	int j = 58623;
	function(argv[1]);
}