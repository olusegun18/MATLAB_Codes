clc
clear
%Creating 'Student(s) file record for 12 Subjects 
% giving the Scores and grades consecutively
n=input('Number of Students= ');
%d=input('Number of Subjects= ');
for tt=1:n
%for ds=1:d
    s=input('Name of student= ');
    a=input('Ist Subject= ');
    CA1=input('CA Score of the 1st Subject= ');
    E1=input('Exam Score of the 1st Subject= ');
    T1=('Total Score of the 1st Subject= ');
    T1=CA1+E1
if T1>90
    disp ('A*')
elseif T1<90 &&T1>=75
    disp ('A1')
elseif T1<75 &&T1>=70
    disp ('B2')
elseif T1<70 &&T1>=65
    disp ('B3')
elseif T1<65 &&T1>=60
    disp ('C4')
elseif T1<60 &&T1>=55
    disp ('C5')
elseif T1<55 &&T1>=50
    disp ('C6')
elseif T1<50 &&T1>=45
    disp ('D7')
elseif T1<45 &&T1>=40
    disp ('E8')
elseif T1<40 &&T1>=35
    disp ('F9')
elseif T1<35 && T1>=30
    disp ('Repeat')
else T1<30
    disp ('Hopeless')
end
    b=input('2nd Subject= ');
    CA2=input('CA Score of the Second Subject= ');
    E2=input('Exam Score of the Second Subject= ');
    T2=('Total Score of the Second Subject= ');
    T2=CA2+E2
    if T2>90
    disp ('A*')
elseif T2<90 &&T2>=75
    disp ('A1')
elseif T2<75 &&T2>=70
    disp ('B2')
elseif T2<70 &&T2>=65
    disp ('B3')
elseif T2<65 &&T2>=60
    disp ('C4')
elseif T2<60 &&T2>=55
    disp ('C5')
elseif T2<55 &&T2>=50
    disp ('C6')
elseif T2<50 &&T2>=45
    disp ('D7')
elseif T2<45 &&T2>=40
    disp ('E8')
elseif T2<40 &&T2>=35
    disp ('F9')
elseif T2<35 && T2>=30
    disp ('Repeat')
else T2<30
    disp ('Hopeless')
    end
    c=input('3rd Subject= '); 
    CA3=input('CA Score of the Third Subject= ');
    E3=input('Exam Score of the Third Subject= ');
    T3=('Total Score of the Third Subject= ');
    T3=CA3+E3
    if T3>90
    disp ('A*')
elseif T3<90 &&T3>=75
    disp ('A1')
elseif T3<75 &&T3>=70
    disp ('B2')
elseif T3<70 &&T3>=65
    disp ('B3')
elseif T3<65 &&T3>=60
    disp ('C4')
elseif T3<60 &&T3>=55
    disp ('C5')
elseif T3<55 &&T3>=50
    disp ('C6')
elseif T3<50 &&T3>=45
    disp ('D7')
elseif T3<45 &&T3>=40
    disp ('E8')
elseif T3<40 &&T3>=35
    disp ('F9')
elseif T3<35 && T3>=30
    disp ('Repeat')
else T3<30
    disp ('Hopeless')
    end
    d=input('4th Subject= ');
    CA4=input('CA Score of the Fourth Subject= ');
    E4=input('Exam Score of the Fourth Subject= ');
    T4=('Total Score of the Fourth Subject= ');
    T4=CA4+E4
    if T4>90
    disp ('A*')
elseif T4<90 &&T4>=75
    disp ('A1')
elseif T4<75 &&T4>=70
    disp ('B2')
elseif T4<70 &&T4>=65
    disp ('B3')
elseif T4<65 &&T4>=60
    disp ('C4')
elseif T4<60 &&T4>=55
    disp ('C5')
elseif T4<55 &&T4>=50
    disp ('C6')
elseif T4<50 &&T4>=45
    disp ('D7')
elseif T4<45 &&T4>=40
    disp ('E8')
elseif T4<40 &&T4>=35
    disp ('F9')
elseif T4<35 && T4>=30
    disp ('Repeat')
else T4<30
    disp ('Hopeless')
    end
    e=input('5th Subject= ');
    CA5=input('CA Score of the Fifth Subject= ');
    E5=input('Exam Score of the Fifth Subject= ');
    T5=('Total Score of the Fifth Subject= ');
    T5=CA5+E5
    if T5>90
    disp ('A*')
