#include<stdio.h>
int main()
{
	char c;
	printf("대문자를 입력하시오 : ");
	scanf("%c",&c);
	printf("입력한 대문자의 소문자 : %c\n",c-'A'+'a');
	return 0;
}