function [ y ] = nperiodos( b )
%NPERIODOS devuelve los valores entre 1 y 100 que no generer�n nros
%per�odicos en la base b al dividir un entero
f_b=factor(b);                          %Factores de la base
f_b_u=unique(f_b);                      %Elimina los factores repetidos, dejando �nicamente una vez cada uno
y=[];                               %Matriz y vac�a, donde se ir�n asignando los valores que cumplan la condici�n
for i=2:100
    r=factor(i);
    r_u=unique(r);
    for j=1:length(r_u)
        if (find(f_b_u==r_u(j)))
            r_u(j)=NaN;
        end
    end
    r_u=r_u(~isnan(r_u));
    if isempty(r_u)
        y=[y i];
    end
    %y=unique(y);
end
end

