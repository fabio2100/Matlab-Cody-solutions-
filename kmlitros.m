%Km/l en fn de vel y revs

clear variables 
close all 

% vel = meshgrid(0:0.5:150);
% rev = meshgrid(500:15:5000);

[vel,rev]=meshgrid(0:10:5000);

kml= vel ./ rev;
surf( vel , rev , kml),xlabel('Velocidad'),ylabel('Revoluciones'),zlabel('Km/l')

%%
vel2=0:150;
rev2=500:10:5000;

for i=0:150
    for j=500:10:5000
        kml2(i+1,j)=1000*i/j;
    end
end

imshow(kml2),xlabel('Revoluciones'),ylabel('Velocidad'),imcontrast
