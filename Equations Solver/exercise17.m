clc
clear

%Creating a Program to solve Simultaneous equation for two numbers....
%x-value=('x= ');
%y-value=('y= ');
a1=input('a1= ');
b1=input('b1= ');
c1=input('c1= ');
a2=input('a2= ');
b2=input('b2= ');
c2=input('c2= ');
%(a1*x)+(b1*y)=c1 && (a2*x)+(b2*y)=c2;
% % y=c2 - (a2(c1-(b1*y)/a1))/b2
% y=((a2*c1)-(a1*c2))/((a2*b1)-(a1*b2))
% x=(c1 - b1*y)/a1
x=((b2*c1)-(b1*c2))/((b2*a1)-(b1*a2))
y=((c1-(a1*x))/b1)