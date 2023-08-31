function solve(f,x0,epsilon)
  while(f(x0)>=epsilon)
        x0=x0-f(x0)/df(x0);
  end
  fprintf("%.3f",x0);
 end
