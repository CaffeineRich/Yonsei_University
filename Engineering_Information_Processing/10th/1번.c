//1¹ø
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
}