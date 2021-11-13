clc
clear

n=input('number of students= ');
s=input('Name of Student= ');
% totalm=('Total Score in Mathematics= ')
% totale=('Total Score in English= ')
% totalb=('Total Score in Biology= ')
for sd=1:n
%     fprintf('Student %s ',n)
    CAm(sd)=input('CAm= ');
    Em(sd)=input('Em= ');
    CAe(sd)=input('CAe= ');
    Ee(sd)=input('Ee= ');
    CAb(sd)=input('CAb= ');
    Eb(sd)=input('Eb= ');
end
totalm=CAm+Em
if totalm>90
    disp ('A*')
elseif totalm<90 && totalm>=75
    disp ('A1')
elseif totalm<75 && totalm>=70
    disp ('B2')
elseif totalm<70 && totalm>=65
    disp ('B3')
elseif totalm<65 && totalm>=60
    disp ('C4')
elseif totalm<60 && totalm>=55
    disp ('C5')
elseif totalm<55 && totalm>=50
    disp ('C6')
elseif totalm<50 && totalm>=45
    disp ('D7')
elseif totalm<45 && totalm>=40
    disp ('E8')
elseif totalm<40 && totalm>=35
    disp ('F9')
elseif totalm<35 && totalm>=30
    disp ('Repeat')    
else totalm<30
    disp ('Hopeless')
end
totale=CAe+Ee
if totale>90
    disp ('A*')
elseif totale<90 && totalm>=75
    disp ('A1')
elseif totale<75 && totalm>=70
    disp ('B2')
elseif totale<70 && totalm>=65
    disp ('B3')
elseif totale<65 && totalm>=60
    disp ('C4')
elseif totale<60 && totalm>=55
    disp ('C5')
elseif totale<55 && totalm>=50
    disp ('C6')
elseif totale<50 && totalm>=45
    disp ('D7')
elseif totale<45 && totalm>=40
    disp ('E8')
elseif totale<40 && totalm>=35
    disp ('F9')
elseif totale<35 && totale>=30
    disp ('Repeat')
else totale<30
    disp ('Hopeless')
end    
totalb=CAb+Eb
if totalb>90
    disp ('A*')
elseif totalb<90 && totalm>=75
    disp ('A1')
elseif totalb<75 && totalm>=70
    disp ('B2')
elseif totalb<70 && totalm>=65
    disp ('B3')
elseif totalb<65 && totalm>=60
    disp ('C4')
elseif totalb<60 && totalm>=55
    disp ('C5')
elseif totalb<55 && totalm>=50
    disp ('C6')
elseif totalb<50 && totalm>=45
    disp ('D7')
elseif totalb<45 && totalm>=40
    disp ('E8')
elseif totalb<40 && totalm>=35
    disp ('F9')
elseif totalb<35 && totale>=30
    disp ('Repeat')
else totalb<30
    disp ('Hopeless')
end 