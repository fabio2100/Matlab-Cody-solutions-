clear variables
close all 

%Ingresar la cantidad de equipos
N=input('Ingrese cantidad de equipos: ');
%Matriz de equipos
E=zeros(N,6);
for i=1:N
    E(i,1)=i;
    %E(i,2)=input(['Ingrese la puntuación del equipo ' num2str(E(i,1)) ': ']);
    %c=primes(i+1);
    E(i,2)=round(log(i));%-floor(log10(i));;
end

%Realización de los enfrentamientos
% ct=input('Ingrese número de enfrentamientos entre los equipos: ');
% for c=1:ct
%Creamos un contador para ver la cantidad de partidos jugados y el nro
%de partido únicamente
cont=0;
for i=1:N-1
    for j=i+1:N
        dcm=gcd(E(i,2),E(j,2));
        pe1=E(i,2)/dcm;
        pe2=E(j,2)/dcm;
        a1=randi(pe1+1);
        a2=randi(pe2+1);
        if a1>a2
            E(i,3)=E(i,3)+1;
            E(j,5)=E(j,5)+1;
        end
        if a1<a2
            E(i,5)=E(i,5)+1;
            E(j,3)=E(j,3)+1;
        end
        if a1==a2
            E(i,4)=E(i,4)+1;
            E(j,4)=E(j,4)+1;
        end
        cont=cont+1;
        disp(['Nro de partido: ' num2str(cont)])
        disp(['Resultado equipo '  num2str(i) ': ' num2str(a1)])
        disp(['Resultado equipo '  num2str(j) ': ' num2str(a2)])
        pause
    end
end
   


for i=1:N
    E(i,6)=E(i,3)*3+E(i,4);
end

B=sortrows(E,6);
B=flipud(B)