function varargout = Test(varargin)
% TEST MATLAB code for Test.fig
%      TEST, by itself, creates a new TEST or raises the existing
%      singleton*.
%
%      H = TEST returns the handle to a new TEST or the handle to
%      the existing singleton*.
%
%      TEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST.M with the given input arguments.
%
%      TEST('Property','Value',...) creates a new TEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Test_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Test_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Test

% Last Modified by GUIDE v2.5 03-Mar-2016 12:45:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Test_OpeningFcn, ...
                   'gui_OutputFcn',  @Test_OutputFcn, ...
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


% --- Executes just before Test is made visible.
function Test_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Test (see VARARGIN)

% Choose default command line output for Test
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Test wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Test_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uitable1,'data',{''})
for m=1:53
gettable=get(handles.uitable1,'data')
mm=gettable(1,:)
mmlen=length(mm)
if    (m==1)
            rname = {'Friday';'Saturday'}
            gettable(1,2:3) = rname
            set(handles.uitable1,'data',gettable) 
else
            k = mmlen+1
            l = mmlen+7
            rname = {'Sunday';'Monday';'Tuesday';'Wednesday';'Thursday';'Friday';'Saturday'}
            gettable(1,k:l) = rname
            set(handles.uitable1,'data',gettable)
end
end
rk=get(handles.radiobutton1,'value')
if (rk==0)
gettable=get(handles.uitable1,'data')
get(handles.uitable1,'data')
load('NURSESHIFT(NO LEAP).mat')
vs=rm(:,:)
gettable(2:26,1:367)=vs
set(handles.uitable1,'data',gettable)
else
gettable=get(handles.uitable1,'data')
get(handles.uitable1,'data')
load('NURSESHIFT(LEAP).mat')
sv=rr(:,:)
gettable(2:26,1:367)=sv
set(handles.uitable1,'data',gettable)
end


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1



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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in holiday.
function holiday_Callback(hObject, eventdata, handles)
% hObject    handle to holiday (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns holiday contents as cell array
%        contents{get(hObject,'Value')} returns selected item from holiday
contents       = get(hObject,'String'); 
selectedText   = contents{get(hObject,'Value')};
set(handles.test, 'string', selectedText);
jb=get(handles.test,'String')
if strcmp(jb,'HWO')
    set(handles.edit5,'string','1')
    set(handles.edit5,'enable','inactive')
    set(handles.edit15,'String','1')
    set(handles.edit15,'enable','inactive')
elseif strcmp(jb,'PH')
    set(handles.edit15,'string','')
set(handles.edit15,'enable','on')
set(handles.edit15,'visible','off')
set(handles.edit5,'string','')
set(handles.edit5,'enable','on')
elseif strcmp(jb,'AL')
       set(handles.edit15,'string','')
set(handles.edit15,'enable','on') 
set(handles.edit15,'visible','off')
set(handles.edit5,'enable','on')
set(handles.edit5,'string','')
end

% --- Executes during object creation, after setting all properties.
function holiday_CreateFcn(hObject, eventdata, handles)
% hObject    handle to holiday (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bqm=get(handles.uitable1,'data')
rrp=get(handles.edit3,'String')
bv=get(handles.edit5,'String')
ml=get(handles.test,'String')
mb=bqm{4,2}
if isempty(mb)
    errordlg('The table is yet to be loaded','Error reading file')
elseif isempty(rrp) | isempty(bv)
    errordlg('No nurse or day input','Input Error')
elseif isempty(ml)
    errordlg('You have to choose the type of holiday that you want','Error loading file')
else
fsw=get(handles.text3,'String')
ve=get(handles.text5,'String')
tw=get(handles.test,'String')
hf=str2double(bv)
rwe=get(handles.uitable1,'data');
vc=[fsw rrp]
kh=(bv)
sa=rwe(4:25,1)
[c,row col]=intersect(vc,sa)
j=col+3
if strcmp(tw,'AL')
b=rwe(col+3,1)
fm=rwe(1,2:end);
[tz,rw,cl]=intersect(kh,fm)
x=cl+1
v=rwe(j,x)
y=cell2mat(v)
q=hf+58
rwe(j,hf+1:q+1)={tw}
set(handles.uitable1,'data',rwe)
elseif strcmp(tw,'PH')
prompt={'Enter the number of days you want to go on holiday'};
name='Add Value';
numlines=1;
answer=inputdlg(prompt,name,numlines);
set(handles.edit15,'visible','on')
set(handles.edit15,'String',answer)
vb=get(handles.edit15,'String')
bw=str2double(vb)
tt=hf+bw
rwe(j,hf+1:tt)={tw}
set(handles.uitable1,'data',rwe)
elseif strcmp(tw, 'Choose Holiday')
errordlg('Choose any other type of Holiday','Holiday not specified')
elseif strcmp(tw,'HWO')
    mg=get(handles.radiobutton1,'value')
    if (mg==1)
    rwe(j,2:367)={'M'}
    set(handles.uitable1,'data',rwe)
    rwe(j,3:7:365)={'O'}
    set(handles.uitable1,'data',rwe)
    rwe(j,4:7:365)={'O'}
    set(handles.uitable1,'data',rwe)
    elseif (mg==0)
    rwe(j,2:366)={'M'}
    set(handles.uitable1,'data',rwe)
    rwe(j,3:7:365)={'O'}
    set(handles.uitable1,'data',rwe)
    rwe(j,4:7:365)={'O'}
    set(handles.uitable1,'data',rwe) 
    end
end
end




function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function test_Callback(hObject, eventdata, handles)
% hObject    handle to test (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of test as text
%        str2double(get(hObject,'String')) returns contents of test as a double


% --- Executes during object creation, after setting all properties.
function test_CreateFcn(hObject, eventdata, handles)
% hObject    handle to test (see GCBO)
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


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2
contents       = get(hObject,'String'); 
selectedText   = contents{get(hObject,'Value')};
set(handles.edit10, 'string', selectedText);



% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jkm=get(handles.edit10,'String')
% kl=get(handles.uitable1,'data')
vc=get(handles.radiobutton1,'value')
gettable=get(handles.uitable1,'data')
vb=gettable{4,2}
if isempty(jkm) | isnan(jkm) | isnumeric(jkm)
    errordlg('You have to choose a month','Error')
elseif isempty(vb)
    errordlg('Load the Schedule first','Empty Table')
else 
       if strcmp(jkm,'January') & (vc==1)
       load('NURSESHIFT(LEAP).mat')
       bm = rr(1:25,1:32)
       set(handles.uitable1,'data',bm)
       elseif strcmp(jkm,'January') & (vc==0)
       load('NURSESHIFT(NO LEAP).mat')
       vd=rm(1:25,1:32)
       set(handles.uitable1,'data',vd)
       elseif strcmp(jkm,'February') & (vc==1)
       load('NURSESHIFT(LEAP).mat')
       bb=rr(:,1)
       set(handles.uitable1,'data',bb)
       bc=rr(1:25,33:61)
       gettable=get(handles.uitable1,'data')
       gettable(1:25,2:30)=(bc)
       set(handles.uitable1,'data',gettable)
       elseif strcmp(jkm,'February') & (vc==0)
       load('NURSESHIFT(NO LEAP).mat')
       bq=rm(:,1)
       set(handles.uitable1,'data',bq)
       bc=rm(1:25,33:60)
       gettable=get(handles.uitable1,'data')
       gettable(1:25,2:29)=(bc)
       set(handles.uitable1,'data',gettable)
       elseif strcmp(jkm,'March') & (vc==1)
       load('NURSESHIFT(LEAP).mat')
       qb=rr(:,1)
       set(handles.uitable1,'data',qb)
       bg=rr(1:25,62:92)
       gettable=get(handles.uitable1,'data')
       gettable(1:25,2:32)=bg
       set(handles.uitable1,'data',gettable)
       elseif strcmp(jkm,'March') & (vc==0)
       load('NURSESHIFT(NO LEAP).mat')
       qb=rm(:,1)
       set(handles.uitable1,'data',qb)
       bg=rm(1:25,61:91)
       gettable=get(handles.uitable1,'data')
       gettable(1:25,2:32)=bg
       set(handles.uitable1,'data',gettable)   
       elseif strcmp(jkm,'April') & (vc==1)
        load('NURSESHIFT(LEAP).mat')
        qq=rr(:,1)
        set(handles.uitable1,'data',qq)
        gb=rr(1:25,93:122)
        gettable=get(handles.uitable1,'data')
        gettable(1:25,2:31)=gb
        set(handles.uitable1,'data',gettable)
       elseif strcmp(jkm,'April') & (vc==0)
           load('NURSESHIFT(NO LEAP).mat')
           ww=rm(:,1)
           set(handles.uitable1,'data',ww)
           gq=rm(1:25,92:121)
           gettable=get(handles.uitable1,'data')
           gettable(1:25,2:31)=gq
           set(handles.uitable1,'data',gettable)
       elseif strcmp(jkm,'May') & (vc==1)
           load('NURSESHIFT(LEAP).mat')
           we=rr(:,1)
           set(handles.uitable1,'data',we)
           qw=rr(1:25,123:153)
           gettable=get(handles.uitable1,'data')
           gettable(1:25,2:32)=qw
           set(handles.uitable1,'data',gettable)
       elseif strcmp(jkm,'May') & (vc==0)
           load('NURSESHIFT(NO LEAP).mat')
           wr=rm(:,1)
           set(handles.uitable1,'data',wr)
           qt=rm(1:25,122:152)
           gettable=get(handles.uitable1,'data')
           gettable(1:25,2:32)=qt
           set(handles.uitable1,'data',gettable)
       elseif strcmp(jkm,'June') & (vc==1)
           load('NURSESHIFT(LEAP).mat')
           qe=rr(:,1)
           set(handles.uitable1,'data',qe)
           vq=rr(1:25,154:183)
           gettable=get(handles.uitable1,'data')
           gettable(1:25,2:31)=vq
           set(handles.uitable1,'data',gettable)
       elseif strcmp(jkm,'June') & (vc==0)
           load('NURSESHIFT(NO LEAP).mat')
           we=rm(:,1)
           set(handles.uitable1,'data',we)
           tr=rm(1:25,153:182)
           gettable=get(handles.uitable1,'data')
           gettable(1:25,2:31)=tr
           set(handles.uitable1,'data',gettable)
       elseif strcmp(jkm,'July') & (vc==1)
           load('NURSESHIFT(LEAP).mat')
           we=rr(:,1)
           set(handles.uitable1,'data',we)
           tr=rr(1:25,184:214)
           gettable=get(handles.uitable1,'data')
           gettable(1:25,2:32)=tr
           set(handles.uitable1,'data',gettable)
       elseif strcmp(jkm,'July') & (vc==0)
           load('NURSESHIFT(NO LEAP).mat')
           we=rm(:,1)
           set(handles.uitable1,'data',we)
           tr=rm(1:25,183:213)
           gettable=get(handles.uitable1,'data')
           gettable(1:25,2:32)=tr
           set(handles.uitable1,'data',gettable)
       elseif strcmp(jkm,'August') & (vc==1)
           load('NURSESHIFT(LEAP).mat')
           we=rr(:,1)
           set(handles.uitable1,'data',we)
           tr=rr(1:25,215:245)
           gettable=get(handles.uitable1,'data')
           gettable(1:25,2:32)=tr
           set(handles.uitable1,'data',gettable)
       elseif strcmp(jkm,'August') & (vc==0)
           load('NURSESHIFT(NO LEAP).mat')
           we=rm(:,1)
           set(handles.uitable1,'data',we)
           tr=rm(1:25,214:244)
           gettable=get(handles.uitable1,'data')
           gettable(1:25,2:32)=tr
           set(handles.uitable1,'data',gettable)
       elseif strcmp(jkm,'September') & (vc==1)
           load('NURSESHIFT(LEAP).mat')
           we=rr(:,1);
           set(handles.uitable1,'data',we)
           tr=rr(1:25,246:275);
           gettable=get(handles.uitable1,'data')
           gettable(1:25,2:31)=tr;
           set(handles.uitable1,'data',gettable)
       elseif strcmp(jkm,'September') & (vc==0)
           load('NURSESHIFT(NO LEAP).mat')
           we=rm(:,1);
           set(handles.uitable1,'data',we)
           tr=rm(1:25,245:274);
           gettable=get(handles.uitable1,'data');
           gettable(1:25,2:31)=tr;
           set(handles.uitable1,'data',gettable)
       elseif strcmp(jkm,'October') & (vc==1)
           load('NURSESHIFT(LEAP).mat')
           we=rr(:,1)
           set(handles.uitable1,'data',we)
           tr=rr(1:25,276:306)
           gettable=get(handles.uitable1,'data')
           gettable(1:25,2:32)=tr
           set(handles.uitable1,'data',gettable)
       elseif strcmp(jkm,'October') & (vc==0)
           load('NURSESHIFT(NO LEAP).mat')
           we=rm(:,1)
           set(handles.uitable1,'data',we)
           tr=rm(1:25,275:305)
           gettable=get(handles.uitable1,'data')
           gettable(1:25,2:32)=tr
           set(handles.uitable1,'data',gettable)
       elseif strcmp(jkm,'November') & (vc==1)
           load('NURSESHIFT(LEAP).mat')
           we=rr(:,1)
           set(handles.uitable1,'data',we)
           tr=rr(1:25,307:336)
           gettable=get(handles.uitable1,'data')
           gettable(1:25,2:31)=tr
           set(handles.uitable1,'data',gettable)
       elseif strcmp(jkm,'November') & (vc==0)
           load('NURSESHIFT(NO LEAP).mat')
           we=rm(:,1)
           set(handles.uitable1,'data',we)
           tr=rm(1:25,306:335)
           gettable=get(handles.uitable1,'data')
           gettable(1:25,2:31)=tr
           set(handles.uitable1,'data',gettable)
       elseif strcmp(jkm,'December') & (vc==1)
           load('NURSESHIFT(LEAP).mat')
           we=rr(:,1)
           set(handles.uitable1,'data',we)
           tr=rr(1:25,337:367)
           gettable=get(handles.uitable1,'data')
           gettable(1:25,2:32)=tr
           set(handles.uitable1,'data',gettable)
       elseif strcmp(jkm,'December') & (vc==0)
           load('NURSESHIFT(NO LEAP).mat')
           we=rm(:,1)
           set(handles.uitable1,'data',we)
           tr=rm(1:25,336:366)
           gettable=get(handles.uitable1,'data')
           gettable(1:25,2:32)=tr
           set(handles.uitable1,'data',gettable)
       end
end   


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
