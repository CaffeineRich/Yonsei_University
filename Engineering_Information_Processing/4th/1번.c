//1��
#include<stdio.h>
int main()
{
	int a,b,c;
	int min;
	scanf("%d %d %d",&a,&b,&c);
	if(a<=b&&a<=c){
		min=a;
	}
	else if(b<=a&&b<=c){
		min=b;
	}
	else if(c<=a&&c<=b){
		min=c;
	}
	printf("%d, %d, %d �� ���� ���� ���� %d�Դϴ�.\n",a,b,c,min);
	return 0;
}