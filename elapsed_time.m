function elapsed = elapsed_time(d1,d2)
d1d=datetime(d1,'InputFormat','yyyy/MM/dd HH:mm:ss');
d2d=datetime(d2,'InputFormat','yyyy/MM/dd HH:mm:ss');
t=datenum(d2d)-datenum(d1d);
elapsed = t *24;
end