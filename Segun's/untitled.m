clc
clear
n = [1,1,1,1,1];
    
for i = 1:10
    m = randperm(4);
    m = string(m);
    m = strrep(m,'3','7');
    m = strrep(m,'1','3');
    m = strrep(m,'4','9');
    m = strrep(m,'2','5');
    m = str2double(m);
    n(i,1)=m(1);
    n(i,2)=m(2);
    n(i,3)=m(3);
    n(i,4)=m(4);
    n(i,5)=11;
end