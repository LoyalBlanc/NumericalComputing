function [l,u]=my_lu(A)
    n=size(A,1);
    u=zeros(n,n);
    l=zeros(n,n);
    for k=1:n
%         ¶ÅÀûÍÐ¶û
        for j=k:n
            u(k,j)=A(k,j)-sum(l(k,1:k-1)*u(1:k-1,j));
        end
        for i=k:n
            l(i,k)=(A(i,k)-sum(l(i,1:k-1)*u(1:k-1,k)))/u(k,k);
        end
%         ¿ËÂåÍÑ
%         for i=k:n
%             l(i,k)=A(i,k)-sum(l(i,1:k-1)*u(1:k-1,k));
%         end
%         for j=k:n
%             u(k,j)=(A(k,j)-sum(l(k,1:k-1)*u(1:k-1,j)))/l(k,k);
%         end
    end
end