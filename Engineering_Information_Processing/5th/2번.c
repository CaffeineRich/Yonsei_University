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