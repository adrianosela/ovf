// main has a dangerous buffer overflow
int main(int argc, char *argv[]) {
	int authenticated = 0;

	char buffer[4];

        // copy argument string to buffer
	// with unsafe string copy func
	strcpy(buffer, argv[1]);

	if (authenticated) {
		printf("user is authenticated!");
	}
}
