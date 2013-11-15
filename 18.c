#include <stdio.h>
#define M 15
int A[M][M];

int main(int argc, char *argv[])
{
     int i, j;
     for (i = 0; i < M; i++)
	  for(j = 0; j <= i; j++)
	       scanf("%d", &A[i][j]);

     for (i = M-1; i > 0; i--)
     {
	  for(j = 0; j < i; j++)
	  {
	       if (A[i][j] > A[i][j+1])
		    A[i-1][j] += A[i][j];
	       else
		    A[i-1][j] += A[i][j+1];
	  }
     }
     
     printf("%d\n", A[0][0]);
     return 0;
}
