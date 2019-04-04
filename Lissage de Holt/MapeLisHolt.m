% Like we did with Excel this function calculates the mape for the time
% serie try it with: x=[mean([y(1),y(2),y(3)]),(y(3)-y(1))/2,0.4,0.3] and
% check if it would give same result as in the Excel file. (hint: It
% would!)
function mape=MapeLisHolt(x)
    lecture;
    mape=0;
    St=x(1);
    Tt=x(2);
    lambda=x(3);
    mu=x(4);
    len=length(y);
    yt=St+Tt;
    for i=3:len
        mape=mape+100*abs(yt-y(i))/y(i);
        tempT=Tt;
        tempS=St;
        St=lambda*y(i)+(1-lambda)*(tempS-tempT);
        Tt=mu*(St-tempS)+(1-mu)*tempT;
        yt=St+Tt;
    end
    mape=mape/(len-2);
end