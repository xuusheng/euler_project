# 第一个比较复杂的gp程序，gp也是支持break,return的。
# 因为连续质数的长度最长为546。所以从546往向找，一旦找到，就结束。
for(p=1,547,m=547-p;forprime(i=1,200,j=i;s=j;for(k=1,m,j=nextprime(j+1);s+=j);if(isprime(s) && s < 1000000,print(s" "m);return)))
