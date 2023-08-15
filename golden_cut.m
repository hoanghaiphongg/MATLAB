f = @(x) x*(x-1.5);
#g = @(a,b) {a+(b-a)*0.382,a+(b-a)*0.618};
function [x1 x2]=g(a,b)
  x1 = a+(b-a)*0.382;
  x2 = a+(b-a)*0.618;
end
a=0;b=1;
eps=1e-5;
[x1,x2]=g(a,b);
f1=f(x1);f2=f(x2);
while(abs(b-a)>2*eps)
   if f1<f2
      b=x2;x2=x1;f2=f1;
      [x1,~]=g(a,b);
      f1 = f(x1);
   elseif
      a=x1;x1=x2;f1=f2;
      [~,x2]=g(a,b);
      f2 = f(x2);
   end
end
fprintf("Gia tri toi uu %.4f\n",(a+b)/2);
