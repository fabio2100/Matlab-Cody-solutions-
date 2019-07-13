function y = existsInVector(a,b)
  if isempty(b(b==a))
      y=0;
  else
      y=1;
  end
end