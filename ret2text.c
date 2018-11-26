void public(char* args) {
	char buff[12];
	strcpy(buff, args);
	printf(”publicnn”);
}
void secret(void) {
	printf(”secretnn”);
}
int main(intargc, char* argv[]) {
	if (getuid() == 0)
		secret();
	else public(argv[1]);
}