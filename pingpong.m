%Ping Pong simulador 

close all 
clear variables 

E1=zeros(3,1);
E2=zeros(3,1);
E1(1,1)=input('Ingrese puntuación jugador 1: ');
E2(1,1)=input('Ingrese puntuación jugador 2: ');
i=0;
%Realización de puntos
while (E1(2)<=3) && (E2(2)<=3)
    while (E1(3,1)<11) && (E2(3,1)<11)
        vt=randi(E1(1,1)+E2(1,1));
        if vt<E1(1,1)
            E1(3,1)=E1(3,1)+1;
        end
        if vt>E1(1,1)
            E2(3,1)=E2(3,1)+1;
        end
        %disp([ num2str(E1(3)) ' vs ' num2str(E2(3))])
        %pause(0.05)
    end
    if (E1(3,1)==11)
        E1(2)=E1(2)+1;
    else
        E2(2)=E2(2)+1;
    end
    
    %Guardamos el set en una columna
    i=i+1;
    E1(i+3)=E1(3);
    E2(i+3)=E2(3);
    E1(3)=0;
    E2(3)=0;
end

%Mostrar resultados
disp(['Sets: Jugador1: ' num2str(E1(2)) ' Jugador2: ' num2str(E2(2))])
for i=4:length(E1)
    s=i-3;
    disp(['Set ' num2str(s) ': ' num2str(E1(i)) '  '  num2str(E2(i))])
%     disp([num2str(E1(i))])
%     disp([num2str(E2(i))])
end
