clc
clear
% Record Sheet of n-students,for n-subjects.
n=input('Number of Students= ');
for ds=1:n
    s=input('Name of student= ');
    d=input('Number of Subjects= ');
for jj=1:d
    z=input('Subject Name= ');
    CAs=input('CA Score of the Subject= ');
    Es=input('Exam Score of the Subject= ');
    Ts=('Total Score of the Subject= ');
    Ts=CAs+Es
 if Ts>90
    disp ('A*')
elseif Ts<90 &&Ts>=75
    disp ('A1')
elseif Ts<75 &&Ts>=70
    disp ('B2')
elseif Ts<70 &&Ts>=65
    disp ('B3')
elseif Ts<65 &&Ts>=60
    disp ('C4')
elseif Ts<60 &&Ts>=55
    disp ('C5')
elseif Ts<55 &&Ts>=50
    disp ('C6')
elseif Ts<50 &&Ts>=45
    disp ('D7')
elseif Ts<45 &&Ts>=40
    disp ('E8')
elseif Ts<40 &&Ts>=35
    disp ('F9')
elseif Ts<35 && Ts>=30
    disp ('Repeat')
else Ts<30
    disp ('Hopeless')
 end 
end
end