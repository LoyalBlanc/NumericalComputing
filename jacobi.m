function [x,iter]=jacobi(A,b,tol)
    D=diag(diag(A)); x=zeros(size(b));
    for iter=1:1000
        x=x+D\(b-A*x);
        if norm(A*x-b)/norm(b)<tol, break, end
    end
    iter=iter+1;
end