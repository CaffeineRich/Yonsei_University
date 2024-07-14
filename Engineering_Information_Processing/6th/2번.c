//1번
/*
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
}*/
//2번
#include<stdio.h>
int main()
{
	int N,i,j;
	printf("N을 입력해주세요 : ");
	scanf("%d",&N);
	for(i=N;i>=1;i--){
		for(j=1;j<=i;j++){
			printf("*");
		}
		printf("\n");
	}
	return 0;
}