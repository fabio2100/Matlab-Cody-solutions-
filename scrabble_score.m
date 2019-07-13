function score = scrabble_score (str)
score = 0;
for i = 1 : length(str)
    switch str(i)
        case {'e','a','i','o','n','r','t','l','s','u'}
            score=score+1;
        case {'g','d'}
            score=score+2;
        case {'b','c','m','p'}
            score=score+3;
        case {'f','h','v','w','y'}
            score=score+4;
        case {'k'}
            score=score+5;
        case {'j','x'}
            score=score+8;
        case {'q','z'}
            score=score+10;
    end
end
end