function ix = mostDistant(p)
  ix = [1 2];
  d=0;
  sizep=size(p);
  for i = 1:sizep(1)-1
      for j = i+1 : sizep(1)
          dis=sqrt((p(i,1)-p(j,1))^2+(p(i,2)-p(j,2))^2);
          if d < dis 
              ix=[i j];
              d=dis;
          end
      end
  end
end