elseif T5<90 &&T5>=75
    disp ('A1')
elseif T5<75 &&T5>=70
    disp ('B2')
elseif T5<70 &&T5>=65
    disp ('B3')
elseif T5<65 &&T5>=60
    disp ('C4')
elseif T5<60 &&T5>=55
    disp ('C5')
elseif T5<55 &&T5>=50
    disp ('C6')
elseif T5<50 &&T5>=45
    disp ('D7')
elseif T5<45 &&T5>=40
    disp ('E8')
elseif T5<40 &&T5>=35
    disp ('F9')
elseif T5<35 && T5>=30
    disp ('Repeat')
else T5<30
    disp ('Hopeless')
    end
    f=input('6th Subject= ');
    CA6=input('CA Score of the Sixth Subject= ');
    E6=input('Exam Score of the Sixth Subject= ');
    T6=('Total Score of the Sixth Subject= ');
    T6=CA6+E6
    if T6>90
    disp ('A*')
elseif T6<90 &&T6>=75
    disp ('A1')
elseif T6<75 &&T6>=70
    disp ('B2')
elseif T6<70 &&T6>=65
    disp ('B3')
elseif T6<65 &&T6>=60
    disp ('C4')
elseif T6<60 &&T6>=55
    disp ('C5')
elseif T6<55 &&T6>=50
    disp ('C6')
elseif T6<50 &&T6>=45
    disp ('D7')
elseif T6<45 &&T6>=40
    disp ('E8')
elseif T6<40 &&T6>=35
    disp ('F9')
elseif T6<35 && T6>=30
    disp ('Repeat')
else T6<30
    disp ('Hopeless')
    end
    g=input('7th Subject= ');
    CA7=input('CA Score of the Seventh Subject= ');
    E7=input('Exam Score of the Seventh Subject= ');
    T7=('Total Score of the Seventh Subject= ');
    T7=CA7+E7
    if T7>90
    disp ('A*')
elseif T7<90 &&T7>=75
    disp ('A1')
elseif T7<75 &&T7>=70
    disp ('B2')
elseif T7<70 &&T7>=65
    disp ('B3')
elseif T7<65 &&T7>=60
    disp ('C4')
elseif T7<60 &&T7>=55
    disp ('C5')
elseif T7<55 &&T7>=50
    disp ('C6')
elseif T7<50 &&T7>=45
    disp ('D7')
elseif T7<45 &&T7>=40
    disp ('E8')
elseif T7<40 &&T7>=35
    disp ('F9')
elseif T7<35 && T7>=30
    disp ('Repeat')
else T7<30
    disp ('Hopeless')
    end
    h=input('8th Subject= ');
    CA8=input('CA Score of the Eighth Subject= ');
    E8=input('Exam Score of the Eighth Subject= ');
    T8=('Total Score of the Eighth Subject= ');
    T8=CA8+E8
    if T8>90
    disp ('A*')
elseif T8<90 &&T8>=75
    disp ('A1')
elseif T8<75 &&T8>=70
    disp ('B2')
elseif T8<70 &&T8>=65
    disp ('B3')
elseif T8<65 &&T8>=60
    disp ('C4')
elseif T8<60 &&T8>=55
    disp ('C5')
elseif T8<55 &&T8>=50
    disp ('C6')
elseif T8<50 &&T8>=45
    disp ('D7')
elseif T8<45 &&T8>=40
    disp ('E8')
elseif T8<40 &&T8>=35
    disp ('F9')
elseif T8<35 && T8>=30
    disp ('Repeat')
else T8<30
    disp ('Hopeless')
    end
    i=input('9th Subject= ');
    CA9=input('CA Score of the Nineth Subject= ');
    E9=input('Exam Score of the Nineth Subject= ');
    T9=('Total Score of the Nineth Subject= ');
    T9=CA9+E9
    if T9>90
    disp ('A*')
elseif T9<90 &&T9>=75
    disp ('A1')
elseif T9<75 &&T9>=70
    disp ('B2')
elseif T9<70 &&T9>=65
    disp ('B3')
elseif T9<65 &&T9>=60
    disp ('C4')
