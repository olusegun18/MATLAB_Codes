clc
clear

b=[1 2; 3 4; 5 5; 6 7] % matlab stores it originally in linear indexing style;
                       % b becomes 1 3 5 6 2 4 5 7 
cv=length(b)
gf=size(b)
ft=b(1,:)
gt=b(:,1)
kk=sum(b(1,:))
gb=b(3,2)
linearindex=sub2ind(size(b),2,2)   % gives it's position in linear indexing 
[row col]=ind2sub(size(b),4)     % gives the position of 4 in the matrix(b)


x=[1 2 3;5 6 7]
u=[2 3 4;1 4 3]
v=[2 1 0; 3 5 6; 3 1 2]
y=mtimes(u,v)
ghvar=(x+y)
class=class(ghvar)


% COMBINING SINGLE AND DOUBLE DATA TYPES
x=[single(4.5),single(-2.8),pi,5.73*10^300] % converts 5.73*10^250 to infinity
                                            % because it is too big
                                            
%classx=class(x) 

% COMBINING INTEGER AND DOUBLE TYPES      % It yields integer matrix when,
                                          % combined together
y=[int8(21),int8(-22),int8(23),pi,45/6]   % the int8 converts its nemeric,
                                          % argument to an 8-bit integer
%classy=class(y)

% COMBINING CHARACTER AND DOUBLE TYPES    % Yields character when combined
z=['a','b','c',68,69,170]
%classz=class(z)

% COMBINING LOGICAL AND DOUBLE TYPES      % Yields a double when combined 
w=[true,false,false,pi,sqrt(7)]           % It turns true to 1 & false to 0
classw=class(w)