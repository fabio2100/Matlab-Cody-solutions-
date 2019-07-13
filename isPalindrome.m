function y = isPalindrome(x)
if fliplr(flipud(x))==x
    y=true;
else
    y=false;
end
end