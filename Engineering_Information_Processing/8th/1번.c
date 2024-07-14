//1번
#include<stdio.h>
int sub(int a,int b)
{
	return (a-b);
}

int main()
{
	int a,b,c,min1,min2,max1,max2;
	printf("숫자 3개를 입력해주세요. ");
	scanf("%d %d %d",&a,&b,&c);
	min1=(a<=b) ? (a) : (b);
	min2=(c<=min1) ? (c) : (min1);
	max1=(a<=b) ? (b) : (a);
	max2=(max1<=c) ? (c) : (max1);
	printf("%d, %d\n",max2,min2);
	printf("가장 큰 숫자 %d와 가장 작은 숫자 %d의 차는 %d입니다.\n",max2,min2,sub(max2,min2));
	return 0;
}
	