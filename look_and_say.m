function NEXT = look_and_say(SEED)
NEXT=[1 SEED(1)];
v=1;
p=SEED(1);
for i = 2 : length(SEED)
    if SEED(i) == SEED(i-1)
        NEXT(v)=NEXT(v)+1;
    else
        NEXT=[NEXT 1 SEED(i)];
        v=v+2;
        p=SEED(i);
    end
end
end