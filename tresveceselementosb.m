function [ y ] = tresveceselementosb( x )
%Devuelve los elementos del vector x que se repiten 3 veces
r=unique(x);
y=[];
for i=1:length(r)
    if length(find(r(i)==x))==3
        y=[y r(i)];
end

end

