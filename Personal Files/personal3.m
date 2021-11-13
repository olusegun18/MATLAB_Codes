clc
clear

%help symbolic

% b=(1/2)
% [d,c]=numden(sym(b)) %finds the numerator and denominator of the variable b
% save myfile15 b d c


% dr=[1 2 3 4 5 6 7 8 9 10]
% dsum=symsum(4,dr)
% save myfile14 dr dsum
pi2 = vpa(pi)

a =[1 2 3;4 5 6;7 8 9]
cd = triu(a)
fg=tril(a)
fm=rank(a)
save myfile13 a cd fg fm


syms y
ret=y^4-y^2+5*y+10
[s t]=quorem(y^7,ret) % gives s as answer and t as remainder
save myfile12 ret s t


syms a
a=magic(3)
dw=rref(a)    % gives the reduced echelon form of a
save myfile11 dw


x=7
ghk=x*3+x^2+3*x
clear x  %clears the initial value of x
syms x y
z=x^2-2*x*y+y
b=5*y*z
save myfile10 ghk z b


ty=solve('x^2-2*x-4=0')
format short   %it extends the digits; if long, the digit is increased
                    %and if short, it rounds it up to 5-digit value
mq1=solve('exp(-x)-sin(x)')
gh1=fzero(inline('exp(-x)-sin(x)'),0.5)
seev1=vpa(gh1)
format long
mq2=solve('exp(-x)-sin(x)')
gh2=fzero(inline('exp(-x)-sin(x)'),0.5)
seev2=vpa(gh2)
save myfile9 ty mq1 mq2 gh1 gh2 seev1 seev2


jk=solve('2*x-log(y)=1','y') %solves the equation for y in terms of x
save myfile8 jk

fmdeq=solve('x^2-y=2','y-2*x=5')
mc=fmdeq.x
met=fmdeq.y
save myfile7 mc met

[x y]=solve('x^2-y=2','y-2*x=5')
vx1=x(1)
vx2=x(2)
vy1=y(1)
vy2=(2)
save myfile6 vx1 vx2 vy1 vy2


a=[1 2 3; 4 5 6]  % this is a 2X3 matrix in the form [d, e]
b=[1 2;3 4;5 6]   % this is a 3X2 matrix in the form [e,g]
c=a*b             % this is the output c which is 2X2 matrix, if e is in the two matrices,
                  %then the output will be dXg matrix
save myfile5 a b c
                  
             %Using Inline function for Scalars
fok=inline('x^2+x+1', 'x')   
fok(7)          % gives an opportunity to write the value of x and change at will
save myfile4 fok


            %Using Inline function for vectors
f=inline(vectorize('x^2+x+1'), 'x')        
huy=f(1:10)
save myfile1 f huy

            %USING INLINE FOR MORE THAN ONE VARIABLE
g=inline('u^2+v^2', 'u', 'v')
xds=g(1,3)      %1=value of u and 3=value of v
save myfile2 g xds
                  


                   %GRAPHICS
syms x
k=ezplot('x^2+x+1',[0 2]) %ezplot can plot graph for one variable which plot can't do
title 'A PARABOLA'   %writes the title of the graph
axis([0 2 0 3])
save myfile3 k
close       %closes the graph window