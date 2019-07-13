function y4 = popularity(x)
  r=unique(x);
  for i = 1 : length(r)
   g(i)=numel(find(x==r(i)));
  end
  y1=[r;g];
  y2=y1';
  y3=sortrows(y2,2);
  y4=flipud(y3);
  y=y4(:,1)';
end
