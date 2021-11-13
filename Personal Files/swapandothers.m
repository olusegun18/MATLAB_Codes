clc
clear

% a=[1:10];
% b=[2:7];
% c=[7:10];
d=[]
n=input('number of values= ');
for ght=1:n;
a(ght)= input('a= ');
b(ght)= input('b= ');
c(ght)= input('c= ');
end
FormerA= a
FormerB= b
FormerC= c
FormerD= d
d = b;
b = a;
a = c;
c = d;
LatterA=a
LatterB=b
LatterC=c
LatterD=d