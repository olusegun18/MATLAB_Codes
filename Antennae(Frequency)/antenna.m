%%
function varargout = antenna(varargin)
% ANTENNA MATLAB code for antenna.fig
%      ANTENNA, by itself, creates a new ANTENNA or raises the existing
%      singleton*.
%
%      H = ANTENNA returns the handle to a new ANTENNA or the handle to
%      the existing singleton*.
%
%      ANTENNA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ANTENNA.M with the given input arguments.
%
%      ANTENNA('Property','Value',...) creates a new ANTENNA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before antenna_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to antenna_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help antenna

% Last Modified by GUIDE v2.5 17-Mar-2016 23:01:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @antenna_OpeningFcn, ...
                   'gui_OutputFcn',  @antenna_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before antenna is made visible.
function antenna_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to antenna (see VARARGIN)

% Choose default command line output for antenna
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes antenna wait for user response (see UIRESUME)
% uiwait(handles.figure1);
bfg=imread('internet.jpg');
set(handles.one,'CData',bfg)
set(handles.two,'CData',bfg)
set(handles.three,'CData',bfg)
set(handles.four,'CData',bfg)
set(handles.five,'CData',bfg)
set(handles.six,'CData',bfg)
set(handles.seven,'CData',bfg)
set(handles.ones,'CData',bfg)
set(handles.twos,'CData',bfg)
set(handles.threes,'CData',bfg)
set(handles.fours,'CData',bfg)
set(handles.fives,'CData',bfg)
set(handles.sixs,'CData',bfg)
set(handles.sevens,'CData',bfg)



