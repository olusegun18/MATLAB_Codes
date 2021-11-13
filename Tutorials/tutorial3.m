
clc
clear
a=10;
u=input('Initial Velocity =');
t=input('Time =');

s=(u*t) + (1/2)*a*t^2;

fprintf('Distance= %dm\n',s)