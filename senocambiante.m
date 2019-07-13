clear all 
close all 

fs=[1:0.01:1];
for i=1:1000
    fs(i)=i*.01;
    y(i)=sin(2*pi*i/100);
end
for i=1001:2000
    fs(i)=i*.01;
    y(i)=sin(2*pi*i*2/100);
end
for i=2001:3000
    fs(i)=i*.01;
    y(i)=sin(2*pi*i*3/100);
end
for i=3001:4000
    fs(i)=i*.01;
    y(i)=sin(2*pi*i*4/100);
end
for i=4001:5000
    fs(i)=i*.01;
    y(i)=sin(2*pi*i*5/100);
end
for i=5001:6000
    fs(i)=i*.01;
    y(i)=sin(2*pi*i*6/100);
end
for i=6001:7000
    fs(i)=i*.01;
    y(i)=sin(2*pi*i*7/100);
end
for i=7001:8000
    fs(i)=i*.01;
    y(i)=sin(2*pi*i*8/100);
end
for i=8001:9000
    fs(i)=i*.01;
    y(i)=sin(2*pi*i*9/100);
end
for i=9001:10000
    fs(i)=i*.01;
    y(i)=sin(2*pi*i*10/100);
end
plot(fs,y)

