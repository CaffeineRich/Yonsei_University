//1¹ø
#include<stdio.h>
int main()
{
	int a;
	for(a=1;a<=40;a++){
		if(a%3==0 || a%5==0){
			printf("%d\n",a);
		}
	}
	return 0;
}