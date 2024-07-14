#include<stdio.h>
int main()
{
	float i;
	printf("cm단위로 변환할 inch를 입력하세요 : ");
	scanf("%f",&i);
	printf("cm으로 변환된 길이 : %5.2lf cm\n",i*2.54);
	return 0;
}