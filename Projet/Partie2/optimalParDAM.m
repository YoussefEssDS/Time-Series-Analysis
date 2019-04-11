function [mapeMin,parameters]=optimalParDAM(fun,x0)
    lecture;
    A=[];b=[];
    Aeq=[];Beq=[];
    lb=[0,0,0,0,-Inf,-Inf];ub=[1,1,1,1,Inf,Inf];
    [mapeMin,parameters]=fmincon(fun,x0,A,b,Aeq,Beq,lb,ub);
end