//1��
/*
#include<stdio.h>
int main()
{
	int i;
	while(1){
		printf("���ڸ� �Է����ּ��� : ");
		scanf("%d",&i);
		if(i%2!=0){
			break;
		}
	}
}*/
//2��
/*
#include<stdio.h>
int main()
{
	int N,i,j;
	printf("N�� �Է����ּ��� : ");
	scanf("%d",&N);
	for(i=N;i>=1;i--){
		for(j=1;j<=i;j++){
			printf("*");
		}
		printf("\n");
	}
	return 0;
}*/
//3��
#include<stdio.h>
int main()
{
	int K;
	int a,b=1,c=1,i,count=1;
	printf("3 �̻��� ������ �Է����ּ���. ");
	scanf("%d",&K);
	if(K<3){
		printf("K�� �ʹ� �۽��ϴ�.\n");
		return 0;
	}
	else{
		while(1){
			a=b+c;
			c=b;
			b=a;
			count++;
			if(a>K){
				break;
			}
		}
		printf("K���� ū �ּ��� a_n�� n=%d�� %d�Դϴ�.\n",count,a);
	}
	return 0;
}