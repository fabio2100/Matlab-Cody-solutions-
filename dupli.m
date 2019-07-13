function [ B ] = dupli( A )
for i=1:length(A)*2
    if mod(i,2)==1
    B(i)=A((i/2)+.5);
    else
        B(i)=A(i/2);
end
end


