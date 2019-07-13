%Clasificador
clear all 
close all 

altura=[];
peso=[];
imc=[];
saludable=[];
entrada=[];

for i=1:10000
    altura(i)=randi([1,500]);
    peso(i)=randi([1,300]);
    imc(i)=10000.*peso(i)./(altura(i).^2);
    if (imc(i)>18.5 && imc(i)<25)
        saludable(i)=1;
    else
        saludable(i)=0;
    end
end

entrada=[altura;peso];
completa=[altura;peso;saludable];