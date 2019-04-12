function [minMape,optiPara]=optimalPar(fun,x0)
    lecture;
    A=[];b=[];
    Aeq=[];Beq=[];
    lb=[0,0,0,-Inf,-Inf];ub=[1,1,1,Inf,Inf];
    [minMape,optiPara]=fmincon(fun,x0,A,b,Aeq,Beq,lb,ub);
end
