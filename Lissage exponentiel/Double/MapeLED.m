%This function calculates the mape from the data we loaded from the excel   
%file. It takes an alpha, S1 and T1 which is the initialization to calculate the mape.
%We will use matlab's advanced functions for optimization to get the optimal
%alpha, S1 and T1.
%Feel free to try this function with the alpha u choosed in the excel and 
%F1 as the average of the first 3 observations and compare the results!
function mape=MapeLED(x)
lecture;
mape=0;
alpha=x(1);
lambda=2*alpha-alpha^2;
mu=alpha/(2-alpha);
St=x(2); Tt=x(3);
Ft=St+Tt;
len=length(y);
for i=3:len
    mape=mape+100*abs(y(i)-Ft)/y(i);
    tempS=St;
    St=lambda*y(i)+(1-lambda)*(St+Tt);
    Tt=mu*(St-tempS)+(1-mu)*Tt;
    Ft=Tt+St;
end
mape=mape/(len-2);

end


