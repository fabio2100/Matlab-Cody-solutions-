function [ b ] = back_and_forth( n )
%Devuelve matriz consecutiva tipo 'serpiente'
b=ones(n);
cont=1;
for i=1:n
    for j=1:n
    b(i,j)=cont;
    cont=cont+1;
    end
end
for i=1:n
    if mod(i,2)==0
        b(i,:)=fliplr(b(i,:));
    end
end
end

