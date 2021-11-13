clc
clear

% Write a program to solve Simultaneous equation for n-numbers,n-times
n=input('Number of times= ');
for sde=1:n
k=input('Number of values= ');
for fdh=1:k
v=input('Value Name= ');
a1=input('a1= ');
b1=input('b1= ');
c1=input('c1= ');
a2=input('a2= ');
b2=input('b2= ');
c2=input('c2= ');
x=((b2*c1)-(b1*c2))/((b2*a1)-(b1*a2))
y=((c1-(a1*x))/b1)
end
end