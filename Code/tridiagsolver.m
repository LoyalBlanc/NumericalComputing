function x=tridiagsolver(a,b,c,d)
    n=length(b);
    l(1)=b(1);y(1)=d(1)/l(1);u(1)=c(1)/l(1);
    for i=2:n-1
        l(i)=b(i)- a(i-1)*u(i-1);
        y(i)=(d(i)-y(i-1)*a(i-1))/l(i);
        u(i)=c(i)/l(i);
    end
    l(n)=b(n)-a(n-1)*u(n-1);
    y(n)=(d(n)-y(n-1)*a(n-1))/l(n);
    x(n)=y(n);
    for i=n-1:-1:1
        x(i)=y(i)-u(i)*x(i+1);
    end
end