function [ b ] = targetSort( a,t )
%Devuelve vector ordenado de acuerdo a cuán lejos estén los valores de a de
%t
r=abs(a-t);
d=[a;r]';
c=sortrows(d,2);
b=fliplr(c(:,1)');
end

