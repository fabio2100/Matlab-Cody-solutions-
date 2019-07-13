clear all 
close all 

a = ones(500);
sizea = size(a);
s=sum(sum(a));
for i = 1 : 100
    for j = 1 : sizea(1)/2
        for k = 1 : sizea(2)
            r = rand;
            if (a(j,k)==1 && r > 0.5)
                a(j,k)=0;
            end
        end
    end
    imshow(a),title(num2str(i))
    s=[s sum(sum(a))];
    pause(0.01)
end