//1번
/*
#include<stdio.h>
int main()
{
	int a,b,i,j,sum=0,min,max;
	printf("두 정수를 입력하시오 : ");
	scanf("%d %d",&a,&b);
	max=(a<=b) ? (b) : (a);
	min=(a<=b) ? (a) : (b);
	printf("두 수 사이의 모든 솟수 : ");
	for(i=min;i<=max;i++){
		for(j=2;j<=i;j++){
			if(i%j==0) break;
		}
		if(i==j){
			printf("%3d",i);
			sum += i;
		}
	}
	printf("\n모든 솟수의 총 합은 : %d\n",sum);
	return 0;
}
*/

//2번
#include<stdio.h>
int main()
{
	int a,b,c,i;
	printf("영어 점수를 입력하세요 : ");
	scanf("%d",&a);
		printf("수학 점수를 입력하세요 : ");
	scanf("%d",&b);
		printf("과학 점수를 입력하세요 : ");
	scanf("%d",&c);

	printf("영어 : ");
	for(i=1;i<=a;i++){
		printf("#");
	}
		printf("\n수학 : ");
	for(i=1;i<=b;i++){
		printf("#");
	}
			printf("\n과학 : ");
	for(i=1;i<=c;i++){
		printf("#");
	}
	printf("\n");
	return 0;
}