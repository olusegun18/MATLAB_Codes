clc
clear
% x=input('value of x= ');
% eqn=2*x.^2-3*x+1

hold on
a=[2 2 3 3 4.5 4.5 5 2.5 2.5 2.5 2.5 2.5 3.5 3.5 2.5 1.5 1 2.5 4 4.5 2.5 0.5 0 2.5 2.5 5 5 0 0.5 0.5 0.5 4.5 4.5 3.5 3.5 1.5 1.5]
    %5 0 5 0.5 0.5];
b=[0 2 2 0 0 3 3 5 4.5 4 3.5 3 3 3 3.5 3 3 4 3 3 4.5 3 3 5 5 3 3 3 3 3 0 0 3 3 0 0 3]
%3 3 3 0 3];
plot(a,b, '-r*', 'linewidth', 2)
hold off
axis([0 5 0 5])