//1��
/*
#include<stdio.h>
int main()
{
	char str[100]="Honesty is the best policy";
	char ch;
	int i,count=0;
	printf("%s\n",str);
	printf("Input the char : ");
	scanf("%c",&ch);
	for(i=0;;i++){
		if(ch==str[i]) count++;
		if(!(str[i])) break;
	}
	printf("cnt of %c : %d\n",ch,count);
	return 0;
}
*/
//2��
#include<stdio.h>
#include<string.h>
int main()
{
	char str[2][100];
	printf("ù��° ���ڿ��� �Է��ϼ��� : ");
	gets(str[0]);
	fflush(stdin);
	printf("�ι�° ���ڿ��� �Է��ϼ��� : ");
	gets(str[1]);
	fflush(stdin);
	printf("ù��° ���ڿ� ���� : %d\n",strlen(str[0]));
	printf("�ι�° ���ڿ� ���� : %d\n",strlen(str[1]));
	return 0;
}