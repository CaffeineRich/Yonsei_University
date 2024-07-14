//1번
/*
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
*/
//2번
#include<stdio.h>
void divide(int k,int s,int *q,int *r)
{
	*q=k/s;
	*r=k%s;
}
int main()
{
	int k,s,q,r;
	printf("K와 S를 입력하세요.\n");
	scanf("%d %d",&k,&s);
	divide(k,s,&q,&r);
	printf("몫 : %d\n",q);
	printf("나머지 : %d\n",r);
	return 0;
}