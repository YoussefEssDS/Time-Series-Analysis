function mape=MapeDAM(x)
    lecture; % On lit y et I.
    mape=0;
    alpha=x(1);
    gamma=x(2);
    phi=x(3);
    delta=x(4);
    S2=x(5);
    T2=x(6);
    len=length(y);
    S3=alpha*y(3)/I(3)+(1-alpha)*(S2+phi*T2);
    T3=gamma*(S3-S2)+(1-gamma)*phi*T2;
    St=alpha*y(4)/I(4)+(1-alpha)*(S3+phi*T3);
    Tt=gamma*(St-S3)+(1-gamma)*phi*T3;
    for i=5:len
        Ft=(St+phi*Tt)*I(i-4);
        mape=mape+100*abs(Ft-y(i))/y(i);
        tempS=St;tempT=Tt;
        St=alpha*y(i)/I(i-4)+(1-alpha)*(tempS+phi*tempT);
        Tt=gamma*(St-tempS)+(1-gamma)*phi*tempT;
        I(i)=delta*y(i)/St+(1-delta)*I(i-4);
    end
    mape=mape/(len-4);
end