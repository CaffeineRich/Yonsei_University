//1��
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

//2��
#include<stdio.h>
int main()
{
	int count=0,sum=0,a,b,i,min;
	printf("���� �ٸ� �ڿ��� 2���� �Է��� �ּ���\n");
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
	printf("������� ������ �� %d�� �Դϴ�.\n",count);
	printf("��� ��������� ���� %d�Դϴ�.\n",sum);
	return 0;
}