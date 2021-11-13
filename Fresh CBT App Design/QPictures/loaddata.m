clc
clear

 [data,text,alldata]=xlsread('economic_work.xlsx',-1);
 save('economic_datamatrix.mat','alldata');

%  load 'computerdatamatrix.mat';
%  hk=(alldata)
 
