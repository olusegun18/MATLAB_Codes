clc
clear

a=[1 2;3 4;5 6;7 8]
a(:,2)='' % replace column 2 with empty set
a(:,2)=7  % fill column 2 with 7
a(3,:)=5  % fill row 3 with 5