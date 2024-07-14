//1번
#include<stdio.h>
int main()
{
	int a=10,b=5,c=15,d=7;
	char ch;
	printf("어떤 변수의 정보를 원하시나요? ");
	scanf("%c",&ch);
	if(ch=='a'){
		printf("a에 저장된 값 : %d\n",a);
		printf("a의 주소 : %u\n",&a);
	}
	else if(ch=='b'){
		printf("b에 저장된 값 : %d\n",b);
		printf("b의 주소 : %u\n",&b);
	}
	else if(ch=='c'){
		printf("c에 저장된 값 : %d\n",c);
		printf("c의 주소 : %u\n",&c);
	}
	else if(ch=='d'){
		printf("d에 저장된 값 : %d\n",d);
		printf("d의 주소 : %u\n",&d);
	}
	else return 0;
}