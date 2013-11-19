# pari/gp的 && ||  & | 都没有短路性质，因此，改用if来实现了。
# 还有，就是pari/gp似乎不懂得尾递归的优化。害得我手动递归了。
# 好在，在递归过深时，
# pari/gp会进入break模式，而里面保存着当时的变量值。
# 从consec(210)开始，经过四五次手动递归，最终得到134043。

consec(x)=
{
   if(matsize(factor(x))[1] == 4,
      if(matsize(factor(x+1))[1] == 4, 
         if(matsize(factor(x+2))[1] == 4,
           if(matsize(factor(x+3))[1] == 4,
            print(x)
           ,consec(x+4)) 
         ,consec(x+3))
      ,consec(x+2))
   ,consec(x+1))
}