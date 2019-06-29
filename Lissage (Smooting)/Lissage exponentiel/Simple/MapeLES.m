%This function calculates the mape from the data we loaded from the excel   
%file. It takes an alpha and a F1 the initialization to calculate the mape.
%We will use matlab's advanced functions for optimization to get the optimal
%alpha and F1.
%Feel free to try this function with the alpha u choosed in the excel file and 
%F1 as the average of the first 3 observations and compare the results!
function mape=MapeLES(x)
lecture;
mape=0;
alpha=x(1);
Ft=x(2);
len=length(y);
for i=3:len
    mape=mape+100*abs(y(i)-Ft)/y(i);
    Ft=alpha*y(i)+(1-alpha)*Ft;
end
mape=mape/(len-2);

end


