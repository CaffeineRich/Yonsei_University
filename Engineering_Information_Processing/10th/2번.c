//1번
/*
#include<stdio.h>
#include<stdlib.h>
#include<time.h>
int main()
{
	int S[5]={0};
	int K[5]={0};
	int i,j;
	srand(time(NULL));
	for(i=0;i<5;i++){
		S[i]=rand()%10;
		for(j=i;j>0;j--){
			if(S[i]==S[j-1]) i--;
		}
	}
	printf("S: ");
		for(i=0;i<5;i++){
		printf("%2d%s",S[i],(i==4)?("\n"):(","));
	}

		for(i=0;i<5;i++){
		K[i]=rand()%10;
				for(j=i;j>0;j--){
			if(K[i]==K[j-1]) i--;
		}
	}

	printf("K: ");
		for(i=0;i<5;i++){
		printf("%2d%s",K[i],(i==4)?("\n"):(","));
	}
		printf("O: ");
		for(i=0;i<5;i++){
			for(j=0;j<5;j++){
			if(S[i]==K[j]) printf("%d ",S[i]);
			}
		}
		printf("\n");
		return 0;
}*/
//2번

#include<stdio.h>
#include<stdlib.h>
#include<time.h>
int main()
{
	int A[10]={0};
	int B[10]={0};
	int index1,index2,i,j,change1,change2;
	srand(time(NULL));
	for(i=0;i<10;i++){
		A[i]=rand()%20+1;
	for(j=i;j>0;j--){
		if(A[i]==A[j-1]) i--;
	}
	}
	for(i=0;i<10;i++){
		change1=A[i];
		index1=i;
		for(j=i;j<10;j++){
			if(change1>A[j]){
				change1=A[j];
				index1=j;
			}
		}
		A[index1]=A[i];
		A[i]=change1;
	}

		for(i=0;i<10;i++){
		B[i]=rand()%20+1;
	for(j=i;j>0;j--){
		if(B[i]==B[j-1]) i--;
	}
	}
	for(i=0;i<10;i++){
		change2=B[i];
		index2=i;
		for(j=i;j<10;j++){
			if(change2>B[j]){
				change2=B[j];
				index2=j;
			}
		}
		B[index2]=B[i];
		B[i]=change2;
	}
	printf("배열 A에 저장된 숫자\n");
	for(i=0;i<10;i++){
		printf("\t%2d",A[i]);
	}
	printf("\n배열 B에 저장된 숫자\n");
	for(i=0;i<10;i++){
		printf("\t%2d",B[i]);
	}
	printf("\n");
	return 0;
}

/*
#include<stdio.h>
int main()
{
	int a[4][4]={{90,40,75,42},{95,97,92,88},{100,30,40,100},{70,75,80,77}};
	double avr[4]={0};
	int index,change;
	int sum=0,i,j;
	for(i=0;i<4;i++){
		sum=0;
		for(j=0;j<4;j++){
			sum+=a[i][j];
		}
		avr[i]=sum/4.0;
	}
	for(i=0;i<4;i++){
		change=avr[i];
		for(j=i;j<4;j++){
			if(change>avr[j]){
				change=avr[j];
				index=j;
			}
		}
		avr[index]=avr[i];
		avr[i]=change;
	}

	printf(" \t수학\t영어\t국어\t과학\t석차\n");
	for(i=0;i<4;i++){
		for(j=0;j<4;j++){
			printf("\t%2d",a[i][j]);
		}
	}
	printf("\n");
	return 0;
}
*/