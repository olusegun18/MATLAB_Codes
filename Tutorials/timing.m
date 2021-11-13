jj = input('Minute= ');
mm = jj*60;
% disp([num2str(mm),'secs']);
%  pause(1)
for j = 1:mm
mm = mm - 1;
h = [num2str(mm),'secs'];
disp(h)
pause(1)
end
beep