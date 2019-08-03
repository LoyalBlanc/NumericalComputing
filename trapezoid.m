function I=trapezoid(f,a,b,N)
%     f=@(x) x.^2
    h=(b-a)/N;
    x=linspace(a,b,N+1);
    y=feval(f,x);
    I=h*(sum(y)-0.5*(y(1)+y(N)));
end