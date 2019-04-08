function mape=MapeHWM(x)
    mape=0;
    lecture;
    St=x(1);
    Tt=x(2);
    alpha=x(3);
    gamma=x(4);
    delta=x(5);
    len=length(y);
    for j=3:12
        tempS=St;tempT=Tt;
        St=alpha*(y(j)/I(j))+(1-alpha)*(tempS+tempT);
        Tt=gamma*(St-tempS)+(1-gamma)*tempT;
    end
    Ft=(St+Tt)*I(1);
    for i=13:len
        mape=mape+100*abs(y(i)-Ft)/y(i);
        tempS=St;tempT=Tt;
        St=alpha*(y(i)/I(i-12))+(1-alpha)*(tempS+tempT);
        Tt=gamma*(St-tempS)+(1-gamma)*tempT;
        I(i)=delta*(y(i)/St)+(1-delta)*I(i-12);
        Ft=(St+Tt)*I(i-11);
    end
    mape=mape/(len-12);
    
    
    
end