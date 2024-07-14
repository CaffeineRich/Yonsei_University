//1¹ø
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
	printf("ÃÖ´ñ°ªÀº S[%d] = %d\n",n1,max);
	printf("ÃÖ¼Ú°ªÀº S[%d] = %d\n",n2,min);
	return 0;
}