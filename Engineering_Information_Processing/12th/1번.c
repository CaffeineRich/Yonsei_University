//1¹ø
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