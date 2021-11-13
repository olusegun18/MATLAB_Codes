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

% dsolve("Dq=q*r", "q(0) = q0", "t")

sum = @(x,y)(x+y^2)/4
sum(2,7)

increment = @(x,y,f)f(x+2,y+3)
increment(2,4,sum)


x = reshape(1:10,2,5)
y = reshape(1:5,5,1)
x*y