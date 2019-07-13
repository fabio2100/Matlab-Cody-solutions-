function [ z ] = traductor7segs( sup,supizq,supder,medio,infizq,infder,inf )
%TRADUCTOR7SEGS Activa o desactiva en la imagen los segmentos de acuerdo
%a la activación de los segmentos

z=zeros(9,5);
%Colocamos todos los segmentos a 0, y la imagen a todo negro 

%Superior
if sup == 1 
    z(1,2:4)=1;
else
    z(1,2:4)=0;
end
%Superior izquierdo 
if supizq == 1 
    z(2:4,1)=1;
else
    z(2:4,1)=0;
end
%Superior derecho
if supder == 1 
    z(2:4,5)=1;
else
    z(2:4,5)=0;
end

%Medio
if medio == 1 
    z(5,2:4)=1;

else
    z(5,2:4)=0;
end
%Inferior izquierdo
if infizq == 1 
    z(6:8,1)=1;
   
else
    z(6:8,1)=0;
end
%Inferior
if inf == 1 
    z(9,2:4)=1;
   
else
    z(9,2:4)=0;
end

%Inferior derecho
if infder == 1 
    z(6:8,5)=1;
else
    z(6:8,5)=0;
end

imshow(z)
end

