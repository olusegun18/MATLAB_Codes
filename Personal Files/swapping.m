clc
clear

% a=1:5;
% b=2:6;
% c=[];
% c = a(:)
% a = b(:)
% b = c(:)
% c = []
n=input('How many values do you want?= ');
for sd=1:n
a(sd) = input('a= ');
b(sd) = input('b= ');
end
OldA= a
OldB= b
c = [];
c = a;
a = b;
b = c;
c = [];
NewA= a
NewB= b