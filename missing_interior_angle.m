function y = missing_interior_angle(x)
  t=length(x);
  s=(t-1)*180;
  y=s-sum(x);
end
