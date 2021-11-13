th=str2double(get(handles.edit,'String'));
gh=th-1;
set(handles.edit,'String',gh)
b=c(1,gig);
if strcmp(b,'a')
   set(handles.edit4,'visible','on')
   set(handles.edit10,'visible','on')
   set(handles.edit10,'BackgroundColor','green')
   mv=randi([10 50],1);
   set(handles.text21,'String',mv)
   pause(2)
   set(handles.edit10,'BackgroundColor','Black')
   set(handles.edit11,'visible','on')
   set(handles.edit11,'BackgroundColor','green')
   mv=randi([10 50],1);
   set(handles.text31,'String',mv)
   pause(2)
   set(handles.edit11,'BackgroundColor','Black')
   pause(1)
   set(handles.edit10,'visible','off')
   set(handles.edit4,'visible','off')
   set(handles.edit11,'visible','off')
   set(handles.edit5,'visible','off')
   u=msgbox('Phase 1 Done!');
   pause(2)
   close(u)
   pause(1)
   set(handles.edit5,'visible','on')
   set(handles.edit10,'BackgroundColor','green')
   set(handles.edit11,'BackgroundColor','green')
   set(handles.edit10,'visible','on')
   mv=randi([10 50],1);
   set(handles.text22,'String',mv)
   pause(2)
   set(handles.edit10,'BackgroundColor','Black')
   set(handles.edit11,'visible','on')
   mv=randi([10 50],1);
   set(handles.text32,'String',mv)
   pause(2)
   set(handles.edit11,'BackgroundColor','Black')
   pause(1)
   b=str2double(get(handles.text21,'String'));
   g=str2double(get(handles.text22,'String'));
   h=str2double(get(handles.text31,'String'));
   d=str2double(get(handles.text32,'String'));
   m=h+d;
   n=b+g;
   set(handles.tot2,'String',n)
   set(handles.tot3,'String',m)
   k=msgbox('Phase 2 Done!');
   one=[b h g d n m];
   g=[m n];
   save Transmission1.mat one
   u=max(g);
   set(handles.edith,'String',u)
   pause(2)
   close(k)
   set(handles.edit4,'BackgroundColor','red')
   set(handles.edit5,'BackgroundColor','red')
   set(handles.edit10,'BackgroundColor','green')
   set(handles.edit11,'BackgroundColor','green')
   set(handles.edit10,'visible','off')
   set(handles.edit4,'visible','off')
   set(handles.edit5,'visible','off')
   set(handles.edit11,'visible','off')
