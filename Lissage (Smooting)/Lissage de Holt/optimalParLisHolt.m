% We will use the constrained minimization function of Matlab to find the
% best parameters that yield the minimal MAPE. 

function [mapeMin,parameters]=optimalParLisHolt(fun,x0)
    lecture;
    A=[];b=[];
    Aeq=[];Beq=[];
    lb=[-Inf,-Inf,0,0];ub=[Inf,Inf,1,1];
    [mapeMin,parameters]=fmincon(fun,x0,A,b,Aeq,Beq,lb,ub);
end