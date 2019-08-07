function g=choleskey(A)
    n=size(A,1);
    g=zeros(n,n);
    for i=1:n
        g(i,i)=sqrt(A(i,i)-sum(g(i,1:i-1).^2));
        for k=i+1:n
            g(k,i)=(A(k,i)-sum(g(k,1:i-1).*g(i,1:i-1)))/g(i,i);
        end
    end
end