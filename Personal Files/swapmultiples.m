clc
clear

a=[2 3 4 6];
b=[3 6 7 2];
c=[2 7 5 8];
d=[2 6 1 9];
e=[2 6 7 4];
f=[1 5 9 3];
g=[]
zedd=input('values= ');
for ds=1:zedd
a(zedd)= input('a= ');
b(zedd)= input('b= ');
c(zedd)= input('c= ');
d(zedd)= input('d= ');
e(zedd)= input('e= ');
f(zedd)= input('f= ');
end
olda= a
oldb= b
oldc= c
oldd= d
olde= e'
oldf= f
g= [];
g=f;
f=a;
a=b;
b=c;
c=d;
d=e;
e=g;
g=['Nothing']
Newa= a
Newb= b
Newc= c
Newd= d
Newe= e
Newf= f
Newg= g