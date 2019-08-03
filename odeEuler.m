function [x,y]=odeEuler(f,y0,a,b,N)
    h=(b-a)/N; x=a:h:b; y=zeros(N); y(1)=y0;
    for n=1:N
%       ����ŷ��
        y(n+1)=y(n)+h*feval(f,x(n),y(n));
%       �Ľ�ŷ��
        yp=y(n-1)+2*h*feval(f,x(n),y(n));
        yc=y(n)+h*feval(f,x(n+1),yp);
        y(n+1)=(yp+yc)/2;
    end
end