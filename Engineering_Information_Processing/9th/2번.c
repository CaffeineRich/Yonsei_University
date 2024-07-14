//1번
/*
#include<stdio.h>
#include<stdlib.h>
#include<time.h>
int main()
{
	int S[50]={0};
	int i,max=0,min=999,n1,n2;
	srand(time(NULL));

	printf("\n");
	for(i=0;i<50;i++){
		S[i]=1+rand()%100;
	}
	for(i=0;i<50;i++){
		printf("%d ",S[i]);
	}
	printf("\n");
	for(i=0;i<50;i++){
		if(max<=S[i]){
			max=S[i];
			n1=i;
		}
	}
	for(i=0;i<50;i++){
		if(min>=S[i]){
			min=S[i];
			n2=i;
		}
	}
	printf("최댓값은 S[%d] = %d\n",n1,max);
	printf("최솟값은 S[%d] = %d\n",n2,min);
	return 0;
}
*/
//2번
#include<stdio.h>
int main()
{
	int A[3][3]={{5,4,1},{3,6,2},{1,4,0}};
	int B[3][3]={{7,1,6},{2,4,1},{1,6,2}};
	int C[3][3]={0};
	int D[3][3]={0};
	int i,j;
	for(i=0;i<3;i++){
		for(j=0;j<3;j++){
			C[i][j]=A[i][j]+B[i][j];
		}
	}
		for(i=0;i<3;i++){
		for(j=0;j<3;j++){
			D[i][j]=A[i][j]-B[i][j];
		}
		}
	printf("C = \n");
	for(i=0;i<3;i++){
		for(j=0;j<3;j++){
	printf("%3d",C[i][j]);
		}
		printf("\n");
	}
	printf("D = \n");
		for(i=0;i<3;i++){
		for(j=0;j<3;j++){
	printf("%3d",D[i][j]);
		}
		printf("\n");
	}
return 0;
}