function [ n,n1 ] = longest1consecutive( s1 )
%Encuentra la cadena de unos más larga de un string y devuelve la cantidad
expr='1.*1';
[tokens,match]=regexp(s1,'tokens','match');
n=match;
n1=tokens;
end

