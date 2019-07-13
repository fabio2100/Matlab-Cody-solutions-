function [ s2 ] = borraconsonantes( s1 )
%Elimina las consonantes de un array
old={'b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z'};
new='';
s2=replace(s1,old,new);
end

