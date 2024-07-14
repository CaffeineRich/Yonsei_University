//1번
#include<stdio.h>
int main()
{
	int i;
	while(1){
		printf("숫자를 입력해주세요 : ");
		scanf("%d",&i);
		if(i%2!=0){
			break;
		}
	}
}