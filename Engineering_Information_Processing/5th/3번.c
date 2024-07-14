//1번
/*
#include<stdio.h>
int main()
{
	int a;
	for(a=1;a<=40;a++){
		if(a%3==0 || a%5==0){
			printf("%d\n",a);
		}
	}
	return 0;
}
*/

//2번
/*
#include<stdio.h>
int main()
{
	int count=0,sum=0,a,b,i,min;
	printf("서로 다른 자연수 2개를 입력해 주세요\n");
	scanf("%d %d",&a,&b);
	min= (a>=b) ? (b) : (a);
	for(i=1;i<=min;i++){
		if(a%i==0 && b%i==0){
			sum += i;
			printf("%d  ",i);
			count=count+1;
		}
	}
	printf("\n");
	printf("공약수의 개수는 총 %d개 입니다.\n",count);
	printf("모든 공약수들의 합은 %d입니다.\n",sum);
	return 0;
}
*/

//3번
#include<stdio.h>
int main()
{
	int N,K,i,j;
	printf("N과 K를 입력하시오 : ");
	scanf("%d %d",&N,&K);
	if(N>=K){
		printf("N<K인 숫자를 입력해주세요.\n");
	}
	else{
		for(i=K;i>=N;i--){
			if(i%3==0){
			j=i;
			}
		}
		if(j>=N && j<=K){
			printf("%d와 %d사이의 가장 작은 3의 배수 : %d\n",N,K,j);
		}
		else{
			printf("%d와 %d사이에는 3의 배수가 없습니다.\n",N,K);
		}
	}
	return 0;
}