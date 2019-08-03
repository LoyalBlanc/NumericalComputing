function [x,iter]=aitken(f,L,a,b)
%   f=@(x) (x+1)/(log(x)+1)
%   [x,iter]=aitken(f,0.132,1.5,2)
%   x=1.7632
    x_q=0; x=(a+b)/2;
    for iter=1:1000
        x=(feval(f,x)-L*x)/(1-L);
        if abs(x_q-x)<0.0001, return; else, x_q=x; end
    end
    iter=iter+1;
end