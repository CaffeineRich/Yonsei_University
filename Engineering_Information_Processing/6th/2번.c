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
}