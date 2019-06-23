function mape=mapeLisGen(b)
    lecture;
    len=length(MMC12);
    A=[1,0,0;1,1,0;0,1,1];
    f0=[1;0;0];
    f1=[1;1;0];
    M=[1/(1-b),-b/(1-b)^2,b/(1-b)^3;
       -b/(1-b)^2,b*(1+b)/(1-b)^3,(-2*b^2-b)/(1-b)^4;
       b/(1-b)^3,(-2*b^2-b)/(1-b)^4,(b^3+4*b^2+b)/(1-b)^5];
   av=[mean(MMC12);mean(MMC12);0];
   G=b*inv(M)*inv(A)*M;
   g=inv(M)*f0;
   a=transpose(av);
   P=a*f1
   mape=0;
   for i=2:len
    mape=mape+100*abs(MMC12(i)-P)/MMC12(i);
    a=transpose(g)*MMC12(i)+a*transpose(G);
    P=a*f1;
   end
   mape=mape/(len-1);
end