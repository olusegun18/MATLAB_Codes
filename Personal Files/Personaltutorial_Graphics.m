clc
clear
%%
% x = -pi:pi/10:pi;
% y = tan(sin(x)) - sin(tan(x));
% plot(x,y,'--rs','LineWidth',2,...
%                 'MarkerEdgeColor','k',...
%                 'MarkerFaceColor','g',...
%                 'MarkerSize',10)
% hold on
% x = -pi:.1:pi;
% y = sin(x);
% plot(x,y)
% set(gca,'XTick',-pi:pi/2:pi)
% set(gca,'XTickLabel',{'-pi','-pi/2','0','pi/2','pi'})
% title('Sine Function');
% xlabel('Radians');
% ylabel('Function Value');
% hold off
% hold on
% x = -pi:.1:pi;
% y = sin(x);
% p = plot(x,y)
% set(gca,'XTick',-pi:pi/2:pi)
% set(gca,'XTickLabel',{'-pi','-pi/2','0','pi/2','pi'})
% xlabel('-\pi \leq \Theta \leq \pi')
% ylabel('sin(\Theta)')
% title('Plot of sin(\Theta)')
% % \Theta appears as a Greek symbol (see String)
% % Annotate the point (-pi/4, sin(-pi/4))
% text(-pi/4,sin(-pi/4),'\leftarrow sin(-\pi\div4)',...
%      'HorizontalAlignment','left')
% % Change the line color to red and
% % set the line width to 2 points 
% set(p,'Color','red','LineWidth',2)
% hold off
% hold on
% plot(sin(x));
% % hold axes and all lineseries properties, such as
% % ColorOrder and LineStyleOrder, for the next plot
% hold all
% plot(sin(x+(pi/4)));
% hold off
% hold on
% set(0,'DefaultAxesColorOrder',[0 0 0],...
%       'DefaultAxesLineStyleOrder','-|-.|--|:')
% plot(sin(x))
% hold all
% plot(cos(x))
% hold all
% plot(log(abs(x)))
% hold off
% hold on
% y = [75.995 91.972 105.711 123.203 131.669 ...
%      150.697 179.323 203.212 226.505 249.633 281.422];
% figure;bar(y);
% hold off
% hold on
% figure;
% subplot(2,2,1); bar(y,'grouped');
% subplot(2,2,2); bar(y,'stacked');
% subplot(2,2,3); bar(y,'hist');
% subplot(2,2,4); bar(y,'histc');
% hold off
% hold on
% figure; bar(y,'r');
% hold on
% figure; bar(y,'g','EdgeColor',[1 0.5 0.5]);
% hold off
% hold on
% x = [1900:10:2000];
% figure; bar(x,y);
% hold off
% hold on
% Y = [1, 5, 3;
%  3, 2, 7;
%  1, 5, 3;
%  2, 6, 1];
% area(Y)
% grid on
% colormap summer
% set(gca,'Layer','top')
% title 'Stacked Area Plot'
% hold off
% hold on
% Y(3,1) = -1; % Was 1
% h = area(Y);
% set(gca,'Layer','top')
% grid on
% colormap summer
% set(h,'BaseValue',-2)
% hold off
% hold on
% h = area(Y,-2); % Set BaseValue via argument
% set(h(1),'FaceColor',[.5 0 0])
% set(h(2),'FaceColor',[.7 0 0])
% set(h(3),'FaceColor',[1 0 0])
% set(h,'LineStyle',':','LineWidth',2) % Set all to same value
% hold off
% hold on
% load count.dat;
% y = count(1:10,:); % Loading the dataset creates a variable 'count' 
% figure; subplot(1,2,1);
% bar3(y,'detached');
% title('Detached');
% subplot(1,2,2);
% bar3(y,0.5,'detached');
% title('Width = 0.5');
% hold off
% hold on
% figure; subplot(1,2,1);
% bar3(y,'grouped');
% title('Grouped');
% subplot(1,2,2);
% bar3(y,0.25,'grouped');
% title('Width = 0.25');
% hold off
% hold on
% figure; subplot(1,2,1);
% bar3(y,'stacked');
% title('Stacked');
% subplot(1,2,2);
% bar3(y,0.25,'stacked');
% title('Width = 0.25');
% hold off
% hold on
% figure
% subplot(2,2,1)
% text(.5,.5,{'subplot(2,2,1)';'or subplot 221'},...
%     'FontSize',14,'HorizontalAlignment','center')
% subplot(2,2,2)
% text(.5,.5,{'subplot(2,2,2)';'or subplot 222'},...
%     'FontSize',14,'HorizontalAlignment','center')
% subplot(2,2,3)
% text(.5,.5,{'subplot(2,2,3)';'or subplot 223'},...
%     'FontSize',14,'HorizontalAlignment','center')
% subplot(2,2,4)
% text(.5,.5,{'subplot(2,2,4)';'or subplot 224'},...
%     'FontSize',14,'HorizontalAlignment','center')
% hold off
% hold on
% figure
% y = zeros(4,15);
% for k = 1:4
%     y(k,:) = rand(1,15);
%     subplot(2, 2, k)
%     plot(y(k,:));
% end
% hax = axes('Position', [.35, .35, .3, .3]);
% bar(hax,y,'EdgeColor','none')
% set(hax,'XTick',[])
% hold off
% hold on
% x = [1 3 0.5 2.5 2];
% explode = [0 1 0 0 0];
% pie3(x,explode)
% colormap hsv
% hold off
% hold on
% x = [1 3 0.5 2.5 2];
% explode = [0 1 0 0 0];
% pie(x,explode)
% colormap jet
% hold off
% hold on
%%
y = [75.995 91.972 105.711 123.203 131.669 ...
     150.697 179.323 203.212 226.505 249.633 281.422];
figure; barh(y);
hold off
hold on
figure; barh(y,0.4);
hold off
hold on
figure;
subplot(2,2,1); barh(y,'grouped');
subplot(2,2,2); barh(y,'stacked');
subplot(2,2,3); barh(y,'hist');
subplot(2,2,4); barh(y,'histc');
hold off
hold on
figure; barh(y,'r');
figure; barh(y,'g','EdgeColor',[1 0.5 0.5]);
a = -2.9:0.2:2.9;
barh(a,exp(-a.*a),'r')
hMulti = barh(yMat);
set(hMulti,'LineWidth', 2, 'LineStyle',':');
hold off
hold on
Y = randn(3,5);
h = barh(Y);
set(get(h(1),'BaseLine'),'LineWidth',2,'LineStyle',':')
colormap summer % Change the color scheme
hold off
hold on
hMulti = barh(yMat);
set(hMulti,'LineWidth', 2, 'LineStyle',':');
hold off