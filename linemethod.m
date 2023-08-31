function x = linemethod(f, x0, x1, epsilon)

  while (abs(f(x1)) >= epsilon)
    fx0=f(x0);
    fx1=f(x1);
    sk=(fx1-fx0)/(x1-x0);
    x0=x1;
    x1=x1-(fx1/sk);
  end
  fprintf("%.3f",x1);

end
