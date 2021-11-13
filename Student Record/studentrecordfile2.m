clc
clear

n=input('number of students= ');
% totalm=('Total Score in Mathematics= ')
% totale=('Total Score in English= ')
% totalb=('Total Score in Biology= ')
for sd=1:n
%     fprintf('Student %s ',n)
    s=input('Name of Student= ');
    CAm(sd)=input('CAm= ');
    Em(sd)=input('Em= ');
    CAe(sd)=input('CAe= ');
    Ee(sd)=input('Ee= ');
    CAb(sd)=input('CAb= ');
    Eb(sd)=input('Eb= ');
    totalm(sd)=CAm(sd)+Em(sd)
    totale(sd)=CAe(sd)+Ee(sd)
    totalb(sd)=CAb(sd)+Eb(sd)


if totalm>=90
    fprintf ('A* %s',n)
elseif totalm>=75 && totalm<90
    fprintf ('A1 %s',n)
elseif totalm>=70 && totalm<75
    fprintf ('B2 %s',n)
elseif totalm>=65 && totalm<70
    fprintf ('B3 %s',n)
elseif totalm>=60 && totalm<65
    fprintf ('C4 %s',n)
elseif totalm>=55 && totalm<60
    fprintf ('C5 %s',n)
elseif totalm>=50 && totalm<55
    fprintf ('C6 %s',n)
elseif totalm>=45 && totalm<50
    fprintf ('D7 %s',n)
elseif totalm>=40 && totalm<45
    fprintf ('E8 %s',n)
elseif totalm>=35 && totalm<40
    fprintf ('F9 %s',n)
elseif totalm>=30 && totalm<35
    fprintf ('Repeat %s',n)    
else totalm<30
    fprintf ('Hopeless %s\n',n)
end

if totale>=90
    fprintf ('A* %s',n)
elseif totale>=75 && totale<90
    fprintf ('A1 %s',n)
elseif totale>=70 && totale<75
    fprintf ('B2 %s',n)
elseif totale>=65 && totale<70
    fprintf ('B3 %s',n)
elseif totale>=60 && totale<65
    fprintf ('C4 %s',n)
elseif totale>=55 && totale<60
    fprintf ('C5 %s',n)
elseif totale>=50 && totale<55
    fprintf ('C6 %s',n)
elseif totale>=45 && totale<50
    fprintf ('D7 %s',n)
elseif totale>=40 && totale<45
    fprintf ('E8 %s',n)
elseif totale>=35 && totale<40
    fprintf ('F9 %s',n)
elseif totale>=30 && totale<35
    fprintf ('Repeat %s',n)    
else totale<30
    fprintf ('Hopeless %s\n',n)
end    

if totalb>=90
    fprintf ('A* %s',n)
elseif totalb>=75 && totalb<90
    fprintf ('A1 %s',n)
elseif totalb>=70 && totalb<75
    fprintf ('B2 %s',n)
elseif totalb>=65 && totalb<70
    fprintf ('B3 %s',n)
elseif totalb>=60 && totalb<65
    fprintf ('C4 %s',n)
elseif totalb>=55 && totalb<60
    fprintf ('C5 %s',n)
elseif totalb>=50 && totalb<55
    fprintf ('C6 %s',n)
elseif totalb>=45 && totalb<50
    fprintf ('D7 %s',n)
elseif totalb>=40 && totalb<45
    fprintf ('E8 %s',n)
elseif totalb>=35 && totalb<40
    fprintf ('F9 %s',n)
elseif totalb>=30 && totalb<35
    fprintf ('Repeat %s',n)    
else totalb<30
    fprintf ('Hopeless %s\n',n)
end

end