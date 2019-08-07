function yh=newton_interpolation(x,y,xh)
    n=length(x); 
    yh=y(1);
    p(1,:)=y;
    for i=2:n
%         求差商
        p(i,1:n+1-i)=diff(p(i-1,1:n+2-i))./(x(i:n)-x(1:n+1-i));
%         求基函数
        lk = ones(size(xh));
        for j=1:i-1
            lk=lk.*(xh-x(j));
        end
        yh=yh+p(i,1)*lk;
    end
end
