function [x,iter]=gs(A,b,tol)
    D=diag(diag(A)); L=D-tril(A); U=D-triu(A); x=zeros(size(b));
    for iter=1:1000
        x=(D-L)\(b+U*x);
        if norm(A*x-b)/norm(b)<tol, break, end
    end
    iter=iter+1;
end
