% TYPE OF CONTROL STRUCTURE

% 1. FOR control structure
% 2. WHILE control structure

% FOR control structure
clc
clear
%QUESTION 1
n=input('Supply n = ');

% sum=0;
% for a=1:n
%     sum=sum+a; 
% end
% fprintf('x = %d \n',sum)

%QUESTION 2
y=0;
for i=1:n
    x =input('x =');
    y=y+x;
end
fprintf('y = %d \n',y)

 % WHILE loop
 %QUESTION 1
%  sum=0;
%  k=1;
%  while k<=n
%      sum=sum+k;
%      k=k+1;
%  end
%  fprintf('x = %d \n',sum)

%QUESTION 2
% f=10;
%  y=0;
%  i=1;
%  while i<=n
%      x(i)=input('x =');
%      y=y+f*x(i);
%      i=i+1;
%  end
%  fprintf('y = %d \n',y)

