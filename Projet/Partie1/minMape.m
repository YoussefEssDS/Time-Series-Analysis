function [x,fval]=minMape(x0,fun)
lecture;
A=[];b=[];
Aeq=[];Beq=[];
lb=[0;0;0;-Inf;-Inf];ub=[1;1;1;Inf;Inf];
[x,fval]=fmincon(fun,x0,A,b,Aeq,Beq,lb,ub);
end