#include <stdio.h>
int main(int argc, char *argv[])
{
     int p1,p2,p5,p10,p20,p50,p100;

     for (p1 = 0; p1 <= 200; p1++)
	  for (p2 = 0; p2 <= 100; p2++)
	       for (p5 = 0; p5 <= 40; p5++)
		    for (p10 = 0; p10 <=20; p10++)
			 for (p20 = 0; p20 <= 10; p20++)
			      for (p50 = 0; p50 <= 4; p50++)
				   for (p100 = 0; p100 <= 2; p100++)
				   {
					if (p1*1+p2*2+p5*5+p10*10+p20*20+p50*50+p100*100 == 200)
					{
					     printf("%d %d %d %d %d %d %d\n", p1, p2, p5, p10, p20, p50, p100);
					}
					    
				   }
     return 0;
}
