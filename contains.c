#include <stdio.h>
#include <string.h>
int contains(char *str1, char *str2){
        char *s1, *s2;
	int count = 0;
        s1 = str1;
        s2 = str2;
        while(*s1 != '\0'){
                if(*s1 == *s2){
                        s2++;
                        if(*s2 == '\0'){
                        	s2 = str2;	
				count++;
			}
                }
                else
                        s2 = str2;
                s1++;
        }
        return count;
}

int main(){
	int count = 0;
	char str1[] = "this Tushar is Tushar, you must meet Tushar\0";
	char str2[] = "Tushar\0";
	printf("%d\n", contains(str1, str2));
}
