//1��
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
	printf("%d, %d, %d �� ���� ���� ���� %d�Դϴ�.\n",a,b,c,min);
	return 0;
}
*/

//2��
/*
#include<stdio.h>
int main()
{
	int A,B;
	int max,min,result1,result2;
	printf("������ �Է����ּ���.\n");
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
		printf("%d��(��) %d(��)�� ������ ���� %d �Դϴ�.\n",max,min,result1);
	}
	else{
		printf("%d��(��) %d(��)�� ������ �������� %d �Դϴ�.\n",max,min,result2);
	}
	return 0;
}
*/

//3��
#include<stdio.h>
int main()
{
	int A=10,B=5;
	char ch;
	printf("�����ڸ� �Է��Ͻÿ�.\n");
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
				printf("�����ڰ� �ƴմϴ�.\n");
				break;
	}
	return 0;
}