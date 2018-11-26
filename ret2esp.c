void function(char* str) {
	charbuf[256];
	strcpy(buf, str);
}
int main(intargc, char** argv) {
	int j = 58623;
	function(argv[1]);
}