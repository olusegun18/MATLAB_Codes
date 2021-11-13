function varargout = agecalculator(varargin)
% AGECALCULATOR MATLAB code for agecalculator.fig
%      AGECALCULATOR, by itself, creates a new AGECALCULATOR or raises the existing
%      singleton*.
%
%      H = AGECALCULATOR returns the handle to a new AGECALCULATOR or the handle to
%      the existing singleton*.
%
%      AGECALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AGECALCULATOR.M with the given input arguments.
%
%      AGECALCULATOR('Property','Value',...) creates a new AGECALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before agecalculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to agecalculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help agecalculator

% Last Modified by GUIDE v2.5 12-Jul-2020 18:54:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 0;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @agecalculator_OpeningFcn, ...
                   'gui_OutputFcn',  @agecalculator_OutputFcn, ...
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


% --- Executes just before agecalculator is made visible.
function agecalculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to agecalculator (see VARARGIN)

% Choose default command line output for agecalculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes agecalculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = agecalculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dob_Callback(hObject, eventdata, handles)
% hObject    handle to dob (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dob as text
%        str2double(get(hObject,'String')) returns contents of dob as a double


% --- Executes during object creation, after setting all properties.
function dob_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dob (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function td_Callback(hObject, eventdata, handles)
% hObject    handle to td (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of td as text
%        str2double(get(hObject,'String')) returns contents of td as a double


% --- Executes during object creation, after setting all properties.
function td_CreateFcn(hObject, eventdata, handles)
% hObject    handle to td (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
set(handles.radiobutton1,'value',1)
set(handles.radiobutton2,'value',0)
set(handles.uipanel2,'visible','on')
set(handles.text16,'visible','off')
set(handles.eyn,'visible','off')
set(handles.pushbutton5,'visible','off')

% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
jk=get(handles.edit20,'String')
if isempty(jk) 
 warndlg('Pls,Register.Do this by adding a new Record','You are not registered')  
else 
set(handles.radiobutton1,'value',0)
set(handles.radiobutton2,'value',1)
set(handles.text16,'visible','on')
set(handles.eyn,'visible','on')
set(handles.pushbutton5,'visible','on')
set(handles.uipanel2,'visible','off')
end

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% bk=get(handles.dob,'String')
my=get(handles.edit21,'String')
if isempty(my)
%     f=pause(2)
% waitfor(f);
v=datestr(now)
[y] = datevec(v)
z=y(1,1)
set(handles.y,'String',z)
[m]=datevec(v)
t=m(1,2)
set(handles.m,'String',t)
[d]=datevec(v)
mn=d(1,3)
set(handles.d,'String',mn)

bj=str2double(get(handles.y,'String'))
bb=str2double(get(handles.m,'String'))
cbn=str2double(get(handles.d,'String'))
k=(bj*365*24*60*60)
l=(bb*30*24*60*60)
x=(cbn*24*60*60)
klx=(k+l+x)
c=get(handles.cl,'String')
d=get(handles.month,'String')
l=get(handles.day,'String')
gh=str2double(c)
blk=str2double(d)
cn=str2double(l)

e=(gh*365*24*60*60)
r=(blk*30*24*60*60)
t=(cn*24*60*60)
ert=(e+r+t)

ke=(klx-ert)
fvd=(ke/365)
dfg=(fvd/24)
pbs=(dfg/3600)
bt=rem(ke,31536000)
tt=(bt/31536000)
jj=pbs-tt
km=[num2str(jj),'yrs']
set(handles.edit1,'String',km)
bc=(ke/(3600*24))
gc=(jj)
fg=(gc*365)
gf=(bc-fg)
bd=[num2str(gf),'days']
set(handles.bet,'String',bd)

set(handles.text14,'visible','on')
set(handles.text13,'visible','on')
ff=get(handles.edit1,'String')
set(handles.text11,'String',ff)
gd=get(handles.bet,'String')
set(handles.text12,'String',gd)
else
f=pause(2)
waitfor(f);
v=datestr(now)
[y] = datevec(v)
z=y(1,1)
set(handles.y,'String',z)
[m]=datevec(v)
t=m(1,2)
set(handles.m,'String',t)
[d]=datevec(v)
mn=d(1,3)
set(handles.d,'String',mn)

bj=str2double(get(handles.y,'String'))
bb=str2double(get(handles.m,'String'))
cbn=str2double(get(handles.d,'String'))
k=(bj*365*24*60*60)
l=(bb*30*24*60*60)
x=(cbn*24*60*60)
klx=(k+l+x)
c=get(handles.cl,'String')
d=get(handles.month,'String')
l=get(handles.day,'String')
gh=str2double(c)
blk=str2double(d)
cn=str2double(l)

e=(gh*365*24*60*60)
r=(blk*30*24*60*60)
t=(cn*24*60*60)
ert=(e+r+t)

ke=(klx-ert)
fvd=(ke/365)
dfg=(fvd/24)
pbs=(dfg/3600)
bt=rem(ke,31536000)
tt=(bt/31536000)
jj=pbs-tt
km=[num2str(jj),'yrs']
set(handles.edit1,'String',km)
bc=(ke/(3600*24))
gc=(jj)
fg=(gc*365)
gf=(bc-fg)
bd=[num2str(gf),'days']
set(handles.bet,'String',bd)

set(handles.text14,'visible','on')
set(handles.text13,'visible','on')
ff=get(handles.edit1,'String')
set(handles.text11,'String',ff)
gd=get(handles.bet,'String')
% se=str2double(ff)
ds=rem(jj,4)
cb=jj-ds
xz=(cb/4)
knuy=[num2str(xz),'days']
bvo=gf+xz
set(handles.edit211,'visible','on')
set(handles.text17,'visible','on')
bdl=[num2str(bvo),'days']
set(handles.text12,'String',bdl)
set(handles.edit211,'String',knuy)
% returns y=1984, m=12, d=24, h=0, mi=0, s=0.
end
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function cl_Callback(hObject, eventdata, handles)
% hObject    handle to cl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cl as text
%        str2double(get(hObject,'String')) returns contents of cl as a double


% --- Executes during object creation, after setting all properties.
function cl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function month_Callback(hObject, eventdata, handles)
% hObject    handle to month (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of month as text
%        str2double(get(hObject,'String')) returns contents of month as a double


% --- Executes during object creation, after setting all properties.
function month_CreateFcn(hObject, eventdata, handles)
% hObject    handle to month (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function day_Callback(hObject, eventdata, handles)
% hObject    handle to day (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of day as text
%        str2double(get(hObject,'String')) returns contents of day as a double


% --- Executes during object creation, after setting all properties.
function day_CreateFcn(hObject, eventdata, handles)
% hObject    handle to day (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d_Callback(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d as text
%        str2double(get(hObject,'String')) returns contents of d as a double


% --- Executes during object creation, after setting all properties.
function d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function m_Callback(hObject, eventdata, handles)
% hObject    handle to m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of m as text
%        str2double(get(hObject,'String')) returns contents of m as a double


% --- Executes during object creation, after setting all properties.
function m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y_Callback(hObject, eventdata, handles)
% hObject    handle to y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y as text
%        str2double(get(hObject,'String')) returns contents of y as a double


% --- Executes during object creation, after setting all properties.
function y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_Callback(hObject, eventdata, handles)
% hObject    handle to ed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed as text
%        str2double(get(hObject,'String')) returns contents of ed as a double


% --- Executes during object creation, after setting all properties.
function ed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cet_Callback(hObject, eventdata, handles)
% hObject    handle to cet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cet as text
%        str2double(get(hObject,'String')) returns contents of cet as a double


% --- Executes during object creation, after setting all properties.
function cet_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bet_Callback(hObject, eventdata, handles)
% hObject    handle to bet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bet as text
%        str2double(get(hObject,'String')) returns contents of bet as a double


% --- Executes during object creation, after setting all properties.
function bet_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function det_Callback(hObject, eventdata, handles)
% hObject    handle to det (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of det as text
%        str2double(get(hObject,'String')) returns contents of det as a double


% --- Executes during object creation, after setting all properties.
function det_CreateFcn(hObject, eventdata, handles)
% hObject    handle to det (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit20,'string','Box checked')
k=get(handles.uitable1,'data')
name=get(handles.edit18,'String')
dd=get(handles.edit1,'String')
be=get(handles.bet,'String')
tad={name dd be}
tyc={'Name','Year','Days'}
jk=k{1,:}
if isempty(jk)
     h = waitbar(0,'Saving your first record... please wait...')
    for z = 1:1000
        waitbar(z/1000,h)
    end
    close(h)
   set(handles.uitable1,'data',tad,'Columnname',tyc)
else
     h = waitbar(0,'Adding new record... please wait...')
    for z = 1:1000
        waitbar(z/1000,h)
    end
    close(h)
    l = cat(1,k,tad)
    set(handles.uitable1,'data',l,'Columnname',tyc)
    
end

% --- Executes on button press in others.
function others_Callback(hObject, eventdata, handles)
% hObject    handle to others (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function oth_Callback(hObject, eventdata, handles)
% hObject    handle to oth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of oth as text
%        str2double(get(hObject,'String')) returns contents of oth as a double


% --- Executes during object creation, after setting all properties.
function oth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to oth (see GCBO)
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



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eyn_Callback(hObject, eventdata, handles)
% hObject    handle to eyn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eyn as text
%        str2double(get(hObject,'String')) returns contents of eyn as a double


% --- Executes during object creation, after setting all properties.
function eyn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eyn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
k = get(handles.uitable1,'Data')
% p=cell2mat(k)
t = get(handles.eyn,'string')
z={t}
l =k(:,1)
% h=cell2mat(p)
b = find(l==z)
data=k(row,:)
% h=k(b,1)
% j=k(b,2)
% l=k(b,3)
% if isempty(b)
%     msgbox('This name is not in the database')
% else
%     set(handles.edit18,'String',h)
%     set(handles.edit1,'String',j)
%     set(handles.bet,'String',l)
%     set(handles.text9,'visible','on')
%     set(handles.text10,'visible','on')
%     set(handles.edit1,'visible','on')
%     set(handles.bet,'visible','on')
%     set(handles.edit18,'visible','on')
%     set(handles.text15,'visible','on')
% end

% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2

isChecked = get(handles.checkbox2,'Value');

if isChecked
    set(handles.edit20, 'string', 'Box checked')
else
    set(handles.edit20, 'string', 'Box unchecked')
end

function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when entered data in editable cell(s) in uitable1.
function uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see UITABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4
% fs=get(handles.radiobutton4,'value')
% if fs=='0'
% set(handles.edit21,'String','')
% elseif fs=='1'
% % ferd=get(handles.radiobutton4,'string')
set(handles.edit21,'String','Activate Leap')
msgbox('LEAP SET SUCCESSFULLY','File Setting')
set(handles.radiobutton4,'visible','off')
% end


function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit211_Callback(hObject, eventdata, handles)
% hObject    handle to edit211 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit211 as text
%        str2double(get(hObject,'String')) returns contents of edit211 as a double


% --- Executes during object creation, after setting all properties.
function edit211_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit211 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
