clc
clear

n=input('number of students= ');
% s=input('name of student= ');
% CAm=input('Score in CA-mathematics= ');
% Em=input('Score in Mathematics exam= ');
% CAe=input('Score in CA-english= ');
% Ee=input('Score in English exam= ');
% CAb=input('Score in CA-biology= ');
% Eb=input('Score in Biology exam= ');
% T=input('
for sd=1:n
    s(sd)=input('s= ');
    CAm(sd)=input('CAm= ');
    Em(sd)=input('Em= ');
    CAe(sd)=input('CAe= ');
    Ee(sd)=input('Ee= ');
    CAb(sd)=input('CAb= ');
    Eb(sd)=input('Eb= ');
end
totalm=CAm+Em;
if totalm>90
    disp 'A*'
if totalm<90 && totalm>=75
    disp 'A1'
if totalm<75 && totalm>=70
    disp 'B2'
if totalm<70 && totalm>=65
    disp 'B3'
if totalm<65 && totalm>=60
    disp 'C4'
if totalm<60 && totalm>=55
    disp 'C5'
if totalm<55 && totalm>=50
    disp 'C6'
if totalm<50 && totalm>=45
    disp 'D7'
if totalm<45 && totalm>=40
    disp 'E8'
if totalm<40 && totalm>=35
    disp 'F9'
if totale<35 && totale>=30
    disp 'Repeat'
else totale<30
    disp 'Hopeless'
totale=CAe+Ee;
if totale>90
    disp 'A*'
if totale<90 && totalm>=75
    disp 'A1'
if totale<75 && totalm>=70
    disp 'B2'
if totale<70 && totalm>=65
    disp 'B3'
if totale<65 && totalm>=60
    disp 'C4'
if totale<60 && totalm>=55
    disp 'C5'
if totale<55 && totalm>=50
    disp 'C6'
if totale<50 && totalm>=45
    disp 'D7'
if totale<45 && totalm>=40
    disp 'E8'
if totale<40 && totalm>=35
    disp 'F9'
if totale<35 && totale>=30
    disp 'Repeat'
else totale<30
    disp 'Hopeless'
totalb=CAb+Eb;
if totalb>90
    disp 'A*'
if totalb<90 && totalm>=75
    disp 'A1'
if totalb<75 && totalm>=70
    disp 'B2'
if totalb<70 && totalm>=65
    disp 'B3'
if totalb<65 && totalm>=60
    disp 'C4'
if totalb<60 && totalm>=55
    disp 'C5'
if totalb<55 && totalm>=50
    disp 'C6'
if totalb<50 && totalm>=45
    disp 'D7'
if totalb<45 && totalm>=40
    disp 'E8'
if totalb<40 && totalm>=35
    disp 'F9'
if totalb<35 && totale>=30
    disp 'Repeat'
else totalb<30
    disp 'Hopeless'
end 