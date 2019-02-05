function mape=mapeGardner(x)
    lectGard;
    St=x(1);
    Tt=x(2);
    alpha=x(3);
    delta=x(4);
    fi=x(5);
    mape=0;
    len=length(y);
    Ft=St+fi*Tt;
    for i=2:len-5
        mape=mape+100*abs(y(i)-Ft)/y(i);
        tempS=St;
        tempT=Tt;
        St=alpha*y(i)+(1-alpha)*(tempS+fi*tempT);
        Tt=delta*(St-tempS)+(1-delta)*fi*tempT;
        Ft=St+fi*Tt;
    end
    mape=mape/(len-6);
end