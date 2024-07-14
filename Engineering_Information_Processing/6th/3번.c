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
/*
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
}*/
//3번
#include<stdio.h>
int main()
{
	int K;
	int a,b=1,c=1,i,count=1;
	printf("3 이상의 정수를 입력해주세요. ");
	scanf("%d",&K);
	if(K<3){
		printf("K가 너무 작습니다.\n");
		return 0;
	}
	else{
		while(1){
			a=b+c;
			c=b;
			b=a;
			count++;
			if(a>K){
				break;
			}
		}
		printf("K보다 큰 최소의 a_n은 n=%d인 %d입니다.\n",count,a);
	}
	return 0;
}