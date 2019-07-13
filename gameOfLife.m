function B = gameOfLife(A)
C=[A A A;A A A;A A A];
for i = 5: 8
    for j = 5:8
        if (sum(sum(C(i-1:i+1,j-1:j+1))) > 2 && sum(sum(C(i-1:i+1,j-1:j+1))) < 5 && C(i,j)==1)
            B(i-4,j-4)=1;
        else
            B(i-4,j-4)=0;
        end
        if (C(i,j) == 0 && sum(sum(C(i-1:i+1,j-1:j+1)))==3)
            B(i-4,j-4)=1;
        end
    end
end

end

