//1번
/*
#include<stdio.h>
int sub(int a,int b)
{
	return (a-b);
}

int main()
{
	int a,b,c,min1,min2,max1,max2;
	printf("숫자 3개를 입력해주세요. ");
	scanf("%d %d %d",&a,&b,&c);
	min1=(a<=b) ? (a) : (b);
	min2=(c<=min1) ? (c) : (min1);
	max1=(a<=b) ? (b) : (a);
	max2=(max1<=c) ? (c) : (max1);
	printf("%d, %d\n",max2,min2);
	printf("가장 큰 숫자 %d와 가장 작은 숫자 %d의 차는 %d입니다.\n",max2,min2,sub(max2,min2));
	return 0;
}
*/

//2번
/*
#include<stdio.h>
#include<stdlib.h>
#include<math.h>
void compare(float a,float b)
{
	if(a<b){
		printf("x1,y1 까지 가는 거리가 더 짧습니다.\n");
	}
	else if(a>b){
		printf("x2,y2 까지 가는 거리가 더 짧습니다.\n");
	}
	else{
		printf("두 거리 모두 같습니다.\n");
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
	printf("두 숫자를 입력해주세요: ");
	scanf("%d %d",&a,&b);
	num1=sqrt((a-x1)*(a-x1)+(b-y1)*(b-y1));
	num2=sqrt((a-x2)*(a-x2)+(b-y2)*(b-y2));
	printf("(%d, %d)와 (%d, %d) 사이의 거리: %.2f\n",a,b,x1,y1,num1);
	printf("(%d, %d)와 (%d, %d) 사이의 거리: %.2f\n",a,b,x2,y2,num2);
	compare(num1,num2);
	printf("\n");
	return 0;
}*/
//3번
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
	printf("1이상의 정수를 입력하시오 : ");
	scanf("%d",&n);
	if(n<1) return 0;
	else{
		printf("1부터 %d까지의 수를 더한 값 : %d\n",n,add(n));
	}
	return 0;
}