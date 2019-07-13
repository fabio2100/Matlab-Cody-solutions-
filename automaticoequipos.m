clear all 
close all 

%Ingresar la cantidad de equipos
N=input('Ingrese cantidad de equipos: ');
%Matriz de equipos
 
% 
E=zeros(N,4);
for i=1:N
    E(i,1)=i;
    %E(i,2)=input(['Ingrese la puntuación del equipo ' num2str(E(i,1)) ': ']);
    E(i,2)=10-round(log(i));
end

%Realización de los enfrentamientos
% ct=input('Ingrese número de enfrentamientos entre los equipos: ');
% for c=1:ct
    for i=1:N-1
        for j=i+1:N
            r=randi(E(i,2)+E(j,2));
            if r <= E(i,2)
                E(i,3)=E(i,3)+1;
            else
                E(j,3)=E(j,3)+1;
            end
            
        end
    end
% end

for i=1:N
    E(i,4)=(N)-1-E(i,3);
end

B=sortrows(E,4)