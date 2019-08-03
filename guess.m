function x=guess(A,b)
    n=size(A,1);
    for i=1:n-1
%         找到列主元
        [~,p]=max(abs(A(i:n,i)));   p=p+i-1;
        A([i,p],:)=A([p,i],:);  b([i,p])=b([p,i]);
        for k=i+1:n
            r=-A(k,i)/A(i,i);
            A(k,:)=A(k,:)+r*A(i,:); b(k)=b(k)+r*b(i);
        end
    end
    x=zeros(n,1);
    for k=n:-1:1
        x(k)=(b(k)-A(k,i+1:n)*x(i+1:n))/A(k,k);
    end
end
