function [t,v,iter]=eig_power_inv(A,p)
    A=A-p*eye(size(A,1));
    v_q=[0,0,0]; v=[1;1;1];
    for iter=1:1000
        [~,index]=max(abs(v)); t=v(index);
        u=v/t; v=A\u;
        if norm(v-v_q)<0.0001, t=1/t+p;return; 
        else, v_q=v; end
    end
    iter=iter+1;
end

