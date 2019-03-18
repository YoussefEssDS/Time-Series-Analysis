% Minimizes a multi-variable function with constraints on theire bounds. 
%Try different initializiation to find the best values that give the
%minimal mape.
function [x,fval]=minMapeArg(x0,fun)
lecture;
A=[];b=[];
Aeq=[];Beq=[];
lb=[0;-Inf;-Inf];ub=[1;Inf;Inf];
[x,fval]=fmincon(fun,x0,A,b,Aeq,Beq,lb,ub);
end
