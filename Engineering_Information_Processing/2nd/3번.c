/*#include<stdio.h>
int main()
{
	float i;
	printf("cm단위로 변환할 inch를 입력하세요 : ");
	scanf("%f",&i);
	printf("cm으로 변환된 길이 : %5.2lf cm\n",i*2.54);
	return 0;
}*/
#include<stdio.h>
int main()
{
	int i=10000;
	int j=i-1600;
	printf("%d원 - 1600원 = %d원 입니다.\n\n",i,j);
	printf("[잔돈]\n");
	printf("오천원짜리는     %d개 입니다.\n",j/5000);
	printf("천원짜리는       %d개 입니다.\n",(j%5000)/1000);
	printf("오백원짜리는     %d개 입니다.\n",((j/5000)/1000)/500);
	printf("백원짜리는       %d개 입니다.\n",(j%1000)/100);
	return 0;
}