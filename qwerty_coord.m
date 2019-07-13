function [r,c] = qwerty_coord(key)
  tab=['1234567890qwertyuiopasdfghjklAzxcvbnmAAA'];
  key=num2str(key);
  lug=find(tab==key);
  r=floor(lug/10)+1;
  c=mod(lug,10);
  if c == 0
      c=10;
  end
end