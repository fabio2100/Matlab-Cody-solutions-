function [y] = simpleiterate( fh )
%Itera tres veces la funci�n de entrada
for i=1:3
    fh2=fh(i);
end
y=@(fh2)fh2;
end

