function mape=MapeHW(x)
    mape=0;
    lecture;
    %I=[-1.8375,1.3,2.275,-1.7375];
    S2=x(1);
    T2=x(2);
    alpha=x(3);
    gamma=x(4);
    delta=x(5);
    len=length(y);
    S3=alpha*(y(3)-I(3))+(1-alpha)*(S2+T2);
    T3=gamma*(S3-S2)+(1-gamma)*T2;
    St=alpha*(y(4)-I(4))+(1-alpha)*(S3+T3);
    Tt=gamma*(St-S3)+(1-gamma)*T3;
    Ft=St+Tt+I(1);
    for i=5:len
        mape=mape+100*abs(y(i)-Ft)/y(i);
        tempS=St;tempT=Tt;
        St=alpha*(y(i)-I(i-4))+(1-alpha)*(tempS+tempT);
        Tt=gamma*(St-tempS)+(1-gamma)*tempT;
        I(i)=delta*(y(i)-St)+(1-delta)*I(i-4);
        Ft=St+Tt+I(i-3);
    end
    mape=mape/(len-4);
    
    
    
end