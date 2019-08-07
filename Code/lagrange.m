function yh=lagrange(x,y,xh)
    yh=zeros(size(xh));
    n=length(x);
    for k=1:n
        lk = ones(size(xh));
%         ²åÖµ»ùº¯Êý
        for j=[1:k-1 k+1:n]
            lk=lk.*(xh-x(j))/(x(k)-x(j));
        end
        yh=yh+y(k)*lk;
    end
end