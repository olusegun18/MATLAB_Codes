clc
clear

joseph=magic(3)
max1=max(joseph(1,:))
max2=max(joseph(2,:))
max3=max(joseph(3,:))
min1=min(joseph(1,:))
min2=min(joseph(2,:))
min3=min(joseph(3,:))
ecc1=sort(joseph(1,:))
ecc2=sort(joseph(2,:))
ecc3=sort(joseph(3,:))
% der1=select(joseph(3,:))
hold on
bar([max1,max2,max3])
bar([min1,min2,min3])
bar(max3,min3)
hold off
xlabel('x-axis')
ylabel('y-axis')
legend('max1','max2','max3')
title('bar chart')