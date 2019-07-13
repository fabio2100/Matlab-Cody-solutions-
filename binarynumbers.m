function [ A ] = binarynumbers( n )
A=[0;1];
for i = 2 : n
    t=2^i;
    ro=zeros(t/2,1);
    r1=ones(t/2,1);
    B=[A;A];
    C=[ro;r1];
    A=[B,C];
end
end

