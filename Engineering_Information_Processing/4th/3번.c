//1번
/*
#include<stdio.h>
int main()
{
	int a,b,c;
	int min;
	scanf("%d %d %d",&a,&b,&c);
	if(a<=b&&a<=c){
		min=a;
	}
	else if(b<=a&&b<=c){
		min=b;
	}
	else if(c<=a&&c<=b){
		min=c;
	}
	printf("%d, %d, %d 중 가장 작은 수는 %d입니다.\n",a,b,c,min);
	return 0;
}
*/

//2번
/*
#include<stdio.h>
int main()
{
	int A,B;
	int max,min,result1,result2;
	printf("정수를 입력해주세요.\n");
	scanf("%d %d",&A,&B);
	if(A>=B){
		max=A;
		min=B;
	}
	else if(A<=B){
		max=B;
		min=A;
	}
	result1=max/min;
	result2=max%min;
	if(result2==0){
		printf("%d을(를) %d(으)로 나누면 몫은 %d 입니다.\n",max,min,result1);
	}
	else{
		printf("%d을(를) %d(으)로 나누면 나머지가 %d 입니다.\n",max,min,result2);
	}
	return 0;
}
*/

//3번
#include<stdio.h>
int main()
{
	int A=10,B=5;
	char ch;
	printf("연산자를 입력하시오.\n");
	scanf("%c",&ch);
	switch(ch){
	case '+':
		printf("%d %c %d = %d\n",A,ch,B,A+B);
		break;

			case '-':
		printf("%d %c %d = %d\n",A,ch,B,A-B);
		break;

			case '*':
		printf("%d %c %d = %d\n",A,ch,B,A*B);
		break;

			case '/':
		printf("%d %c %d = %d\n",A,ch,B,A/B);
		break;

			case '%':
		printf("%d %c %d = %d\n",A,ch,B,A%B);
		break;

			default:
				printf("연산자가 아닙니다.\n");
				break;
	}
	return 0;
}