close all 
clear variables

addOne=@(x)x+1;
addTen=iterate_fcn(addOne,10);