# pipe he result to sort -n |uniq -c|sort -n
for(a=3,292, for(b=a+1,498, if(issquare(a^2+b^2), print(a+b+round(sqrt(a^2+b^2))))))

