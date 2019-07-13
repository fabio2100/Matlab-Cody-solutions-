function y = seven_seg_led(x)
t=num2str(x);
y=0;
for i = 1 : length(t)
   switch t(i)
       case '0'
           y=y+6;
       case '1'
           y=y+2;
       case '2'
           y=y+5;
       case '3'
           y=y+5;
       case '4'
           y=y+4;
       case '5'
           y=y+5;
       case '6'
           y=y+6;
       case '7'
           y=y+3;
       case '8'
           y=y+7;
       case '9' 
           y=y+6;
   end
end
end