//1��
/*
#include<stdio.h>
int main()
{
	int a=10,b=5,c=15,d=7;
	char ch;
	printf("� ������ ������ ���Ͻó���? ");
	scanf("%c",&ch);
	if(ch=='a'){
		printf("a�� ����� �� : %d\n",a);
		printf("a�� �ּ� : %u\n",&a);
	}
	else if(ch=='b'){
		printf("b�� ����� �� : %d\n",b);
		printf("b�� �ּ� : %u\n",&b);
	}
	else if(ch=='c'){
		printf("c�� ����� �� : %d\n",c);
		printf("c�� �ּ� : %u\n",&c);
	}
	else if(ch=='d'){
		printf("d�� ����� �� : %d\n",d);
		printf("d�� �ּ� : %u\n",&d);
	}
	else return 0;
}
*/
//2��
/*
#include<stdio.h>
void divide(int k,int s,int *q,int *r)
{
	*q=k/s;
	*r=k%s;
}
int main()
{
	int k,s,q,r;
	printf("K�� S�� �Է��ϼ���.\n");
	scanf("%d %d",&k,&s);
	divide(k,s,&q,&r);
	printf("�� : %d\n",q);
	printf("������ : %d\n",r);
	return 0;
}
*/
//3��
#include<stdio.h>
#include<stdlib.h>
#include<time.h>
void average(int A[],int size, int *avg)
{
	int i,sum=0;
	for(i=0;i<size;i++){
		sum+=A[i];
	}
	*avg=sum/10;
}
int main()
{
	int A[10]={0};
	int i,avg;
	srand(time(NULL));
	for(i=0;i<10;i++){
		A[i]=rand()%10+1;
	}
	printf("A = ");
	for(i=0;i<10;i++){
		printf("%d ",A[i]);
	}
	printf("\n");
	average(A,10,&avg);
	printf("���: %d\n",avg);
	return 0;
}