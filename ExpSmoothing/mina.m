function [x,fval]=mina() 
    minn=[];
    lecture;
    A=[];
    b=[];
    Aeq=[];
    Beq=[];
    lb=[0;-Inf];
    ub=[1;Inf];
    x0=[0.3,mean([y(1),y(2),y(3)])];
    [x,fval]=fmincon(@MapeLES,x0,A,b,Aeq,Beq,lb,ub);
end

    