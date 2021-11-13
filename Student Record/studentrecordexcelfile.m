clc
clear
%% how to save data into excel
global filepath1
filepath1= strcat(pwd, '\record.xlsx')
b=magic(6)
xlswrite(filepath1, b, 'Sheet1','A1') 

%% sacing from MATLAB into excel
global filepath2
filepath2= strcat(pwd,'\mama.xlsx')
header={'column1','column2','column3','column4'}
xlswrite(filepath2,header,'sheet1','A1')
k=magic(4)
xlswrite(filepath2,k, 'sheet1','A1')
%% to retrieve data
[data,text,alldata]=xlsread(filepath2)