% --- Outputs from this function are returned to the command line.
function varargout = antenna_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in one.
function one_Callback(hObject, eventdata, handles)
% hObject    handle to one (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in five.
function five_Callback(hObject, eventdata, handles)
% hObject    handle to five (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in four.
function four_Callback(hObject, eventdata, handles)
% hObject    handle to four (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in three.
function three_Callback(hObject, eventdata, handles)
% hObject    handle to three (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in two.
function two_Callback(hObject, eventdata, handles)
% hObject    handle to two (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton33.
function pushbutton33_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton63.
function start_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in cens.
function cens_Callback(hObject, eventdata, handles)
% hObject    handle to cens (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ones.
function ones_Callback(hObject, eventdata, handles)
% hObject    handle to ones (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in fives.
function fives_Callback(hObject, eventdata, handles)
% hObject    handle to fives (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in fours.
function fours_Callback(hObject, eventdata, handles)
% hObject    handle to fours (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in threes.
function threes_Callback(hObject, eventdata, handles)
% hObject    handle to threes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in twos.
function twos_Callback(hObject, eventdata, handles)
% hObject    handle to twos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in onn.
function onn_Callback(hObject, eventdata, handles)
% hObject    handle to onn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ont.
function ont_Callback(hObject, eventdata, handles)
% hObject    handle to ont (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in onth.
function onth_Callback(hObject, eventdata, handles)
% hObject    handle to onth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in onf.
function onf_Callback(hObject, eventdata, handles)
% hObject    handle to onf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in onfi.
function onfi_Callback(hObject, eventdata, handles)
% hObject    handle to onfi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in fourfive.
function fourfive_Callback(hObject, eventdata, handles)
% hObject    handle to fourfive (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in onetwo.
function onetwo_Callback(hObject, eventdata, handles)
% hObject    handle to onetwo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in twothree.
function twothree_Callback(hObject, eventdata, handles)
% hObject    handle to twothree (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in threefour.
function threefour_Callback(hObject, eventdata, handles)
% hObject    handle to threefour (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton62.
function pushbutton62_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% rr=imread('for2.jpg');
% set(handles.threefour,'CData',rr)




% --- Executes on button press in onetwothree.
function onetwothree_Callback(hObject, eventdata, handles)
% hObject    handle to onetwothree (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in threefourfive.
function threefourfive_Callback(hObject, eventdata, handles)
% hObject    handle to threefourfive (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in twothreefour.
function twothreefour_Callback(hObject, eventdata, handles)
% hObject    handle to twothreefour (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton57.
function pushbutton57_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
g=randperm(2,1);
c={'a','b'}
b=c(1,g)
bj=imread('for4.jpg');
if strcmp(b,'a')
   set(handles.onetofour,'CData',bj)
   set(handles.onetofour,'visible','on')
elseif strcmp(b,'b') 
   set(handles.twotofive,'CData',bj)
   set(handles.twotofive,'visible','on')
end
pause(4)
set(handles.onetofour,'visible','off')
set(handles.twotofive,'visible','off')



% --- Executes on button press in onetofour.
function onetofour_Callback(hObject, eventdata, handles)
% hObject    handle to onetofour (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in twotofive.
function twotofive_Callback(hObject, eventdata, handles)
% hObject    handle to twotofive (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in onetofive.
function onetofive_Callback(hObject, eventdata, handles)
% hObject    handle to onetofive (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton61.
function pushbutton61_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mg=imread('for14.jpg');
set(handles.onetofive,'CData',mg)
set(handles.onetofive,'visible','on')


% --- Executes on button press in pushbutton63.
function st1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton62.
function st2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in str.
function st3_Callback(hObject, eventdata, handles)
% hObject    handle to str (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton57.
function st4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton61.
function st5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in st.
function st_Callback(hObject, eventdata, handles)
% hObject    handle to st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
g=randperm(4,1);
c={'a','b','c','d'}
b=c(1,g)
bj=imread('for2.jpg');
if strcmp(b,'a')
   set(handles.onetwo,'CData',bj)
   set(handles.onetwo,'visible','on')
elseif strcmp(b,'b') 
   set(handles.twothree,'CData',bj)
   set(handles.twothree,'visible','on')
elseif strcmp(b,'c')
   set(handles.threefour,'CData',bj)
   set(handles.threefour,'visible','on')
elseif strcmp(b,'d')
    set(handles.fourfive,'CData',bj)
    set(handles.fourfive,'visible','on')
end
pause(4)
set(handles.onetwo,'visible','off')
set(handles.twothree,'visible','off')
set(handles.threefour,'visible','off')
set(handles.fourfive,'visible','off')


% --- Executes on button press in str.
function str_Callback(hObject, eventdata, handles)
% hObject    handle to str (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% vv=imread('for3.jpg');
% set(handles.twothreefour,'CData',vv)
g=randperm(3,1);
c={'a','b','c'}
b=c(1,g)
bj=imread('for3.jpg');
if strcmp(b,'a')
   set(handles.onetwothree,'CData',bj)
   set(handles.onetwothree,'visible','on')
elseif strcmp(b,'b') 
   set(handles.twothreefour,'CData',bj)
   set(handles.twothreefour,'visible','on')
elseif strcmp(b,'c')
   set(handles.threefourfive,'CData',bj)
   set(handles.threefourfive,'visible','on')
end
pause(4)
set(handles.onetwothree,'visible','off')
set(handles.twothreefour,'visible','off')
set(handles.threefourfive,'visible','off')


% --- Executes on button press in pushbutton63.
function pushbutton63_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% set(handles.uitable1,'data',{''})
set(handles.pushbutton63,'enable','inactive')
mn=str2double(get(handles.edit,'String'));
if isnan(mn) | isempty(mn) | (mn==0)
    errordlg('Pls, Enter a valid Input','Error')
else
for k=1:mn
gig=randperm(29,1)
% gig=29
c={'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p'...
    'q','r','s','t','u','v','w','x','y','z','za','zb','zc'};
b=c(1,gig);
jb=imread('for2.jpg');
bh=imread('for3.jpg');
hb=imread('for4.jpg');
bb=imread('for5.jpg');
if strcmp(b,'a')
   set(handles.twothree,'CData',jb)
   set(handles.twothree,'visible','on')
elseif strcmp(b,'b') 
   set(handles.twothreefour,'CData',bh)
   set(handles.twothreefour,'visible','on')
elseif strcmp(b,'c')
   set(handles.threetoseven,'CData',bb)
   set(handles.threetoseven,'visible','on')
elseif strcmp(b,'d')
    set(handles.fourtoseven,'CData',hb)
    set(handles.fourtoseven,'visible','on')
elseif strcmp(b,'e')
    set(handles.threetosix,'CData',hb)
    set(handles.threetosix,'visible','on') 
elseif strcmp(b,'f')
    set(handles.onetwo,'CData',jb)
    set(handles.onetwo,'visible','on')
elseif strcmp(b,'g')
    set(handles.fourfive,'CData',jb)
    set(handles.fourfive,'visible','on')
elseif strcmp(b,'h')
    set(handles.onetwothree,'CData',bh)
    set(handles.onetwothree,'visible','on')
elseif strcmp(b,'i')
    set(handles.onetofive,'CData',bb)
    set(handles.onetofive,'visible','on')
elseif strcmp(b,'j')
    set(handles.threefour,'CData',jb)
    set(handles.threefour,'visible','on')
elseif strcmp(b,'k')
    set(handles.sixseven,'CData',jb)
    set(handles.sixseven,'visible','on')
elseif strcmp(b,'l')
    set(handles.fivesixseven,'CData',bh)
    set(handles.fivesixseven,'visible','on')
elseif strcmp(b,'m')
    set(handles.fourfivesix,'CData',bh)
    set(handles.fourfivesix,'visible','on')
elseif strcmp(b,'n')
    set(handles.threefourfive,'CData',bh)
    set(handles.threefourfive,'visible','on')
elseif strcmp(b,'o')
    set(handles.twotofive,'CData',hb)
    set(handles.twotofive,'visible','on')
elseif strcmp(b,'p')
    set(handles.twotosix,'CData',bb)
    set(handles.twotosix,'visible','on')
elseif strcmp(b,'q')
    set(handles.onetofour,'CData',hb)
    set(handles.onetofour,'visible','on')
elseif strcmp(b,'r')
    set(handles.fivesix,'CData',jb)
    set(handles.fivesix,'visible','on')
elseif strcmp(b,'s')
    mb=imread('for1a7.jpg');
    set(handles.cens,'CData',mb);
    set(handles.cens,'visible','on')
elseif strcmp(b,'t')
    mm=imread('for11.jpg');
    set(handles.onetwothree,'CData',mm);
    set(handles.onetwothree,'visible','on')
elseif strcmp(b,'u')
    ml=imread('for11.jpg');
    set(handles.twothreefour,'CData',ml);
    set(handles.twothreefour,'visible','on')
elseif strcmp(b,'v')
    lg=imread('for11.jpg');
    set(handles.threefourfive,'CData',lg);
    set(handles.threefourfive,'visible','on')
elseif strcmp(b,'w');
    ll=imread('for11.jpg');
    set(handles.fourfivesix,'CData',ll);
    set(handles.fourfivesix,'visible','on')
elseif strcmp(b,'x');
    pp=imread('for11.jpg');
    set(handles.fivesixseven,'CData',pp);
    set(handles.fivesixseven,'visible','on')
elseif strcmp(b,'y');
    po=imread('for12.jpg');
    set(handles.onetofive,'CData',po);
    set(handles.onetofive,'visible','on')
elseif strcmp(b,'z');
    mp=imread('for12.jpg');
    set(handles.twotosix,'CData',mp);
    set(handles.twotosix,'visible','on')
elseif strcmp(b,'za')
    mk=imread('for12.jpg');
    set(handles.threetoseven,'CData',mk)
    set(handles.threetoseven,'visible','on')
elseif strcmp(b,'zb')
    km=imread('for13.jpg');
    set(handles.cens,'CData',km)
    set(handles.cens,'visible','on')
elseif strcmp(b,'zc')
    mg=imread('for14.jpg');
    set(handles.onetofive,'CData',mg)
    set(handles.onetofive,'visible','on')
end
antfreq
%%
gt=get(handles.edith,'String');
cname={'Transmission Name','Best Frequency Transmitted','Time and Date'};
lk=[gt 'Hz'];
w = datestr(now, 'mmmm dd, yyyy HH:MM:SS AM');
vb={gig lk w}
% table(k,1:2)=vb
% set(handles.uitable1,'data',vb,'Columnname',cname)
geta=get(handles.uitable1,'data')
jk=geta{1,1};
if isempty(jk)
set(handles.uitable1,'data',vb,'Columnname',cname)
else
gett=get(handles.uitable1,'data')
table={gig lk w}
tbe=[gett;table]
set(handles.uitable1,'data',tbe,'Columnname',cname)
end
pause(2)
set(handles.cens,'visible','off')
set(handles.onetwo,'visible','off')
set(handles.twothree,'visible','off')
set(handles.threefour,'visible','off')
set(handles.fourfive,'visible','off')
set(handles.fivesix,'visible','off')
set(handles.sixseven,'visible','off')
set(handles.onetwothree,'visible','off')
set(handles.twothreefour,'visible','off')
set(handles.threefourfive,'visible','off')
set(handles.fourfivesix,'visible','off')
set(handles.fivesixseven,'visible','off')
set(handles.onetofour,'visible','off')
set(handles.twotofive,'visible','off')
set(handles.threetosix,'visible','off')
set(handles.fourtoseven,'visible','off')
set(handles.onetofive,'visible','off')
set(handles.twotosix,'visible','off')
set(handles.threetoseven,'visible','off')
set(handles.text11,'String','')
set(handles.text12,'String','')
set(handles.text13,'String','')
set(handles.text14,'String','')
set(handles.text15,'String','')
set(handles.text21,'String','')
set(handles.text22,'String','')
set(handles.text23,'String','')
set(handles.text24,'String','')
set(handles.text25,'String','')
set(handles.text31,'String','')
set(handles.text32,'String','')
set(handles.text33,'String','')
set(handles.text34,'String','')
set(handles.text35,'String','')
set(handles.text41,'String','')
set(handles.text42,'String','')
set(handles.text43,'String','')
set(handles.text44,'String','')
set(handles.text45,'String','')
set(handles.text51,'String','')
set(handles.text52,'String','')
set(handles.text53,'String','')
set(handles.text54,'String','')
set(handles.text55,'String','')
set(handles.text61,'String','')
set(handles.text62,'String','')
set(handles.text63,'String','')
set(handles.text64,'String','')
set(handles.text65,'String','')
set(handles.text71,'String','')
set(handles.text72,'String','')
set(handles.text73,'String','')
set(handles.text74,'String','')
set(handles.text75,'String','')
set(handles.tot1,'String','')
set(handles.tot2,'String','')
set(handles.tot3,'String','')
set(handles.tot4,'String','')
set(handles.tot5,'String','')
set(handles.tot6,'String','')
set(handles.tot7,'String','')
end
set(handles.edith,'String','')
end
set(handles.pushbutton63,'enable','on')

%%
function edit_Callback(hObject, eventdata, handles)
% hObject    handle to edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit as text
%        str2double(get(hObject,'String')) returns contents of edit as a double


% --- Executes during object creation, after setting all properties.
function edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in six.
function six_Callback(hObject, eventdata, handles)
% hObject    handle to six (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in seven.
function seven_Callback(hObject, eventdata, handles)
% hObject    handle to seven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in sixs.
function sixs_Callback(hObject, eventdata, handles)
% hObject    handle to sixs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in sevens.
function sevens_Callback(hObject, eventdata, handles)
% hObject    handle to sevens (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in twotosix.
function twotosix_Callback(hObject, eventdata, handles)
% hObject    handle to twotosix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in threetoseven.
function threetoseven_Callback(hObject, eventdata, handles)
% hObject    handle to threetoseven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in threetosix.
function threetosix_Callback(hObject, eventdata, handles)
% hObject    handle to threetosix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in fourtoseven.
function fourtoseven_Callback(hObject, eventdata, handles)
% hObject    handle to fourtoseven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in fourfivesix.
function fourfivesix_Callback(hObject, eventdata, handles)
% hObject    handle to fourfivesix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in fivesixseven.
function fivesixseven_Callback(hObject, eventdata, handles)
% hObject    handle to fivesixseven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in fivesix.
function fivesix_Callback(hObject, eventdata, handles)
% hObject    handle to fivesix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in sixseven.
function sixseven_Callback(hObject, eventdata, handles)
% hObject    handle to sixseven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ons.
function ons_Callback(hObject, eventdata, handles)
% hObject    handle to ons (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in onse.
function onse_Callback(hObject, eventdata, handles)
% hObject    handle to onse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton78.
function pushbutton78_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton78 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton79.
function pushbutton79_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton79 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% bi=imread('Capture2.PNG');
% set(handles.pushbutton78,'CData',bi)



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edith_Callback(hObject, eventdata, handles)
% hObject    handle to edith (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edith as text
%        str2double(get(hObject,'String')) returns contents of edith as a double


% --- Executes during object creation, after setting all properties.
function edith_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edith (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
