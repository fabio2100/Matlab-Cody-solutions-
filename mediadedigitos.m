function y = mediadedigitos(x)
  t=num2str(x);
  u=t(:);
  v=str2num(u);
  y=round(mean(v));
end