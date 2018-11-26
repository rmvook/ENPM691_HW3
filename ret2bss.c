char globalbuf[256];
void function(char* input) {
	charlocalbuf[256];
	strcpy(localbuf, input);
	strcpy(globalbuf, localbuf);
}
int main(intargc, char * *argv) {
	function(argv[1]);
}