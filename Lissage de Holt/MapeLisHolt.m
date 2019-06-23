function mse=MseLisHolt(x0)
    lecture;
    mse=0;
    St=x0(1);
    Tt=x0(2);
    lambda=x0(3);
    mu=x0(4);
    len=length(x);
    yt=St+Tt;
    for i=3:len
        mse=mse+(yt-x(i))^2;
        tempT=Tt;
        tempS=St;
        St=lambda*x(i)+(1-lambda)*(tempS-tempT);
        Tt=mu*(St-tempS)+(1-mu)*tempT;
        yt=St+Tt;
    end
    mape=mape/(len-2);
end