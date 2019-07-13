function [ y ] = numerosunodosdostrestres( n )
y=[];
for i=1:n
    cont=0;
   while cont < i
   y=[y i];
   cont=cont+1;
   end
end
end

