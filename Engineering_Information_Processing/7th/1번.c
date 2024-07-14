//1번
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

