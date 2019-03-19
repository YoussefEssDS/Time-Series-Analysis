% On vas creer une fonction qui retourne la mape du modele exponentiel
% modifie comptabilisé à partir des données PIB Belgique & RFA.
% On a besoin de donner les valeurs de alpha, beta et gamma calculées à
% l'aide de la methode des 3 pts sur Excel. 
% x=[177.3132181,1.036758222,-153.8882353]
function mape=mapeExpMod(x)
    read_variables; % lecture des variables à partir du fichier Excel.
    mape=0;
    alpha=x(1);
    beta=x(2);
    gamma=x(3);
    len=length(y);
    for i=1:len
        mape=mape+100*abs(alpha*beta^i+gamma-y(i))/y(i);
    end
    mape=mape/len;
end