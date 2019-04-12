function [mape,mapePrev]=mapeDAN(x)
    lecture;
    alpha=x(1);
    gamma=x(2);
    phi=x(3);
    St=x(4);
    Tt=x(5);
    len=length(y)-12;
    Ft=St+phi*Tt;
    mape=0;
    for i=2:len
        mape=mape+100*abs(y(i)-Ft)/y(i);
        tempS=St;tempT=Tt;
        St=alpha*y(i)+(1-alpha)*(tempS+phi*tempT);
        Tt=gamma*(St-tempS)+(1-gamma)*phi*tempT;
        Ft=St+phi*Tt;
    end
    mape=mape/(len-1);
    mapePrev=0;
    for j=len+1:length(y)
        temp=0;
        for k=1:j-len
            temp=temp+(phi^k)*Tt;
        end
        Ft=St+temp;
        mapePrev=mapePrev+100*abs(y(j)-Ft)/y(j);
    end
    mapePrev=mapePrev/(length(y)-len);
end
