htext = uicontrol('style', 'text', 'string', '30.00');
tic;
while toc <= 30
    secs = 30-toc;
    s = sprintf('%1.3f',secs);
    set(htext, 'string', s);
    pause(0.9)
end