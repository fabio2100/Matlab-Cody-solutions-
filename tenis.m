clear variables
close all 

E1=zeros(3,1);
E2=zeros(3,1);
E1(1,1)=input('Ingrese puntuación jugador 1: ');
E2(1,1)=input('Ingrese puntuación jugador 2: ');

%Realización de puntos

while (E1(3,1)<6) && (E2(3,1)<6)
    vt=randi(E1(1,1)+E2(1,1));
    if vt<E1(1,1)
        E1(2,1)=E1(2,1)+1;
    end
    if vt>E1(1,1)
        E2(2,1)=E2(2,1)+1;
    end
    if E1(2,1) == 4
        E1(3,1)=E1(3,1)+1;
        E1(2,1) = 0;
        E2(2,1) = 0;
    end
    
    if E2(2,1) == 4
        E2(3,1)=E2(3,1)+1;
        E1(2,1) = 0;
        E2(2,1) = 0;
    end
end






