/* borrow from forum, slightly modify */
#include <iostream>
using namespace std;

const int nN=250000;
int p[nN];
int main(void)
{

	/* build a list of the number of
	 * distinct prime factors. */
	for(int i=2;i<nN;i+=2)
		p[i]=1;
	for(int i=3;i<nN;i+=2)
	{
		if(p[i]>0)
			continue;
		p[i]=1;
		for(int j=i*2;j<nN;j+=i)
			++p[j];
	}


	/* find the four consecutive numbers
	 * with 4 distinct prime numbers*/
	for(int i=2;i<nN-3;++i)
	{
		if(p[i]==4 && p[i+1]==4 && p[i+2]==4 && p[i+3]==4)
		{
			cout<<i<<endl;
			break;
		}
	}
	return 0;
}