elseif T9<60 &&T9>=55
    disp ('C5')
elseif T9<55 &&T9>=50
    disp ('C6')
elseif T9<50 &&T9>=45
    disp ('D7')
elseif T9<45 &&T9>=40
    disp ('E8')
elseif T9<40 &&T9>=35
    disp ('F9')
elseif T9<35 && T9>=30
    disp ('Repeat')
else T9<30
    disp ('Hopeless')
    end
    j=input('10th Subject= ');
    CA10=input('CA Score of the Tenth Subject= ');
    E10=input('Exam Score of the Tenth Subject= ');
    T10=('Total Score of the Nineth Subject= ');
    T10=CA10+E10
    if T10>90
    disp ('A*')
elseif T10<90 &&T10>=75
    disp ('A1')
elseif T10<75 &&T10>=70
    disp ('B2')
elseif T10<70 &&T10>=65
    disp ('B3')
elseif T10<65 &&T10>=60
    disp ('C4')
elseif T10<60 &&T10>=55
    disp ('C5')
elseif T10<55 &&T10>=50
    disp ('C6')
elseif T10<50 &&T10>=45
    disp ('D7')
elseif T10<45 &&T10>=40
    disp ('E8')
elseif T10<40 &&T10>=35
    disp ('F9')
elseif T10<35 && T10>=30
    disp ('Repeat')
else T10<30
    disp ('Hopeless')
    end
    k=input('11th Subject= ');
    CA11=input('CA Score of the Eleventh Subject= ');
    E11=input('Exam Score of the Eleventh Subject= ');
    T11=('Total Score of the Eleventh Subject= ');
    T11=CA11+E11
    if T11>90
    disp ('A*')
elseif T11<90 &&T11>=75
    disp ('A1')
elseif T11<75 &&T11>=70
    disp ('B2')
elseif T11<70 &&T11>=65
    disp ('B3')
elseif T11<65 &&T11>=60
    disp ('C4')
elseif T11<60 &&T11>=55
    disp ('C5')
elseif T11<55 &&T11>=50
    disp ('C6')
elseif T11<50 &&T11>=45
    disp ('D7')
elseif T11<45 &&T11>=40
    disp ('E8')
elseif T11<40 &&T11>=35
    disp ('F9')
elseif T11<35 && T11>=30
    disp ('Repeat')
else T11<30
    disp ('Hopeless')
    end
    l=input('12th Subject= ');
    C12=input('CA Score of the Twelfth Subject= ');
    E12=input('Exam Score of the Twelfth Subject= ');
    T12=('Total Score of the Twelfth Subject= ');
    T12=CA12+E12
    if T12>90
    disp ('A*')
elseif T12<90 &&T12>=75
    disp ('A1')
elseif T12<75 &&T12>=70
    disp ('B2')
elseif T12<70 &&T12>=65
    disp ('B3')
elseif T12<65 &&T12>=60
    disp ('C4')
elseif T12<60 &&T12>=55
    disp ('C5')
elseif T12<55 &&T12>=50
    disp ('C6')
elseif T12<50 &&T12>=45
    disp ('D7')
elseif T12<45 &&T12>=40
    disp ('E8')
elseif T12<40 &&T12>=35
    disp ('F9')
elseif T12<35 && T12>=30
    disp ('Repeat')
else T12<30
    disp ('Hopeless')
    end
%end
%     s=input('Name of student= ');
%     CAs=input('CA Score= ');
%     Es=input('Exam Score= ');
%     Ts=('Total Score= ');
%     Ts=CAs+Es
%     CAe=input('CA of the Second Subject= ');
%     Ee=input('the Second Subject Exam= ');
%     CAb=input('CA of the Fifth Subject= ');
%     Eb=input('the Fifth Subject Exam= ')
   Resulta=T1
   Resultb=T2
   Resultc=T3
   Resultd=T4
   Resulte=T5
   Resultf=T6
   Resultg=T7
   Resulth=T8
   Resulti=T9
   Resultj=T10
   Resultk=T11
   Resultl=T12
 %end 
% for sde=1:ns
%     z=input('Subject Name= ');
%     CAs=input('CA Score= ');
%     Es=input('Exam Score= ');
%     Ts=('Total Score= ');
%     Ts=CAs+Es
%  end 

    
end  

