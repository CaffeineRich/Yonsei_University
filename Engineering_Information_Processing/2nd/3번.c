/*#include<stdio.h>
int main()
{
	float i;
	printf("cm������ ��ȯ�� inch�� �Է��ϼ��� : ");
	scanf("%f",&i);
	printf("cm���� ��ȯ�� ���� : %5.2lf cm\n",i*2.54);
	return 0;
}*/
#include<stdio.h>
int main()
{
	int i=10000;
	int j=i-1600;
	printf("%d�� - 1600�� = %d�� �Դϴ�.\n\n",i,j);
	printf("[�ܵ�]\n");
	printf("��õ��¥����     %d�� �Դϴ�.\n",j/5000);
	printf("õ��¥����       %d�� �Դϴ�.\n",(j%5000)/1000);
	printf("�����¥����     %d�� �Դϴ�.\n",((j/5000)/1000)/500);
	printf("���¥����       %d�� �Դϴ�.\n",(j%1000)/100);
	return 0;
}