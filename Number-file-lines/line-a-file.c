#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[]){
	if(argc < 3){
		printf("Usage: - ./a.out input_file output_file\n");
		return 1;
	}
	FILE *fp = fopen(argv[1], "r");
	FILE *fp2 = fopen(argv[2], "w");
	char line[128];
	int i = 1;
	while(fscanf(fp, "%[^\n]\n", line) != EOF){
		fprintf(fp2, "%d %s\n", i++, line);
	}
	return 0;
}
asddas
dsaasd
asddsaasddas
dsaasd
asddsaasddas
dsaasd
asddsa