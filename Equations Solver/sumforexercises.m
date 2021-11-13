clc
clear

n=input('supply n=');
% for u=1:n
%     y(u)=input('x1=');
%     x(u)=input('y1=');
%     
% end
% kk = y-x;
% skk = (kk).^2;
% gs=sum(skk);
% gt=gs/n;
% RMSE=sqrt(gt)
for u=1:n
    y=input('x1=');
    x=input('y1=');
    kk = y - x;
    skk = (kk).^2;
gs=sum(skk);
gt=gs/n;
RMSE=sqrt(gt)
end