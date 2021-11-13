% TYPE OF SELECTIVE STATEMENT
% 
% 1. IF  STATEMENT
% 2. CASE STATEMENT
% 
%IF STATEMENT
clc
clear

dd=input('Value of x = ');
if dd>=70
    disp('Excellent')
elseif dd>=60 && dd<=69 % this && represent AND while || represent OR
    disp('Very Good')
elseif dd>=50 && dd<=59
    disp('Good')
else
     disp('Poor')
end
% 
% 
% case statement
% dd=input('Which Value?  ');
% switch dd
%     case 50
%         fprintf('%d is a good boy\n',dd);
%     case 40
%          fprintf('%d is a good boy\n',dd);
%     case 34
%          fprintf('%d is a good boy\n',dd);
%     otherwise 
%         disp('Nothing for you')
% end
% 
% 
