//1��
/*
#include<stdio.h>
int sub(int a,int b)
{
	return (a-b);
}

int main()
{
	int a,b,c,min1,min2,max1,max2;
	printf("���� 3���� �Է����ּ���. ");
	scanf("%d %d %d",&a,&b,&c);
	min1=(a<=b) ? (a) : (b);
	min2=(c<=min1) ? (c) : (min1);
	max1=(a<=b) ? (b) : (a);
	max2=(max1<=c) ? (c) : (max1);
	printf("%d, %d\n",max2,min2);
	printf("���� ū ���� %d�� ���� ���� ���� %d�� ���� %d�Դϴ�.\n",max2,min2,sub(max2,min2));
	return 0;
}
*/

//2��
/*
#include<stdio.h>
#include<stdlib.h>
#include<math.h>
void compare(float a,float b)
{
	if(a<b){
		printf("x1,y1 ���� ���� �Ÿ��� �� ª���ϴ�.\n");
	}
	else if(a>b){
		printf("x2,y2 ���� ���� �Ÿ��� �� ª���ϴ�.\n");
	}
	else{
		printf("�� �Ÿ� ��� �����ϴ�.\n");
	}
}

int main()
{
	int a,b,x1,y1,x2,y2;
	float num1,num2;
	x1=rand()%101;
	x2=rand()%101;
	y1=rand()%101;
	y2=rand()%101;
	printf("�� ���ڸ� �Է����ּ���: ");
	scanf("%d %d",&a,&b);
	num1=sqrt((a-x1)*(a-x1)+(b-y1)*(b-y1));
	num2=sqrt((a-x2)*(a-x2)+(b-y2)*(b-y2));
	printf("(%d, %d)�� (%d, %d) ������ �Ÿ�: %.2f\n",a,b,x1,y1,num1);
	printf("(%d, %d)�� (%d, %d) ������ �Ÿ�: %.2f\n",a,b,x2,y2,num2);
	compare(num1,num2);
	printf("\n");
	return 0;
}*/
//3��
#include<stdio.h>
int add(int n)
{
	int a;
	if(n==0) a=0;
	else if(n==1) a=1;
	else{
		a=n+add(n-1);
	}
	return a;
}

int main()
{
	int n;
	printf("1�̻��� ������ �Է��Ͻÿ� : ");
	scanf("%d",&n);
	if(n<1) return 0;
	else{
		printf("1���� %d������ ���� ���� �� : %d\n",n,add(n));
	}
	return 0;
}