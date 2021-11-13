a = noql/2
time = a*60;
for i = 1: time
    bc = time/60;
    str_f = sprintf('%0.3f',bc);
    mint=regexp(str_f, '\.', 'split');
    min = mint(1)
    sec = rem(time,60);
    min = string(min);
    min = str2num(min);
    min = sprintf('%02d',min);
    sec = sprintf('%02d',sec);
    app.min.Text = min
    app.sec.Text = sec
    time = time-1;
    pause(1)
end
submitButtonPushed(app, event)