#include<stdio.h>
int main()
{
	int a;
	printf("속력을 입력하세요\n");
	scanf("%d",&a);
	if(a<60){
		printf("느립니다\n");
	}
	else if(a>=60){
		printf("빠릅니다\n");
	}
	return 0;
}