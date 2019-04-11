function mape=MapeDAN(x)
    lecture;
    alpha=x(1);
    delta=x(2);
    phi=x(3);
    St=x(4);
    Tt=x(5);
    mape=0;
    len=length(y);
    Ft=St+phi*Tt;
    for i=2:len
        mape=mape+100*abs(y(i)-Ft)/y(i);
        tempS=St;tempT=Tt;
        St=alpha*y(i)+(1-alpha)*(tempS+phi*tempT);
        Tt=delta*(St-tempS)+(1-delta)*phi*tempT;
        Ft=St+phi*Tt;
    end
    mape=mape/(len-1);
end