function [x,iter]=newton_downhill(f,g,x0)
%   f=@(x) x.^2+sin(10*x)-1;g=@(x) 2*x+10*cos(10*x);
    x=x0;
    fx=feval(f,x);
    for iter=1:100
        if norm(fx)<eps, return; end
        d=-fx/feval(g,x);
        lambda=1;
        xn=x+lambda*d;
        fn=feval(f,xn);
        while norm(fn)>norm(fx)
            lambda=lambda/2;
            xn=x+lambda*d;
            fn=feval(f,xn);
            if lambda<eps, error('Line search fails.'); end
        end
        x=xn;
        fx=fn;        
    end
    iter=iter+1;
end