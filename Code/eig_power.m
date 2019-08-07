function [t,v,iter]=eig_power(A)
    v_q=[0,0,0]; v=[1;1;1];
    for iter=1:1000
        [~,index]=max(abs(v)); t=v(index);
        u=v/t; v=A*u;
        if norm(v-v_q)<0.0001, return; 
        else, v_q=v; end
    end
    iter=iter+1;
end