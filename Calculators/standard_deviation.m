clc
clear

n=input('n= ');

x=0;
for ef=1:n
    y(ef)=input('x=');
    x=x+y(ef);
end
   fprintf('x = %d \n',x);
xbar=x/n
% dd = y - xbar;
% sdd = (dd).^2
% Esdd = sum(sdd)
for u = 1:n
    jj =  y(u);
    dd = jj - xbar;
    sdd = (dd).^2;
    p(1,u) = sdd;
end
Esdd = sum(p)/n;
sd = sqrt(Esdd)


