function [x,iter]=sor(A,b,omega,tol)
    D=diag(diag(A)); L=D-tril(A); U=D-triu(A); x=zeros(size(b));
    for iter=1:1000
        x=(D-omega*L)\(omega*b+((1-omega)*D+omega*U)*x);
        if norm(A*x-b)/norm(b)<tol, break, end
    end
    iter=iter+1;
end
