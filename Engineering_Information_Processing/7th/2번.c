//1��
/*
#include<stdio.h>
int main()
{
	int a,b,i,j,sum=0,min,max;
	printf("�� ������ �Է��Ͻÿ� : ");
	scanf("%d %d",&a,&b);
	max=(a<=b) ? (b) : (a);
	min=(a<=b) ? (a) : (b);
	printf("�� �� ������ ��� �ڼ� : ");
	for(i=min;i<=max;i++){
		for(j=2;j<=i;j++){
			if(i%j==0) break;
		}
		if(i==j){
			printf("%3d",i);
			sum += i;
		}
	}
	printf("\n��� �ڼ��� �� ���� : %d\n",sum);
	return 0;
}
*/

//2��
#include<stdio.h>
int main()
{
	int a,b,c,i;
	printf("���� ������ �Է��ϼ��� : ");
	scanf("%d",&a);
		printf("���� ������ �Է��ϼ��� : ");
	scanf("%d",&b);
		printf("���� ������ �Է��ϼ��� : ");
	scanf("%d",&c);

	printf("���� : ");
	for(i=1;i<=a;i++){
		printf("#");
	}
		printf("\n���� : ");
	for(i=1;i<=b;i++){
		printf("#");
	}
			printf("\n���� : ");
	for(i=1;i<=c;i++){
		printf("#");
	}
	printf("\n");
	return 0;
}