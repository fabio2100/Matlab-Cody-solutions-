clear variables
close all 

%Candidatos
N=input('Ingrese cantidad de candidatos: ');
E=zeros(N,3);
V=input('Ingrese cantidad de electores: ');
for i=1:N
    E(i,1)=i;
    E(i,2)=input(['Ingrese la puntuación del candidato ' num2str(E(i,1)) ': ']);
    %E(i,2)=10-round(log(i));
end

%Realización de la elección
tot=sum(E(:,2));    
for i=1:V
    voto=randi(tot);
    acumulador=0;
    for j=1:N
        acumulador=acumulador+E(j,2);
        if voto <= acumulador
            E(j,3)=E(j,3)+1;
            break
        end
    end
end


% for i=1:N
%     E(i,4)=(N)-1-E(i,3);
% end
% 

 B=sortrows(E,3);
 B=flipud(B)
 
 for i=1:N
    C(i,1)=(B(i,3)/V)*100;
end