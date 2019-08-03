function I=midpoint(f,a,b,N)
%     f=@(x) x.^2
    h=(b-a)/N;
    x=linspace(a+h/2,b-h/2,N);
    y=feval(f,x);
    I=h*sum(y);
end