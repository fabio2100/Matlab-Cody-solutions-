function [ y ] = tresveceselementos( x )
%Devuelve los elementos con frecuencia absoluta 3
r=tabulate(x);
t=find(r(:,2)==3);
for i=1:length(t)
    g=r(t,1)
end
y=g';
end

