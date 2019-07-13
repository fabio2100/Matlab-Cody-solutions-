function [ m ] = timestable( n )
%Devuelve las tablas de multipilicar hasta n*n
for i=1:n
    for j=1:n
        m(i,j)=i*j;
    end
end
end

