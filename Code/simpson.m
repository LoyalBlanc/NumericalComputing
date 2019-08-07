function I=simpson(f,a,b,N)
%     f=@(x) x.^2
    h=(b-a)/N;
%     第一部分
    x1=linspace(a,b,N+1);
    y1=feval(f,x1);
    I1=2*sum(y1)-y1(1)-y1(N);
%     第二部分
    x2=linspace(a+h/2,b-h/2,N);
    y2=feval(f,x2);
    I2=4*sum(y2);
%     求和
    I=h*(I1+I2)/6;
end