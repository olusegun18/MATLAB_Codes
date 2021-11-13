clc
clear
zeros, ones, eye
nonzeros, blkdiag, diag, randi, randperm, randn, repmat, circshift, rot90, fliplr,triu, tril, sort
sub2ind, ind2sub

strcmp, strncmp, strcmpi, strrep
datestr, datenum, datevec

figure,
hold on
zoom on
plot(x,y, "r*-", "linewidth", 2)
plot(x1, y1, x2, y2, x3, y3,...)


grid on, grid minor

xlabel("x-axis")
ylabel("y-axis")
title("Graph")
legend({'EurUSD';'Naira'})

get(gca)   %% it helps you know the properties that you can change
year = {'Jan','Feb','Mar','April','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'}
set(gca, 'xticklabels', year)
set(gca, 'xticklabels', 1:12)
set(gca, 'xlim',[0.5 13.5])  



% dsolve("Dq=q*r", "q(0) = q0", "t")

sum = @(x,y)(x+y^2)/4
sum(2,7)

increment = @(x,y,f)f(x+2,y+3)
increment(2,4,sum)


x = reshape(1:10,2,5)
y = reshape(1:5,5,1)
x*y


save('matlab.mat','filepath','filename')  %%% whenever you dont want to save all the workspace
data = [1 2 4;4 5 6; 7 9 0; 2 3 5; 7 6 9]
dlmwrite('MatlabFile.txt',data,'\t')     %% where tab is the delimiter(the separating entity)
dlmwrite('MatlabFile.csv',data,',')      %% where the values are separated by comma


print('myfile.jpeg', '-djpeg')
print('myfile.pdf', '-dpdf', '-bestfit')