elseif strcmp(b,'b')
    set(handles.edit4,'visible','on')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    mh=randi([10 50],1);
    set(handles.text21,'String',mh)
    pause(2)
    set(handles.edit10,'BackgroundColor','Black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mh=randi([10 50],1);
    set(handles.text31,'String',mh)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mh=randi([10 50],1);
    set(handles.text41,'String',mh)
    pause(1)
    set(handles.edit4,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    m=msgbox('Phase 1 Done');
    pause(2)
    close(m)
    set(handles.edit5,'visible','on')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    mv=randi([10 50],1);
   set(handles.text22,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','Black')
    set(handles.edit11,'BackgroundColor','green')
    set(handles.edit11,'visible','on')
    mv=randi([10 50],1);
   set(handles.text32,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit12,'BackgroundColor','green')
    set(handles.edit12,'visible','on')
    mv=randi([10 50],1);
   set(handles.text42,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    pause(1)
    set(handles.edit4,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit5,'visible','off')
    k=msgbox('Phase 2 Done!');
    pause(2)
    close(k)
    set(handles.edit6,'visible','on')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    mv=randi([10 50],1);
   set(handles.text23,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','Black')
    set(handles.edit11,'BackgroundColor','green')
    set(handles.edit11,'visible','on')
    mv=randi([10 50],1);
   set(handles.text33,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit12,'BackgroundColor','green')
    set(handles.edit12,'visible','on')
    mv=randi([10 50],1);
   set(handles.text43,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    pause(1)
    set(handles.edit4,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit4,'BackgroundColor','red')
   set(handles.edit5,'BackgroundColor','red')
   set(handles.edit6,'BackgroundColor','red')
   set(handles.edit10,'BackgroundColor','green')
   set(handles.edit11,'BackgroundColor','green')
   set(handles.edit12,'BackgroundColor','green')
   set(handles.edit6,'visible','off')
   b=str2double(get(handles.text21,'String'));
   g=str2double(get(handles.text22,'String'));
   w=str2double(get(handles.text23,'String'));
   h=str2double(get(handles.text31,'String'));
   d=str2double(get(handles.text32,'String'));
   l=str2double(get(handles.text33,'String'));
   y=str2double(get(handles.text41,'String'));
   k=str2double(get(handles.text42,'String'));
   j=str2double(get(handles.text43,'String'));
   m=h+d+l;
   n=b+g+w;
   c=y+k+j;
   set(handles.tot2,'String',n)
   set(handles.tot3,'String',m)
   set(handles.tot4,'String',c)
   k=msgbox('Phase 3 Done!');
   pause(2)
   close(k)
   gui=[m n c];
   uog=max(gui);
   two=[b h y g d k w l j n m c]
   save Transmission2.mat two
   set(handles.edith,'String',uog)
elseif strcmp(b,'c')
    set(handles.edit5,'visible','on')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text31,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text41,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text51,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text61,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    set(handles.edit15,'visible','on')
    set(handles.edit15,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text71,'String',mv)
    pause(2)
    set(handles.edit15,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit5,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit15,'visible','off')
    set(handles.edit6,'visible','on')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text32,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text42,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text52,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text62,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    set(handles.edit15,'visible','on')
    set(handles.edit15,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text72,'String',mv)
    pause(2)
    set(handles.edit15,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 2 Done!');
    pause(2)
    close(m)
    set(handles.edit6,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit15,'visible','off')
    set(handles.edit7,'visible','on')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text33,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text43,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text53,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text63,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    set(handles.edit15,'visible','on')
    set(handles.edit15,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text73,'String',mv)
    pause(2)
    set(handles.edit15,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 3 Done!');
    pause(2)
    close(m)
    set(handles.edit7,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit15,'visible','off')
    set(handles.edit8,'visible','on')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text34,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text44,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text54,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text64,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    set(handles.edit15,'visible','on')
    set(handles.edit15,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text74,'String',mv)
    pause(2)
    set(handles.edit15,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 4 Done!');
    pause(2)
    close(m)
    set(handles.edit8,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit15,'visible','off')
    set(handles.edit9,'visible','on')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text35,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text45,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text55,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text65,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    set(handles.edit15,'visible','on')
    set(handles.edit15,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text75,'String',mv)
    pause(2)
    set(handles.edit15,'BackgroundColor','Black')
    pause(1)
   b=str2double(get(handles.text31,'String'));
   g=str2double(get(handles.text32,'String'));
   w=str2double(get(handles.text33,'String'));
   h=str2double(get(handles.text34,'String'));
   d=str2double(get(handles.text35,'String'));
   l=str2double(get(handles.text41,'String'));
   y=str2double(get(handles.text42,'String'));
   k=str2double(get(handles.text43,'String'));
   j=str2double(get(handles.text44,'String'));
   a=str2double(get(handles.text45,'String'));
   e=str2double(get(handles.text51,'String'));
   f=str2double(get(handles.text52,'String'));
   i=str2double(get(handles.text53,'String'));
   o=str2double(get(handles.text54,'String'));
   p=str2double(get(handles.text55,'String'));
   q=str2double(get(handles.text61,'String'));
   r=str2double(get(handles.text62,'String'));
   s=str2double(get(handles.text63,'String'));
   t=str2double(get(handles.text64,'String'));
   u=str2double(get(handles.text65,'String'));
   v=str2double(get(handles.text71,'String'));
   x=str2double(get(handles.text72,'String'));
   z=str2double(get(handles.text73,'String'));
   aa=str2double(get(handles.text74,'String'));
   ab=str2double(get(handles.text75,'String'));
   me=l+y+k+j+a;
   n=b+g+w+h+d;
   c=e+f+i+o+p;
   ac=q+r+s+t+u;
   ad=v+x+z+aa+ab;
   set(handles.tot3,'String',n)
   set(handles.tot4,'String',me)
   set(handles.tot5,'String',c)
   set(handles.tot6,'String',ac)
   set(handles.tot7,'String',ad)
   pause(1)
    m=msgbox('Phase 5 Done!');
    pause(2)
    close(m)
   gui=[me n c ac ad];
   uog=max(gui);
   three=[b l e q v h g y f r d w k i s h j o t aa d a p u ab n me c ac ad]
   save Transmission3.mat three
   set(handles.edith,'String',uog)
    set(handles.edit9,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit15,'visible','off')
elseif strcmp(b,'d')
    set(handles.edit6,'visible','on')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
      mv=randi([10 50],1);
   set(handles.text41,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
      mv=randi([10 50],1);
   set(handles.text51,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
      mv=randi([10 50],1);
   set(handles.text61,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    set(handles.edit15,'visible','on')
    set(handles.edit15,'BackgroundColor','green')
      mv=randi([10 50],1);
   set(handles.text71,'String',mv)
    pause(2)
    set(handles.edit15,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit6,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit15,'visible','off')
    set(handles.edit7,'visible','on')
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
      mv=randi([10 50],1);
   set(handles.text42,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
      mv=randi([10 50],1);
   set(handles.text52,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
      mv=randi([10 50],1);
   set(handles.text62,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    set(handles.edit15,'visible','on')
    set(handles.edit15,'BackgroundColor','green')
      mv=randi([10 50],1);
   set(handles.text72,'String',mv)
    pause(2)
    set(handles.edit15,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 2 Done!');
    pause(2)
    close(m)
    set(handles.edit7,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit15,'visible','off')
    set(handles.edit8,'visible','on')
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
      mv=randi([10 50],1);
   set(handles.text43,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
      mv=randi([10 50],1);
   set(handles.text53,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
      mv=randi([10 50],1);
   set(handles.text63,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    set(handles.edit15,'visible','on')
    set(handles.edit15,'BackgroundColor','green')
      mv=randi([10 50],1);
   set(handles.text73,'String',mv)
    pause(2)
    set(handles.edit15,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 3 Done!');
    pause(2)
    close(m)
    set(handles.edit8,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit15,'visible','off')
    set(handles.edit9,'visible','on')
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
      mv=randi([10 50],1);
   set(handles.text44,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
      mv=randi([10 50],1);
   set(handles.text54,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
      mv=randi([10 50],1);
   set(handles.text64,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    set(handles.edit15,'visible','on')
    set(handles.edit15,'BackgroundColor','green')
      mv=randi([10 50],1);
   set(handles.text74,'String',mv)
    pause(2)
   set(handles.edit15,'BackgroundColor','Black')
   l=str2double(get(handles.text41,'String'));
   y=str2double(get(handles.text42,'String'));
   k=str2double(get(handles.text43,'String'));
   j=str2double(get(handles.text44,'String'));
   e=str2double(get(handles.text51,'String'));
   f=str2double(get(handles.text52,'String'));
   i=str2double(get(handles.text53,'String'));
   o=str2double(get(handles.text54,'String'));
   q=str2double(get(handles.text61,'String'));
   r=str2double(get(handles.text62,'String'));
   s=str2double(get(handles.text63,'String'));
   t=str2double(get(handles.text64,'String'));
   v=str2double(get(handles.text71,'String'));
   x=str2double(get(handles.text72,'String'));
   z=str2double(get(handles.text73,'String'));
   aa=str2double(get(handles.text74,'String'));
   me=l+y+k+j;
   c=e+f+i+o;
   ac=q+r+s+t;
   ad=v+x+z+aa;
   set(handles.tot4,'String',me)
   set(handles.tot5,'String',c)
   set(handles.tot6,'String',ac)
   set(handles.tot7,'String',ad)
    pause(1)
    m=msgbox('Phase 4 Done!');
    pause(2)
    close(m)
   gui=[me c ac ad];
   uog=max(gui);
   four=[l e q v y f r x t i s z j o t aa me c ac ad]
   save Transmission4.mat four
   set(handles.edith,'String',uog)
    set(handles.edit9,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit15,'visible','off')
elseif strcmp(b,'e')
    set(handles.edit5,'visible','on')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
   set(handles.text31,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text41,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text51,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text61,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    pause(1)
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit5,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit6,'visible','on')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text32,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text42,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text52,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text62,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    pause(1)
    m=msgbox('Phase 2 Done!');
    pause(2)
    close(m)
    set(handles.edit6,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit7,'visible','on')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text33,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text43,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text53,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text63,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    pause(1)
    m=msgbox('Phase 3 Done!');
    pause(2)
    close(m)
    set(handles.edit7,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit8,'visible','on')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text34,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text44,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text54,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text64,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    pause(1)
   b=str2double(get(handles.text31,'String'));
   g=str2double(get(handles.text32,'String'));
   w=str2double(get(handles.text33,'String'));
   h=str2double(get(handles.text34,'String'));
   l=str2double(get(handles.text41,'String'));
   y=str2double(get(handles.text42,'String'));
   k=str2double(get(handles.text43,'String'));
   j=str2double(get(handles.text44,'String'));
   e=str2double(get(handles.text51,'String'));
   f=str2double(get(handles.text52,'String'));
   i=str2double(get(handles.text53,'String'));
   o=str2double(get(handles.text54,'String'));
   q=str2double(get(handles.text61,'String'));
   r=str2double(get(handles.text62,'String'));
   s=str2double(get(handles.text63,'String'));
   t=str2double(get(handles.text64,'String'));
   me=l+y+k+j;
   c=e+f+i+o;
   ac=q+r+s+t;
   ad=b+g+w+h;
   set(handles.tot4,'String',me)
   set(handles.tot5,'String',c)
   set(handles.tot6,'String',ac)
   set(handles.tot3,'String',ad)
    m=msgbox('Phase 4 Done!');
    pause(2)
    close(m)
   gui=[me c ac ad];
   uog=max(gui);
   five=[b l e q g y f r w k i s h j o t ad me c ac]
   save Transmission5.mat five
   set(handles.edith,'String',uog)
    set(handles.edit8,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit14,'visible','off')
elseif strcmp(b,'f')
    set(handles.edit2,'visible','on')
    set(handles.edit3,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
   mv=randi([10 50],1);
   set(handles.text11,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
   mv=randi([10 50],1);
   set(handles.text21,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    pause(1)
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit2,'visible','off')
    set(handles.edit3,'visible','off')
    set(handles.edit10,'visible','off')
    pause(1)
    set(handles.edit3,'visible','on')
    set(handles.edit4,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
   mv=randi([10 50],1);
   set(handles.text12,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
   mv=randi([10 50],1);
   set(handles.text22,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    pause(1)
    j=str2double(get(handles.text11,'String'));
    k=str2double(get(handles.text12,'String'));
    me=str2double(get(handles.text21,'String'));
    b=str2double(get(handles.text22,'String'));
    t=j+k;
    v=me+b;
    set(handles.tot1,'String',t)
    set(handles.tot2,'String',v)
    m=msgbox('Phase 2 Done!');
    pause(2)
    close(m)
   gui=[t v];
   uog=max(gui);
   six=[j me k b t v]
   save Transmission6.mat six
   set(handles.edith,'String',uog)
    set(handles.edit3,'visible','off')
    set(handles.edit2,'visible','off')
    set(handles.edit4,'visible','off')
    set(handles.edit10,'visible','off')
elseif strcmp(b,'g')  
    set(handles.edit6,'visible','on')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
   set(handles.text41,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','Black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
   set(handles.text51,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    pause(1)
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit7,'visible','on')
    set(handles.edit6,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
   set(handles.text42,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','Black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
   set(handles.text52,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    pause(1)
    j=str2double(get(handles.text41,'String'));
    k=str2double(get(handles.text42,'String'));
    me=str2double(get(handles.text51,'String'));
    b=str2double(get(handles.text52,'String'));
    t=j+k;
    v=me+b;
    set(handles.tot4,'String',t)
    set(handles.tot5,'String',v)
    m=msgbox('Phase 2 Done!');
    pause(2)
    close(m)
   gui=[t v];
   uog=max(gui);
   seven=[j me k b t v]
   save Transmission7.mat seven
   set(handles.edith,'String',uog)
    set(handles.edit12,'visible','off')
    set(handles.edit6,'visible','off')
    set(handles.edit7,'visible','off')
    set(handles.edit13,'visible','off')
elseif strcmp(b,'h')
    set(handles.edit2,'visible','on')
    set(handles.edit3,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text11,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text21,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    set(handles.edit11,'BackgroundColor','green')
    set(handles.edit11,'visible','on')
     mv=randi([10 50],1);
   set(handles.text31,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit2,'visible','off')
    set(handles.edit3,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit5,'visible','off')
    set(handles.edit11,'visible','off')
    pause(1)
    set(handles.edit3,'visible','on')
    set(handles.edit4,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text12,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text22,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    set(handles.edit11,'BackgroundColor','green')
    set(handles.edit11,'visible','on')
     mv=randi([10 50],1);
   set(handles.text32,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 2 Done!');
    pause(2)
    close(m)
    set(handles.edit3,'visible','off')
    set(handles.edit2,'visible','off')
    set(handles.edit4,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit5,'visible','off')
    set(handles.edit11,'visible','off')
    pause(1)
    set(handles.edit3,'visible','on')
    set(handles.edit5,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text13,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text23,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
     mv=randi([10 50],1);
   set(handles.text33,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    pause(1)
    j=str2double(get(handles.text11,'String'));
    k=str2double(get(handles.text12,'String'));
    o=str2double(get(handles.text13,'String'));
    me=str2double(get(handles.text21,'String'));
    b=str2double(get(handles.text22,'String'));
    a=str2double(get(handles.text23,'String'));
    y=str2double(get(handles.text31,'String'));
    u=str2double(get(handles.text32,'String'));
    d=str2double(get(handles.text33,'String'));
    t=j+k+o;
    v=me+b+a;
    f=y+u+d;
    set(handles.tot1,'String',t)
    set(handles.tot2,'String',v)
    set(handles.tot3,'String',f)
    m=msgbox('Phase 3 Done!');
    pause(2)
    close(m)
   gui=[t v f];
   uog=max(gui);
   eight=[j me y k b u o a d t v f]
   save Transmission8.mat eight
   set(handles.edith,'String',uog)
    set(handles.edit3,'visible','off')
    set(handles.edit2,'visible','off')
    set(handles.edit4,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit5,'visible','off')
    set(handles.edit11,'visible','off')
elseif strcmp(b,'i')
    set(handles.edit2,'visible','on')
    set(handles.edit3,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text11,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text21,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text31,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text41,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text51,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit2,'visible','off')
    set(handles.edit3,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit4,'visible','on')
    set(handles.edit3,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text12,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text22,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text32,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text42,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text52,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 2 Done!');
    pause(2)
    close(m)
    set(handles.edit4,'visible','off')
    set(handles.edit3,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit5,'visible','on')
    set(handles.edit3,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text13,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text23,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text33,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text43,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text53,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 3 Done!');
    pause(2)
    close(m)
    set(handles.edit5,'visible','off')
    set(handles.edit3,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit6,'visible','on')
    set(handles.edit3,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text14,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text24,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text34,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text44,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text54,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 4 Done!');
    pause(2)
    close(m)
    set(handles.edit6,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit7,'visible','on')
    set(handles.edit3,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text15,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text25,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text35,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text45,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text55,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    pause(1)
    b=str2double(get(handles.text11,'String'));
   g=str2double(get(handles.text12,'String'));
   w=str2double(get(handles.text13,'String'));
   h=str2double(get(handles.text14,'String'));
   d=str2double(get(handles.text15,'String'));
   l=str2double(get(handles.text21,'String'));
   y=str2double(get(handles.text22,'String'));
   k=str2double(get(handles.text23,'String'));
   j=str2double(get(handles.text24,'String'));
   a=str2double(get(handles.text25,'String'));
   e=str2double(get(handles.text31,'String'));
   f=str2double(get(handles.text32,'String'));
   i=str2double(get(handles.text33,'String'));
   o=str2double(get(handles.text34,'String'));
   p=str2double(get(handles.text35,'String'));
   q=str2double(get(handles.text41,'String'));
   r=str2double(get(handles.text42,'String'));
   s=str2double(get(handles.text43,'String'));
   t=str2double(get(handles.text44,'String'));
   u=str2double(get(handles.text45,'String'));
   v=str2double(get(handles.text51,'String'));
   x=str2double(get(handles.text52,'String'));
   z=str2double(get(handles.text53,'String'));
   aa=str2double(get(handles.text54,'String'));
   ab=str2double(get(handles.text55,'String'));
   me=l+y+k+j+a;
   n=b+g+w+h+d;
   c=e+f+i+o+p;
   ac=q+r+s+t+u;
   ad=v+x+z+aa+ab;
   set(handles.tot1,'String',n)
   set(handles.tot2,'String',me)
   set(handles.tot3,'String',c)
   set(handles.tot4,'String',ac)
   set(handles.tot5,'String',ad)
    m=msgbox('Phase 5 Done!');
    pause(2)
    close(m)
    gui=[me n c ac ad];
   uog=max(gui);
   nine=[b l e q v g y f r x w k i s z h j o t aa d a p u ab n me c ac ad]
   save Transmission9.mat nine
   set(handles.edith,'String',uog)
    set(handles.edit7,'visible','off')
    set(handles.edit3,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
elseif strcmp(b,'j')
    set(handles.edit5,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    set(handles.edit11,'visible','on')
    mv=randi([10 50],1);
    set(handles.text31,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit12,'BackgroundColor','green')
    set(handles.edit12,'visible','on')
    mv=randi([10 50],1);
    set(handles.text41,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    pause(1)
    set(handles.edit4,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit5,'visible','off')
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit6,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    set(handles.edit11,'visible','on')
    mv=randi([10 50],1);
    set(handles.text32,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit12,'BackgroundColor','green')
    set(handles.edit12,'visible','on')
    mv=randi([10 50],1);
    set(handles.text42,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    pause(1)
    set(handles.edit4,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit4,'BackgroundColor','red')
   set(handles.edit5,'BackgroundColor','red')
   set(handles.edit6,'BackgroundColor','red')
   set(handles.edit11,'BackgroundColor','green')
   set(handles.edit12,'BackgroundColor','green')
   set(handles.edit6,'visible','off')
   ml=str2double(get(handles.text31,'String'));
   l=str2double(get(handles.text32,'String'));
   me=str2double(get(handles.text41,'String'));
   lm=str2double(get(handles.text42,'String'));
   y=ml+l;
   u=me+lm;
   set(handles.tot3,'String',y)
   set(handles.tot4,'String',u)
    k=msgbox('Phase 2 Done!');
    pause(2)
    close(k)
   gui=[y u];
   uog=max(gui);
   ten=[ml me l lm y u]
   save Transmission10.mat ten
   set(handles.edith,'String',uog)
   set(handles.edit4,'visible','off')
   set(handles.edit11,'visible','off')
   set(handles.edit12,'visible','off')
   set(handles.edit5,'visible','off')
elseif strcmp(b,'k')
    set(handles.edit8,'visible','on')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text61,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','Black')
    set(handles.edit15,'visible','on')
    set(handles.edit15,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text71,'String',mv)
    pause(2)
    set(handles.edit15,'BackgroundColor','black')
    pause(1)
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit8,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit15,'visible','off')
    pause(1)
    set(handles.edit14,'visible','on')
    set(handles.edit9,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text62,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','Black')
    set(handles.edit15,'visible','on')
    set(handles.edit15,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text72,'String',mv)
    pause(2)
    set(handles.edit15,'BackgroundColor','black')
    pause(1)
   ml=str2double(get(handles.text61,'String'));
   l=str2double(get(handles.text62,'String'));
   me=str2double(get(handles.text71,'String'));
   lm=str2double(get(handles.text72,'String'));
   y=ml+l;
   u=me+lm;
   set(handles.tot6,'String',y)
   set(handles.tot7,'String',u)
    m=msgbox('Phase 2 Done!');
    pause(2)
    close(m)
    gui=[y u];
   uog=max(gui);
   eleven=[ml me l lm y u]
   save Transmission11.mat eleven
   set(handles.edith,'String',uog)
    set(handles.edit14,'visible','off')
    set(handles.edit8,'visible','off')
    set(handles.edit9,'visible','off')
    set(handles.edit15,'visible','off')
elseif strcmp(b,'l')
    set(handles.edit7,'visible','on')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text51,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text61,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    set(handles.edit15,'BackgroundColor','green')
    set(handles.edit15,'visible','on')
    mv=randi([10 50],1);
    set(handles.text71,'String',mv)
    pause(2)
    set(handles.edit15,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit7,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit5,'visible','off')
    set(handles.edit15,'visible','off')
    pause(1)
    set(handles.edit13,'visible','on')
    set(handles.edit8,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text52,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text62,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    set(handles.edit15,'BackgroundColor','green')
    set(handles.edit15,'visible','on')
    mv=randi([10 50],1);
    set(handles.text72,'String',mv)
    pause(2)
    set(handles.edit15,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 2 Done!');
    pause(2)
    close(m)
    set(handles.edit13,'visible','off')
    set(handles.edit2,'visible','off')
    set(handles.edit8,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit5,'visible','off')
    set(handles.edit15,'visible','off')
    pause(1)
    set(handles.edit13,'visible','on')
    set(handles.edit9,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text53,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text63,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    set(handles.edit15,'visible','on')
    set(handles.edit15,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text73,'String',mv)
    pause(2)
    set(handles.edit15,'BackgroundColor','Black')
    pause(1)
   me=str2double(get(handles.text51,'String'));
   l=str2double(get(handles.text52,'String'));
   n=str2double(get(handles.text53,'String'));
   o=str2double(get(handles.text61,'String'));
   p=str2double(get(handles.text62,'String'));
   q=str2double(get(handles.text63,'String'));
   r=str2double(get(handles.text71,'String'));
   s=str2double(get(handles.text72,'String'));
   t=str2double(get(handles.text73,'String'));
   y=me+l+n;
   u=o+p+q;
   z=r+s+t;
   set(handles.tot5,'String',y)
   set(handles.tot6,'String',u)
   set(handles.tot7,'String',z)
    m=msgbox('Phase 3 Done!');
    pause(2)
    close(m)
    gui=[y u z];
   uog=max(gui);
%  tjk=get(handles.text51,'String')
   twelve=[me o r l p s n q t y u z]
   save Transmission12.mat twelve 
   set(handles.edith,'String',uog)
    set(handles.edit13,'visible','off')
    set(handles.edit2,'visible','off')
    set(handles.edit4,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit9,'visible','off')
    set(handles.edit15,'visible','off')
elseif strcmp(b,'m')
    set(handles.edit6,'visible','on')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text41,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','Black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text51,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit14,'BackgroundColor','green')
    set(handles.edit14,'visible','on')
    mv=randi([10 50],1);
    set(handles.text61,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit6,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit5,'visible','off')
    set(handles.edit14,'visible','off')
    pause(1)
    set(handles.edit12,'visible','on')
    set(handles.edit7,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text42,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','Black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text52,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit14,'BackgroundColor','green')
    set(handles.edit14,'visible','on')
    mv=randi([10 50],1);
    set(handles.text62,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 2 Done!');
    pause(2)
    close(m)
    set(handles.edit12,'visible','off')
    set(handles.edit2,'visible','off')
    set(handles.edit7,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit5,'visible','off')
    set(handles.edit14,'visible','off')
    pause(1)
    set(handles.edit12,'visible','on')
    set(handles.edit8,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text43,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','Black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text53,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text63,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','Black')
    me=str2double(get(handles.text41,'String'));
   l=str2double(get(handles.text42,'String'));
   n=str2double(get(handles.text43,'String'));
   o=str2double(get(handles.text51,'String'));
   p=str2double(get(handles.text52,'String'));
   q=str2double(get(handles.text53,'String'));
   r=str2double(get(handles.text61,'String'));
   s=str2double(get(handles.text62,'String'));
   t=str2double(get(handles.text63,'String'));
   y=me+l+n;
   u=o+p+q;
   z=r+s+t;
   set(handles.tot4,'String',y)
   set(handles.tot5,'String',u)
   set(handles.tot6,'String',z)
    pause(1)
    m=msgbox('Phase 3 Done!');
    pause(2)
    close(m)
    gui=[y u z];
    thirteen=[me o r l p s n q t y u z]
    save Transmission13.mat thirteen
   uog=max(gui);
   set(handles.edith,'String',uog)
    set(handles.edit12,'visible','off')
    set(handles.edit2,'visible','off')
    set(handles.edit4,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit8,'visible','off')
    set(handles.edit14,'visible','off')
elseif strcmp(b,'n')
    set(handles.edit5,'visible','on')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text31,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
     mv=randi([10 50],1);
    set(handles.text41,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'BackgroundColor','green')
    set(handles.edit13,'visible','on')
     mv=randi([10 50],1);
    set(handles.text51,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit5,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit5,'visible','off')
    set(handles.edit13,'visible','off')
    pause(1)
    set(handles.edit11,'visible','on')
    set(handles.edit6,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
     mv=randi([10 50],1);
    set(handles.text32,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
     mv=randi([10 50],1);
    set(handles.text42,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'BackgroundColor','green')
    set(handles.edit13,'visible','on')
     mv=randi([10 50],1);
    set(handles.text52,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 2 Done!');
    pause(2)
    close(m)
    set(handles.edit11,'visible','off')
    set(handles.edit2,'visible','off')
    set(handles.edit6,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit4,'visible','off')
    set(handles.edit13,'visible','off')
    pause(1)
    set(handles.edit11,'visible','on')
    set(handles.edit7,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
     mv=randi([10 50],1);
    set(handles.text33,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
     mv=randi([10 50],1);
    set(handles.text43,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
     mv=randi([10 50],1);
    set(handles.text53,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
   me=str2double(get(handles.text31,'String'));
   l=str2double(get(handles.text32,'String'));
   n=str2double(get(handles.text33,'String'));
   o=str2double(get(handles.text41,'String'));
   p=str2double(get(handles.text42,'String'));
   q=str2double(get(handles.text43,'String'));
   r=str2double(get(handles.text51,'String'));
   s=str2double(get(handles.text52,'String'));
   t=str2double(get(handles.text53,'String'));
   y=me+l+n;
   u=o+p+q;
   z=r+s+t;
   set(handles.tot3,'String',y)
   set(handles.tot4,'String',u)
   set(handles.tot5,'String',z)
    pause(1)
    m=msgbox('Phase 3 Done!');
    pause(2)
    close(m)
   gui=[y u z];
   uog=max(gui);
   fourteen=[me o r l p s n q t y u z]
   save Transmission14.mat fourteen
   set(handles.edith,'String',uog)
    set(handles.edit11,'visible','off')
    set(handles.edit2,'visible','off')
    set(handles.edit4,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit7,'visible','off')
    set(handles.edit13,'visible','off')
elseif strcmp(b,'o')
    set(handles.edit2,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit4,'visible','on')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text21,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text31,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text41,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text51,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit4,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit5,'visible','on')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text22,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text32,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text42,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text52,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 2 Done!');
    pause(2)
    close(m)
    set(handles.edit5,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit6,'visible','on')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text23,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text33,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text43,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text53,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 3 Done!');
    pause(2)
    close(m)
    set(handles.edit6,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit7,'visible','on')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text24,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text34,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text44,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text54,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    a=str2double(get(handles.text21,'String'));
    b=str2double(get(handles.text22,'String'));
    c=str2double(get(handles.text23,'String'));
    d=str2double(get(handles.text24,'String'));
    me=str2double(get(handles.text31,'String'));
   l=str2double(get(handles.text32,'String'));
   n=str2double(get(handles.text33,'String'));
   cv=str2double(get(handles.text34,'String'));
   o=str2double(get(handles.text41,'String'));
   p=str2double(get(handles.text42,'String'));
   q=str2double(get(handles.text43,'String'));
   pq=str2double(get(handles.text44,'String'));
   r=str2double(get(handles.text51,'String'));
   s=str2double(get(handles.text52,'String'));
   t=str2double(get(handles.text53,'String'));
   ut=str2double(get(handles.text54,'String'));
   zx=a+b+c+d;
   y=me+l+n+cv;
   u=o+p+q+pq;
   z=r+s+t+ut;
   set(handles.tot2,'String',zx)
   set(handles.tot3,'String',y)
   set(handles.tot4,'String',u)
   set(handles.tot5,'String',z)
    pause(1)
    m=msgbox('Phase 4 Done!');
    pause(2)
    close(m)
   gui=[zx y u z];
   uog=max(gui);
   fifteen=[a me o r b l p s c n q t d cv pq ut zx y u z]
   save Transmission15.mat fifteen
   set(handles.edith,'String',uog)
    set(handles.edit7,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
elseif strcmp(b,'p')
    set(handles.edit2,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit4,'visible','on')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text21,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text31,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text41,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text51,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text61,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    pause(1)
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit14,'visible','off')
    set(handles.edit4,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit5,'visible','on')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text22,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text32,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text42,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text52,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text62,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    pause(1)
    m=msgbox('Phase 2 Done!');
    pause(2)
    close(m)
    set(handles.edit5,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit6,'visible','on')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text23,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text33,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text43,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text53,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text63,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    pause(1)
    m=msgbox('Phase 3 Done!');
    pause(2)
    close(m)
    set(handles.edit6,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit7,'visible','on')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text24,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text34,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text44,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text54,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text64,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    pause(1)
    m=msgbox('Phase 4 Done!');
    pause(2)
    close(m)
    set(handles.edit7,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit6,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit8,'visible','on')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text25,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text35,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text45,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text55,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text65,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    pause(1)
     b=str2double(get(handles.text21,'String'));
   g=str2double(get(handles.text22,'String'));
   w=str2double(get(handles.text23,'String'));
   h=str2double(get(handles.text24,'String'));
   d=str2double(get(handles.text25,'String'));
   l=str2double(get(handles.text31,'String'));
   y=str2double(get(handles.text32,'String'));
   k=str2double(get(handles.text33,'String'));
   j=str2double(get(handles.text34,'String'));
   a=str2double(get(handles.text35,'String'));
   e=str2double(get(handles.text41,'String'));
   f=str2double(get(handles.text42,'String'));
   i=str2double(get(handles.text43,'String'));
   o=str2double(get(handles.text44,'String'));
   p=str2double(get(handles.text45,'String'));
   q=str2double(get(handles.text51,'String'));
   r=str2double(get(handles.text52,'String'));
   s=str2double(get(handles.text53,'String'));
   t=str2double(get(handles.text54,'String'));
   u=str2double(get(handles.text55,'String'));
   v=str2double(get(handles.text61,'String'));
   x=str2double(get(handles.text62,'String'));
   z=str2double(get(handles.text63,'String'));
   aa=str2double(get(handles.text64,'String'));
   ab=str2double(get(handles.text65,'String'));
   me=l+y+k+j+a;
   n=b+g+w+h+d;
   c=e+f+i+o+p;
   ac=q+r+s+t+u;
   ad=v+x+z+aa+ab;
   set(handles.tot2,'String',n)
   set(handles.tot3,'String',me)
   set(handles.tot4,'String',c)
   set(handles.tot5,'String',ac)
   set(handles.tot6,'String',ad)
   m=msgbox('Phase 5 Done!');
   pause(2)
   close(m)
   gui=[m n c ac ad];
   uog=max(gui);
   sixteen=[b l e q v g y f r x w k i s z h j o t aa d a p u ab n me c ac ad]
   save Transmission16.mat sixteen
   set(handles.edith,'String',uog)
    set(handles.edit7,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit8,'visible','off')
    set(handles.edit14,'visible','off')
elseif strcmp(b,'q')
    set(handles.edit2,'visible','on')
    set(handles.edit3,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text11,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text21,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text31,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text41,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    pause(1)
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit2,'visible','off')
    set(handles.edit3,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit4,'visible','on')
    set(handles.edit3,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text12,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text22,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text32,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text42,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    pause(1)
    m=msgbox('Phase 2 Done!');
    pause(2)
    close(m)
    set(handles.edit4,'visible','off')
    set(handles.edit3,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit5,'visible','on')
    set(handles.edit3,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text13,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text23,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text33,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text43,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    pause(1)
    m=msgbox('Phase 3 Done!');
    pause(2)
    close(m)
    set(handles.edit5,'visible','off')
    set(handles.edit3,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit6,'visible','on')
    set(handles.edit3,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text14,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text24,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text34,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text44,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    pause(1)
    b=str2double(get(handles.text11,'String'));
   g=str2double(get(handles.text12,'String'));
   w=str2double(get(handles.text13,'String'));
   h=str2double(get(handles.text14,'String'));
   l=str2double(get(handles.text21,'String'));
   y=str2double(get(handles.text22,'String'));
   k=str2double(get(handles.text23,'String'));
   j=str2double(get(handles.text24,'String'));
   e=str2double(get(handles.text31,'String'));
   f=str2double(get(handles.text32,'String'));
   i=str2double(get(handles.text33,'String'));
   o=str2double(get(handles.text34,'String'));
   q=str2double(get(handles.text41,'String'));
   r=str2double(get(handles.text42,'String'));
   s=str2double(get(handles.text43,'String'));
   t=str2double(get(handles.text44,'String'));
   me=l+y+k+j;
   c=e+f+i+o;
   ac=q+r+s+t;
   ad=b+g+w+h;
   set(handles.tot1,'String',me)
   set(handles.tot2,'String',c)
   set(handles.tot3,'String',ac)
   set(handles.tot4,'String',ad)
    m=msgbox('Phase 4 Done!');
    pause(2)
    close(m)
    gui=[me c ac ad];
   uog=max(gui);
   seventeen=[b l e q g y f r w k i s h j o t me c ac ad]
   save Transmission17.mat seventeen
   set(handles.edith,'String',uog)
    set(handles.edit6,'visible','off');
    set(handles.edit11,'visible','off');
    set(handles.edit10,'visible','off');
    set(handles.edit3,'visible','off');
    set(handles.edit11,'visible','off');
    set(handles.edit12,'visible','off');
    set(handles.edit12,'visible','off');
elseif strcmp(b,'r')
    set(handles.edit7,'visible','on')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text51,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text61,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    pause(1)
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit7,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit5,'visible','off')
    pause(1)
    set(handles.edit13,'visible','on')
    set(handles.edit8,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text52,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text62,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    pause(1)
    b=str2double(get(handles.text51,'String'));
    c=str2double(get(handles.text52,'String'));
    d=str2double(get(handles.text61,'String'));
    e=str2double(get(handles.text62,'String'));
    n=b+c;
    w=d+e;
    set(handles.tot5,'String',n)
    set(handles.tot6,'String',w)
    m=msgbox('Phase 2 Done!');
    pause(2)
    close(m)
    gui=[n w];
    eighteen=[b d c e n w]
    save Transmission18.mat eighteen
   uog=max(gui);
   set(handles.edith,'String',uog)
    set(handles.edit13,'visible','off')
    set(handles.edit2,'visible','off')
    set(handles.edit8,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit5,'visible','off')
elseif strcmp(b,'s')
    set(handles.edit4,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    set(handles.edit10,'visible','on')
    mv=randi([10 50],1);
    set(handles.text21,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','Black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text61,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    pause(1)
    t=msgbox('Phase 1 Done!');
    pause(2)
    close(t)
    set(handles.edit4,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit8,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit8,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
    set(handles.edit10,'visible','on')
    mv=randi([10 50],1);
    set(handles.text22,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','Black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text62,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    pause(1)
    b=str2double(get(handles.text21,'String'));
    c=str2double(get(handles.text22,'String'));
    d=str2double(get(handles.text61,'String'));
    e=str2double(get(handles.text62,'String'));
    n=b+c;
    w=d+e;
    set(handles.tot2,'String',n)
    set(handles.tot6,'String',w)
    t=msgbox('Phase 2 Done!');
    pause(2)
    close(t)
    gui=[n w];
   uog=max(gui);
   nineteen=[b d c e n w]
   save Transmission19.mat nineteen
   set(handles.edith,'String',uog)
    set(handles.edit4,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit8,'visible','off')
    set(handles.edit14,'visible','off')
elseif strcmp(b,'t')
    set(handles.edit2,'visible','on')
    set(handles.edit3,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text11,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text31,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    pause(1)
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit2,'visible','off')
    set(handles.edit3,'visible','off')
    set(handles.edit11,'visible','off')
    pause(1)
    set(handles.edit3,'visible','on')
    set(handles.edit5,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text12,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text32,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    pause(1)
    b=str2double(get(handles.text11,'String'));
    c=str2double(get(handles.text12,'String'));
    d=str2double(get(handles.text31,'String'));
    e=str2double(get(handles.text32,'String'));
    n=b+c;
    w=d+e;
    set(handles.tot1,'String',n)
    set(handles.tot3,'String',w)
    m=msgbox('Phase 2 Done!');
    pause(2)
    close(m)
   gui=[n w];
   uog=max(gui);
   twenty=[b d c e n w]
    save Transmission20.mat twenty
   set(handles.edith,'String',uog)
    set(handles.edit3,'visible','off')
    set(handles.edit2,'visible','off')
    set(handles.edit5,'visible','off')
    set(handles.edit11,'visible','off')
elseif strcmp(b,'u')
    set(handles.edit4,'visible','on')
   set(handles.edit10,'visible','on')
   mv=randi([10 50],1);
   set(handles.text21,'String',mv)
   pause(2)
   set(handles.edit10,'BackgroundColor','Black')
   set(handles.edit12,'visible','on')
   mv=randi([10 50],1);
    set(handles.text41,'String',mv)
   pause(2)
   set(handles.edit12,'BackgroundColor','Black')
   pause(1)
   set(handles.edit10,'visible','off')
   set(handles.edit4,'visible','off')
   set(handles.edit12,'visible','off')
   set(handles.edit6,'visible','off')
   u=msgbox('Phase 1 Done!');
   pause(2)
   close(u)
   pause(1)
   set(handles.edit6,'visible','on')
   set(handles.edit10,'BackgroundColor','green')
   set(handles.edit12,'BackgroundColor','green')
   set(handles.edit10,'visible','on')
   mv=randi([10 50],1);
    set(handles.text22,'String',mv)
   pause(2)
   set(handles.edit10,'BackgroundColor','Black')
   set(handles.edit12,'visible','on')
   mv=randi([10 50],1);
    set(handles.text42,'String',mv)
   pause(2)
   set(handles.edit12,'BackgroundColor','Black')
   pause(1)
    b=str2double(get(handles.text21,'String'));
    c=str2double(get(handles.text22,'String'));
    d=str2double(get(handles.text41,'String'));
    e=str2double(get(handles.text42,'String'));
    n=b+c;
    w=d+e;
    set(handles.tot2,'String',n)
    set(handles.tot4,'String',w)
   k=msgbox('Phase 2 Done!');
   pause(2)
   close(k)
   gui=[n w];
   uog=max(gui);
   twentyone=[b d c e n w]
    save Transmission21.mat twentyone
   set(handles.edith,'String',uog)
   set(handles.edit4,'BackgroundColor','red')
   set(handles.edit6,'BackgroundColor','red')
   set(handles.edit10,'BackgroundColor','green')
   set(handles.edit12,'BackgroundColor','green')
   set(handles.edit10,'visible','off')
   set(handles.edit4,'visible','off')
   set(handles.edit6,'visible','off')
   set(handles.edit12,'visible','off')
elseif strcmp(b,'v')
    set(handles.edit5,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    set(handles.edit11,'visible','on')
    mv=randi([10 50],1);
    set(handles.text31,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit13,'BackgroundColor','green')
    set(handles.edit13,'visible','on')
    mv=randi([10 50],1);
    set(handles.text51,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    pause(1)
    set(handles.edit4,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit5,'visible','off')
    k=msgbox('Phase 1 Done!');
    pause(2)
    close(k)
    set(handles.edit7,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    set(handles.edit11,'visible','on')
    mv=randi([10 50],1);
    set(handles.text32,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit13,'BackgroundColor','green')
    set(handles.edit13,'visible','on')
    mv=randi([10 50],1);
    set(handles.text52,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
   pause(1)
    b=str2double(get(handles.text31,'String'));
    c=str2double(get(handles.text32,'String'));
    d=str2double(get(handles.text51,'String'));
    e=str2double(get(handles.text52,'String'));
    n=b+c;
    w=d+e;
    set(handles.tot3,'String',n)
    set(handles.tot5,'String',w)
    k=msgbox('Phase 2 Done!');
    pause(2)
    close(k)
   gui=[n w];
   uog=max(gui);
   twentytwo=[b d c e n w]
    save Transmission22.mat twentytwo
   set(handles.edith,'String',uog)
   pause(1)
    set(handles.edit4,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit4,'BackgroundColor','red')
   set(handles.edit5,'BackgroundColor','red')
   set(handles.edit7,'BackgroundColor','red')
   set(handles.edit11,'BackgroundColor','green')
   set(handles.edit13,'BackgroundColor','green')
   set(handles.edit7,'visible','off')
elseif strcmp(b,'w')
    set(handles.edit6,'visible','on')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text41,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','Black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text61,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    pause(1)
    k=msgbox('Phase 1 Done!');
    pause(2)
    close(k)
    set(handles.edit8,'visible','on')
    set(handles.edit6,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit14,'visible','off')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text42,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','Black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text62,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','black')
    pause(1)
    b=str2double(get(handles.text41,'String'));
    c=str2double(get(handles.text42,'String'));
    d=str2double(get(handles.text61,'String'));
    e=str2double(get(handles.text62,'String'));
    n=b+c;
    w=d+e;
    set(handles.tot4,'String',n)
    set(handles.tot6,'String',w)
    m=msgbox('Phase 2 Done!');
    pause(2)
    close(m)
    gui=[n w];
   uog=max(gui);
   twentythree=[b d c e n w]
    save Transmission23.mat twentythree
   set(handles.edith,'String',uog)
    set(handles.edit12,'visible','off')
    set(handles.edit6,'visible','off')
    set(handles.edit8,'visible','off')
    set(handles.edit14,'visible','off')
elseif strcmp(b,'x')
    set(handles.edit7,'visible','on')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text51,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    set(handles.edit15,'visible','on')
    set(handles.edit15,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text71,'String',mv)
    pause(2)
    set(handles.edit15,'BackgroundColor','black')
    pause(1)
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit7,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit15,'visible','off')
    pause(1)
    set(handles.edit13,'visible','on')
    set(handles.edit9,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text52,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    set(handles.edit15,'visible','on')
    set(handles.edit15,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text72,'String',mv)
    pause(2)
    set(handles.edit15,'BackgroundColor','black')
    pause(1)
    b=str2double(get(handles.text51,'String'));
    c=str2double(get(handles.text52,'String'));
    d=str2double(get(handles.text71,'String'));
    e=str2double(get(handles.text72,'String'));
    n=b+c;
    w=d+e;
    set(handles.tot5,'String',n)
    set(handles.tot7,'String',w)
    m=msgbox('Phase 2 Done!');
    pause(2)
    close(m)
   gui=[n w];
   uog=max(gui);
   twentyfour=[b d c e n w]
    save Transmission24.mat twentyfour
   set(handles.edith,'String',uog)
    set(handles.edit13,'visible','off')
    set(handles.edit7,'visible','off')
    set(handles.edit9,'visible','off')
    set(handles.edit15,'visible','off')
elseif strcmp(b,'y')
    set(handles.edit2,'visible','on')
    set(handles.edit3,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text11,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text31,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit13,'BackgroundColor','green')
    set(handles.edit13,'visible','on')
    mv=randi([10 50],1);
    set(handles.text51,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit2,'visible','off')
    set(handles.edit3,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit5,'visible','off')
    set(handles.edit13,'visible','off')
    pause(1)
    set(handles.edit3,'visible','on')
    set(handles.edit5,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text12,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text32,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit13,'BackgroundColor','green')
    set(handles.edit13,'visible','on')
    mv=randi([10 50],1);
    set(handles.text52,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 2 Done!');
    pause(2)
    close(m)
    set(handles.edit3,'visible','off')
    set(handles.edit2,'visible','off')
    set(handles.edit7,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit5,'visible','off')
    set(handles.edit13,'visible','off')
    pause(1)
    set(handles.edit3,'visible','on')
    set(handles.edit7,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text13,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text33,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text53,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','Black')
    pause(1)
   b=str2double(get(handles.text11,'String'));
   g=str2double(get(handles.text12,'String'));
   w=str2double(get(handles.text13,'String'));
   h=str2double(get(handles.text31,'String'));
   d=str2double(get(handles.text32,'String'));
   l=str2double(get(handles.text33,'String'));
   y=str2double(get(handles.text51,'String'));
   k=str2double(get(handles.text52,'String'));
   j=str2double(get(handles.text53,'String'));
   me=h+d+l;
   n=b+g+w;
   c=y+k+j;
   set(handles.tot1,'String',n)
   set(handles.tot3,'String',me)
   set(handles.tot5,'String',c)
    m=msgbox('Phase 3 Done!');
    pause(2)
    close(m)
   gui=[me n c];
   uog=max(gui);
   twentyfive=[b h y g d k w l j n me c]
    save Transmission25.mat twentyfive
   set(handles.edith,'String',uog)
    set(handles.edit3,'visible','off')
    set(handles.edit2,'visible','off')
    set(handles.edit5,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit7,'visible','off')
    set(handles.edit13,'visible','off')
elseif strcmp(b,'z')
    set(handles.edit4,'visible','on')
    set(handles.edit10,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
     mv=randi([10 50],1);
    set(handles.text21,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','Black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
     mv=randi([10 50],1);
    set(handles.text41,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit14,'BackgroundColor','green')
    set(handles.edit14,'visible','on')
     mv=randi([10 50],1);
    set(handles.text61,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit4,'visible','off')
    set(handles.edit10,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit6,'visible','off')
    set(handles.edit14,'visible','off')
    pause(1)
    set(handles.edit10,'visible','on')
    set(handles.edit6,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
     mv=randi([10 50],1);
    set(handles.text22,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','Black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
     mv=randi([10 50],1);
    set(handles.text42,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit14,'BackgroundColor','green')
     mv=randi([10 50],1);
    set(handles.text62,'String',mv)
    set(handles.edit14,'visible','on')
    pause(2)
    set(handles.edit14,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 2 Done!');
    pause(2)
    close(m)
    set(handles.edit10,'visible','off')
    set(handles.edit4,'visible','off')
    set(handles.edit8,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit6,'visible','off')
    set(handles.edit14,'visible','off')
    pause(1)
    set(handles.edit10,'visible','on')
    set(handles.edit8,'visible','on')
    set(handles.edit10,'BackgroundColor','green')
     mv=randi([10 50],1);
    set(handles.text23,'String',mv)
    pause(2)
    set(handles.edit10,'BackgroundColor','Black')
    set(handles.edit12,'visible','on')
    set(handles.edit12,'BackgroundColor','green')
     mv=randi([10 50],1);
    set(handles.text43,'String',mv)
    pause(2)
    set(handles.edit12,'BackgroundColor','black')
    set(handles.edit14,'visible','on')
    set(handles.edit14,'BackgroundColor','green')
     mv=randi([10 50],1);
    set(handles.text63,'String',mv)
    pause(2)
    set(handles.edit14,'BackgroundColor','Black')
    pause(1)
   b=str2double(get(handles.text21,'String'));
   g=str2double(get(handles.text22,'String'));
   w=str2double(get(handles.text23,'String'));
   h=str2double(get(handles.text41,'String'));
   d=str2double(get(handles.text42,'String'));
   l=str2double(get(handles.text43,'String'));
   y=str2double(get(handles.text61,'String'));
   k=str2double(get(handles.text62,'String'));
   j=str2double(get(handles.text63,'String'));
   me=h+d+l;
   n=b+g+w;
   c=y+k+j;
   set(handles.tot2,'String',n)
   set(handles.tot4,'String',me)
   set(handles.tot6,'String',c)
    m=msgbox('Phase 3 Done!');
    pause(2)
    close(m)
   gui=[me n c];
   uog=max(gui);
   twentysix=[b h y g d k w l j n me c]
    save Transmission26.mat twentysix
   set(handles.edith,'String',uog)
    set(handles.edit10,'visible','off')
    set(handles.edit4,'visible','off')
    set(handles.edit6,'visible','off')
    set(handles.edit12,'visible','off')
    set(handles.edit8,'visible','off')
    set(handles.edit14,'visible','off')
elseif strcmp(b,'za')
   set(handles.edit5,'visible','on')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text31,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text51,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit15,'BackgroundColor','green')
    set(handles.edit15,'visible','on')
    mv=randi([10 50],1);
    set(handles.text71,'String',mv)
    pause(2)
    set(handles.edit15,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit5,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit7,'visible','off')
    set(handles.edit15,'visible','off')
    pause(1)
    set(handles.edit11,'visible','on')
    set(handles.edit7,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text32,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text52,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit15,'BackgroundColor','green')
    set(handles.edit15,'visible','on')
    mv=randi([10 50],1);
    set(handles.text72,'String',mv)
    pause(2)
    set(handles.edit15,'BackgroundColor','Black')
    pause(1)
    m=msgbox('Phase 2 Done!');
    pause(2)
    close(m)
    set(handles.edit11,'visible','off')
    set(handles.edit5,'visible','off')
    set(handles.edit9,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit7,'visible','off')
    set(handles.edit15,'visible','off')
    pause(1)
    set(handles.edit11,'visible','on')
    set(handles.edit9,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text33,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','Black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text53,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit15,'visible','on')
    set(handles.edit15,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text73,'String',mv)
    pause(2)
    set(handles.edit15,'BackgroundColor','Black')
    pause(1)
   b=str2double(get(handles.text31,'String'));
   g=str2double(get(handles.text32,'String'));
   w=str2double(get(handles.text33,'String'));
   h=str2double(get(handles.text51,'String'));
   d=str2double(get(handles.text52,'String'));
   l=str2double(get(handles.text53,'String'));
   y=str2double(get(handles.text71,'String'));
   k=str2double(get(handles.text72,'String'));
   j=str2double(get(handles.text73,'String'));
   me=h+d+l;
   n=b+g+w;
   c=y+k+j;
   set(handles.tot3,'String',n)
   set(handles.tot5,'String',me)
   set(handles.tot7,'String',c)
    m=msgbox('Phase 3 Done!');
    pause(2)
    close(m)
   gui=[me n c];
   uog=max(gui);
   twentyseven=[b h y g d k w l j n me c]
    save Transmission27.mat twentyseven
   set(handles.edith,'String',uog)
    set(handles.edit11,'visible','off')
    set(handles.edit5,'visible','off')
    set(handles.edit7,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit9,'visible','off')
    set(handles.edit15,'visible','off') 
elseif strcmp(b,'zb')
    set(handles.edit2,'visible','on')
    set(handles.edit3,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text11,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text31,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text51,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit15,'visible','on')
    set(handles.edit15,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text71,'String',mv)
    pause(2)
    set(handles.edit15,'BackgroundColor','black')
    pause(1)
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit2,'visible','off')
    set(handles.edit3,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit15,'visible','off')
    set(handles.edit5,'visible','on')
    set(handles.edit3,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text12,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text32,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text52,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit15,'visible','on')
    set(handles.edit15,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text72,'String',mv)
    pause(2)
    set(handles.edit15,'BackgroundColor','black')
    pause(1)
    m=msgbox('Phase 2 Done!');
    pause(2)
    close(m)
    set(handles.edit5,'visible','off')
    set(handles.edit3,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit15,'visible','off')
    set(handles.edit7,'visible','on')
    set(handles.edit3,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text13,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text33,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text53,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit15,'visible','on')
    set(handles.edit15,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text73,'String',mv)
    pause(2)
    set(handles.edit15,'BackgroundColor','black')
    pause(1)
    m=msgbox('Phase 3 Done!');
    pause(2)
    close(m)
    set(handles.edit7,'visible','off')
    set(handles.edit3,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit15,'visible','off')
    set(handles.edit9,'visible','on')
    set(handles.edit3,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text14,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit11,'visible','on')
    set(handles.edit11,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text34,'String',mv)
    pause(2)
    set(handles.edit11,'BackgroundColor','black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text54,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    set(handles.edit15,'visible','on')
    set(handles.edit15,'BackgroundColor','green')
    mv=randi([10 50],1);
    set(handles.text74,'String',mv)
    pause(2)
    set(handles.edit15,'BackgroundColor','black')
    pause(1)
   b=str2double(get(handles.text11,'String'));
   g=str2double(get(handles.text12,'String'));
   w=str2double(get(handles.text13,'String'));
   h=str2double(get(handles.text14,'String'));
   l=str2double(get(handles.text31,'String'));
   y=str2double(get(handles.text32,'String'));
   k=str2double(get(handles.text33,'String'));
   j=str2double(get(handles.text34,'String'));
   e=str2double(get(handles.text51,'String'));
   f=str2double(get(handles.text52,'String'));
   i=str2double(get(handles.text53,'String'));
   o=str2double(get(handles.text54,'String'));
   q=str2double(get(handles.text71,'String'));
   r=str2double(get(handles.text72,'String'));
   s=str2double(get(handles.text73,'String'));
   t=str2double(get(handles.text74,'String'));
   me=l+y+k+j;
   c=e+f+i+o;
   ac=q+r+s+t;
   ad=b+g+w+h;
   set(handles.tot1,'String',me)
   set(handles.tot3,'String',c)
   set(handles.tot5,'String',ac)
   set(handles.tot7,'String',ad)
    m=msgbox('Phase 4 Done!');
    pause(2)
    close(m)
   gui=[me c ac ad];
   twentyeight=[b l e q g y f r w k i s h j o t me c ac ad]
    save Transmission28.mat twentyeight
   uog=max(gui);
   set(handles.edith,'String',uog)
    set(handles.edit9,'visible','off')
    set(handles.edit3,'visible','off')
    set(handles.edit11,'visible','off')
    set(handles.edit13,'visible','off')
    set(handles.edit15,'visible','off')
elseif strcmp(b,'zc')
    set(handles.edit2,'visible','on')
    set(handles.edit3,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
     mv=randi([10 50],1);
    set(handles.text11,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
     mv=randi([10 50],1);
    set(handles.text51,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    pause(1)
    m=msgbox('Phase 1 Done!');
    pause(2)
    close(m)
    set(handles.edit2,'visible','off')
    set(handles.edit3,'visible','off')
    set(handles.edit13,'visible','off')
    pause(1)
    set(handles.edit3,'visible','on')
    set(handles.edit7,'visible','on')
    set(handles.edit3,'BackgroundColor','green')
     mv=randi([10 50],1);
    set(handles.text12,'String',mv)
    pause(2)
    set(handles.edit3,'BackgroundColor','Black')
    set(handles.edit13,'visible','on')
    set(handles.edit13,'BackgroundColor','green')
     mv=randi([10 50],1);
    set(handles.text52,'String',mv)
    pause(2)
    set(handles.edit13,'BackgroundColor','black')
    pause(1)
    a=str2double(get(handles.text11,'String'));
    b=str2double(get(handles.text12,'String'));
    c=str2double(get(handles.text51,'String'));
    d=str2double(get(handles.text52,'String'));
    k=a+b;
    h=c+d;
    set(handles.tot1,'String',k)
    set(handles.tot5,'String',h)
    l=msgbox('Phase 2 Done!');
    pause(2)
    close(l)
   gui=[k h];
   uog=max(gui);
   twentynine=[a c b d k h]
    save Transmission29.mat twentynine
   set(handles.edith,'String',uog)
    set(handles.edit3,'visible','off')
    set(handles.edit2,'visible','off')
    set(handles.edit7,'visible','off')
    set(handles.edit13,'visible','off')
end