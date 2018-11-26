void function(char* str) {
	printf(” % snn”, str);
	system(”anycommand”);
}
int main(intargc, char** argv) {
	void(*ptr)(char* str);
	ptr = &function;
	charbuff[64];
	strcpy(buff, argv[1]);
	(*ptr)(argv[2]);
}