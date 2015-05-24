--for(a=3,292, for(b=a+1,498, if(issquare(a^2+b^2), print(a+b+round(sqrt(a^2+b^2))))))
a=[(m^2-n^2, 2*m*n, 2*c*m*(m+n))|n<-[1..15], m<-[(n+1)..22],c<-[1..83],(not $elem c $map (^2) [2..9]), 2*c*m*(m+n)<1000]
