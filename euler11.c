#include <stdio.h>
int A[23][23];
int max;
void findmax(int, int);
int main(int argc, char *argv[])
{
     int i, j;
     for (i = 0; i < 20; i++)
	  for (j = 0; j < 20; j++)
	       scanf("%d", &A[i][j]);


     for (i = 0; i < 20; i++)
	  for (j = 0; j < 20; j++)
	       findmax(i, j);

     printf("%d\n", max);

     return 0;
}

void findmax(int i, int j)
{
     int k;
     int r = 1;
     for (k = 0; k < 4; k++)
	  r *= A[i+k][j];
     if (r > max)
	  max = r;

     r = 1;
     for (k = 0; k < 4; k++)
	  r *= A[i][j+k];
     if (r > max)
	  max = r;

     r = 1;
     for (k = 0; k < 4; k++)
	  r *= A[i+k][j+k];
     if (r > max)
	  max = r;

     r = 1;
     for (k = 0; k < 4; k++)
	  r *= A[i+3-k][j+k];
     if (r > max)
	  max = r;
}
