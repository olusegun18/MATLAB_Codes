clc
clear


a=input('a=');
b=input('b=');
c=input('c=');
d=b^2 - 4*a*c;

if d<0
    disp('complex number')
elseif d>=0
    disp('normal')
x1=(-b + d^(1/2))/2*a;
fprintf('value of x1 =%d\n',x1)
x2=(-b - d^(1/2))/2*a;
fprintf('value of x2 =%d\n',x2)
end