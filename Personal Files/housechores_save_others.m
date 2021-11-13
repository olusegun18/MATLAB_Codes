clc
clear
gg = [1 2 3 4 5 6];
kk = ['Good' 'kind' 'love' 'hatred']
% kj=('Good' 'kind' 'love' 'hatred')
klk = {'Good' 'kind' 'love' 'hatred'}
ak = {gg kk klk 3 4 5 6}
 u=ak{1,1}
 u=ak(1,5)
 insto = cell(10,2)
 for b = 1:20
 hh = ['housechore',num2str(b),'= ']
a=input(hh)
insto(1,b) = {a}
 end
% 
% % joseph=load('housechore.mat')
% % insto = joseph.ll
% % ll= reshape(insto,5,4)
% % save('housechore.mat','ll')
% % kk = input('Name? ');
% % switch kk
% %     case 1
% %         joseph= load('housechore.mat');
% %         Data = joseph.ll
% %     case 2
% %         disp('You Exited')
% % end
% 
% 
% % joseph=load('housechore.mat')
% % insto = joseph.ll
% % ll= reshape(insto,10,2)
% % save('housechore.mat','ll')
% % kk = input('Name? ');
% % switch kk
% %     case 'Ayo'
% %    r = randperm(10,5)
% %    c = randi([1 2],1,5)
% %     for i = 1:5
% %         u = r(1,i);
% %         t = c(1,i);
% %         ahc(1,i) = ll(u,t);
% %     end
% %     case 'Joseph'
% % 
% %     case 'Feranmi'
% %         
% %     case 'Mallam'
% %     otherwise
% % end
% % disp(ahc)
% % jj = rand(4,5)
% % jj = randi([1 4],1,5)
% % jj = randperm(7,5)
% 
% % joseph=load('housechore.mat')
% % insto = joseph.ll
% % ll= reshape(insto,10,2)
% % % save('housechore.mat','ll')
% % kk = input('Name? ');
% % switch kk
% %     case 'Ayo'
% %     r=randperm(10,1);
% %     c=randperm(2,1);
% %     ahc=ll{r,c};
% %     disp(['Ayo''s housechore is ', ahc])
% %     case 'Joseph'
% %         r=randperm(10,1);
% %     c=randperm(2,1);
% %     ahc=ll{r,c};
% %     disp(['Joseph''s housechore is ', ahc])
% %     case 'Feranmi'
% %             r=randperm(10,1);
% %     c=randperm(2,1);
% %     ahc=ll{r,c};
% %     disp(['Feranmi''s housechore is ', ahc])
% %     case 'Mallam'
% %     r=randperm(10,1);
% %     c=randperm(2,1);
% %     ahc=ll{r,c};
% %     disp(['Ayo''s housechore is ', ahc])
% %     otherwise
% %  disp('Get Out!')
% % end
% % 
% % 
% % 
