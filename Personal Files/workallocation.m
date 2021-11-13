clc
clear


age=input('age of the children=');
if age>=0 && age<=2
    disp('sleeping || sitting')
elseif age>2 && age<=5
    disp('playing || eating')
elseif age>5 && age<=7
    disp('resting')
elseif age>7 && age<=12
    disp('sweeping || writing')
elseif age>12 && age<=15
    disp('cleaning || clearing || riding')
elseif age>15 && age<=18
    disp('washing || cooking || reading')
elseif age>18 && age<=20
    disp('scrubbing || adjusting')
elseif age>20 && age<=25
    disp('disciplining || supervising || recording')
else age>25
    disp('naming || nursing')
end