function [lat_o,long_o] = opposite_earth_point(lat,long)
latS=(lat(1:end-2));
longNro=str2num(long(1:end-2));
latC=lat(end);
longC=long(end);

long_oNro=180-longNro;
if latC == 'N'
    lat_oC='S';
elseif latC=='S'
    lat_oC='N';
end
if longC=='W'
    long_oC='E';
elseif longC=='E'
    long_oC='W';
end
lat_o=[latS ' ' lat_oC];
long_o=[num2str(long_oNro) ' ' long_oC];
end