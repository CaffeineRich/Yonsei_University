//1��
#include<stdio.h>
int main()
{
	int a=10,b=5,c=15,d=7;
	char ch;
	printf("� ������ ������ ���Ͻó���? ");
	scanf("%c",&ch);
	if(ch=='a'){
		printf("a�� ����� �� : %d\n",a);
		printf("a�� �ּ� : %u\n",&a);
	}
	else if(ch=='b'){
		printf("b�� ����� �� : %d\n",b);
		printf("b�� �ּ� : %u\n",&b);
	}
	else if(ch=='c'){
		printf("c�� ����� �� : %d\n",c);
		printf("c�� �ּ� : %u\n",&c);
	}
	else if(ch=='d'){
		printf("d�� ����� �� : %d\n",d);
		printf("d�� �ּ� : %u\n",&d);
	}
	else return 0;
}