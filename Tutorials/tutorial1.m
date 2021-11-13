clc
clear

joseph=[30:30:360]% supply value of x in degree which ranges from 30 to 360 interval of 30
y=sind(joseph);
z=cosd(joseph);
hold on
plot(joseph,y,'-r*','linewidth',1)
plot(joseph,z,'-ys','linewidth',1)
hold off
axis([0 360 -1 1])
xlabel('x in degree')
ylabel('sine of angle of x')
legend('sine graph','cosine graph')
title('x against y')


