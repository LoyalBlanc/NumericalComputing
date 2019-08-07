function [x2,iter]=secant(f,xa,xb)
    x0=xa;
    x1=xb;
    fx=feval(f,x1);
    for iter=1:1000        
        x2=x1-fx*(x1-x0)/(fx-feval(f,x0));
        fx=feval(f,x2);
        if norm(fx)<eps, return; end
        x0=x1;
        x1=x2;
    end
    iter=iter+1;
end