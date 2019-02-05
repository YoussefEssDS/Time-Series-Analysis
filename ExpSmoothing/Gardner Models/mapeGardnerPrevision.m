function [mape,P,mapePrev]=mapeGardnerPrevision(x)
    lectGard;
    St=x(1);
    Tt=x(2);
    alpha=x(3);
    delta=x(4);
    fi=x(5);
    mape=0;
    mapePrev=0;
    len=length(y);
    Ft=St+fi*Tt;
    for i=2:len-5
        mape=mape+100*abs(y(i)-Ft)/y(i);
        temp=St;
        St=alpha*y(i)+(1-alpha)*(St+fi*Tt);
        Tt=delta*(St-temp)+(1-delta)*fi*Tt;
        Ft=St+fi*Tt;
    end
    mape=mape/(len-5);
    P=[0,0,0,0,0];
    for i=len-4:len
        temp=0;
        for j=1:i-len+5
            temp=temp+(fi^j)*Tt;
        end
        P(i-len+5)=St+temp;
        mapePrev=mapePrev+100*abs(y(i)-P(i-len+5))/y(i);
    end
    mapePrev=mapePrev/5;

end