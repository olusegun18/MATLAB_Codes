function varargout = schedule(varargin)
% SCHEDULE MATLAB code for schedule.fig
%      SCHEDULE, by itself, creates a new SCHEDULE or raises the existing
%      singleton*.
%
%      H = SCHEDULE returns the handle to a new SCHEDULE or the handle to
%      the existing singleton*.
%
%      SCHEDULE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SCHEDULE.M with the given input arguments.
%
%      SCHEDULE('Property','Value',...) creates a new SCHEDULE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before schedule_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to schedule_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help schedule

% Last Modified by GUIDE v2.5 17-Feb-2016 16:56:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @schedule_OpeningFcn, ...
                   'gui_OutputFcn',  @schedule_OutputFcn, ...
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


% --- Executes just before schedule is made visible.
function schedule_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to schedule (see VARARGIN)

% Choose default command line output for schedule
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes schedule wait for user response (see UIRESUME)
% uiwait(handles.figure1);
load ('saveKK.mat')
put=kk{:,:}
set(handles.listbox1,'String',put)
set(handles.disp,'String',put)


% --- Outputs from this function are returned to the command line.
function varargout = schedule_OutputFcn(hObject, eventdata, handles) 
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
set(handles.uitable1,'data',{'' '' '' '' ''})
set(handles.uitabletwo,'data',{'' '' '' '' ''})
set(handles.uitable3,'data',{'' '' '' '' ''})
set(handles.uitable4,'data',{'' '' '' '' ''})
set(handles.uitable5,'data',{'' '' '' '' ''})
b=get(handles.noc,'String')
n=str2double(b)
% n=n-1
if isempty(n) | isnan(n) |(n=='0')
    c=errordlg('Pls, give a valid input','Input Error');
    elseif (n<5)
    t=msgbox('No of Courses must be more than or equal to 5','Input Error')

else
tyc={'Dept 1' 'Dept 2' 'Dept 3' 'Dept 4' 'Dept 5'}
%set(handles.uitable1,'data',{'','','','',''})
gettable=get(handles.uitable1,'data');
%gettable(1:end,:)=[]
v=randperm(n,n)
k=randperm(n,n)
l=randperm(n,n)
d=randperm(n,n)
m=randperm(n,n)
for c=1:n
    pause(0.5)
th=v(1,n)
jh=k(1,n)
tt=l(1,n)
kg=d(1,n)
j=m(1,n)
n=n-1
msg={'8am-9:30am' '9:30am-11am' '12pm-1:30pm' '1:30pm-3pm' '3pm-4:30pm'}
ght={'8am-9:30am' '9:30am-11am' '12pm-1:30pm' '1:30pm-3pm' '3pm-4:30pm'}
mls={'8am-9:30am' '9:30am-11am' '12pm-1:30pm' '1:30pm-3pm' '3pm-4:30pm'}
tsk={'8am-9:30am' '9:30am-11am' '12pm-1:30pm' '1:30pm-3pm' '3pm-4:30pm'}
mtn={'8am-9:30am' '9:30am-11am' '12pm-1:30pm' '1:30pm-3pm' '3pm-4:30pm'}
% des={'Day 1','Day 2','Day 3','Day 3','Day 4','Day 5'}
gettable(c,1:5) = {th jh tt kg j}
set(handles.uitable1,'data',gettable,'Columnname',tyc,'rowname',msg)
% pause(2)
gett(c,1:5)={jh tt kg j th}
set(handles.uitabletwo,'data',gett,'Columnname',tyc,'rowname',ght)
% pause(2)
getta(c,1:5)={tt kg j th jh}
set(handles.uitable3,'data',getta,'Columnname',tyc,'rowname',mls)
% pause(2)
ge(c,1:5)={kg j th jh tt}
set(handles.uitable4,'data',ge,'Columnname',tyc,'rowname',tsk)
% pause(2)
g(c,1:5)={j th jh tt kg}
set(handles.uitable5,'data',g,'Columnname',tyc,'rowname',mtn)
end
end




function noc_Callback(hObject, eventdata, handles)
% hObject    handle to noc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of noc as text
%        str2double(get(hObject,'String')) returns contents of noc as a double


% --- Executes during object creation, after setting all properties.
function noc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to noc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1
% bt=get(handles.listbox1,'String')
% set(handles.edit4,'String',bt)
contents     = get(hObject,'String');
selectedText = contents{get(hObject,'Value')};
set(handles.edit4, 'string', selectedText)


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
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
td=get(handles.edit4,'String')
set(handles.listbox1,'String',td)

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


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
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

br=get(handles.edit3,'String')
set(handles.listbox2,'String',br)
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



function disp_Callback(hObject, eventdata, handles)
% hObject    handle to disp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of disp as text
%        str2double(get(hObject,'String')) returns contents of disp as a double


% --- Executes during object creation, after setting all properties.
function disp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to disp (see GCBO)
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


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.disp,'enable','on')
% set(handles.text4,'BackgroundColor','white')
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




function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double
gj=get(handles.edit10,'String')
set(handles.edit9,'String',gj)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
p=questdlg('Are you sure you want to save?','Question Box', 'Yes')
switch p
    case 'Yes'
set(handles.disp,'enable','inactive')
kk={get(handles.disp,'String')}
% kk=get(handles.uitable1,'data')
j.kk=kk
save('saveKK.mat','-struct','j')
t=msgbox('Your work has been saved','SAVED!')
pause(1)
close(t)
    case 'No'
        close(p)
end

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load ('saveKK.mat')
put=kk{:,:}
set(handles.disp,'String',put)
set(handles.listbox1,'String',put)



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


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

for g=1:1
rmj={'Lecturer Number','Lecturer Name','Comment'} 
fm=get(handles.edit4,'String')
sd=get(handles.edit11,'String')
fr=get(handles.edit15,'String')
% fs={fm sd}
% set(handles.uitable2,'data',merge,'Columnname',rmj)

end
set(handles.uitable2,'data',[],'Columnname',rmj)
gett=get(handles.uitable2,'data')
if isempty(gett)
    merge(g,1:3)={fr fm sd}
    set(handles.uitable2,'data',merge,'Columnname',rmj)
elseif ~isempty(gett)
merge={fr fm sd}
des=[gett;merge]
%     merge(g,1:2)={fm sd}
    set(handles.uitable2,'data',des,'Columnname',rmj)
end
% set(handles.edit11,'String','')
% set(handles.edit4,'String','')
d=msgbox('Press "ST" to save table because your file is not yet saved','File')
pause(1)
close(d)

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ser=get(handles.edit4,'String')
if isempty(ser)
    errordlg('Pls,choose one of the lecturers in the listbox','Windows cannot find file','File Error')
else
    load('saveKL.mat')
ds=sdr(:,:)
ser=get(handles.edit4,'String')
fd=find(ser,ds)
end
% load('saveBB.mat')


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.pushbutton8,'String')
ty=get(handles.noc,'String')
if ty=='0'
    set(handles.noc,'String',bb)
else
    ld=[ty bb]
    set(handles.noc,'String',ld)
end

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.pushbutton9,'String')
ty=get(handles.noc,'String')
if ty=='0'
    set(handles.noc,'String',bb)
else
    ld=[ty bb]
    set(handles.noc,'String',ld)
end

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.pushbutton10,'String')
ty=get(handles.noc,'String')
if ty=='0'
    set(handles.noc,'String',bb)
else
    ld=[ty bb]
    set(handles.noc,'String',ld)
end

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.pushbutton11,'String')
ty=get(handles.noc,'String')
if ty=='0'
    set(handles.noc,'String',bb)
else
    ld=[ty bb]
    set(handles.noc,'String',ld)
end

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.pushbutton12,'String')
ty=get(handles.noc,'String')
if ty=='0'
    set(handles.noc,'String',bb)
else
    ld=[ty bb]
    set(handles.noc,'String',ld)
end

% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.pushbutton13,'String')
ty=get(handles.noc,'String')
if ty=='0'
    set(handles.noc,'String',bb)
else
    ld=[ty bb]
    set(handles.noc,'String',ld)
end

% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.pushbutton14,'String')
ty=get(handles.noc,'String')
if ty=='0'
    set(handles.noc,'String',bb)
else
    ld=[ty bb]
    set(handles.noc,'String',ld)
end

% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.pushbutton15,'String')
ty=get(handles.noc,'String')
if ty=='0'
    set(handles.noc,'String',bb)
else
    ld=[ty bb]
    set(handles.noc,'String',ld)
end

% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.pushbutton16,'String')
ty=get(handles.noc,'String')
if ty=='0'
    set(handles.noc,'String',bb)
else
    ld=[ty bb]
    set(handles.noc,'String',ld)
end

% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.pushbutton17,'String')
ty=get(handles.noc,'String')
if ty=='0'
    set(handles.noc,'String',bb)
else
    ld=[ty bb]
    set(handles.noc,'String',ld)
end

% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tc=get(handles.noc,'String')
bh=length(tc)
ed=tc(1:(bh-1))
set(handles.noc,'String',ed)

% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit11,'enable','on')


% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rmj={'Lecturer"s Name','Comment'} 
fm=get(handles.edit4,'String')
sd=get(handles.edit11,'String')
gett=get(handles.uitable2,'data')
if ~isempty(gett(1,:))

table={fm sd}
tbe=[gett;table]

set(handles.uitable2,'data',tbe,'Columnname',rmj)%ffr
end
d=msgbox('Press "ST" to save table because your file is not yet saved','File')
pause(1)
close(d)


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
g=questdlg('Are you sure you want to save?','Save File','Yes')
switch g
    case 'Yes'
rt=get(handles.uitable1,'data')
n.rt=rt;
save('saveRT.mat','-struct','n');
case 'No'
   d=msgbox('You have cancelled the operation')
%    close(d)
end

% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit11,'String','')
set(handles.edit4,'String','')
% set(handles.uitable2,'data',[])
f=questdlg('Are you sure you want to save?','Question Box', 'No')
switch f
    case 'Yes'
h = waitbar(0,'Please wait...');
steps = 1000;
for step = 1:steps
    % computations take place here
    waitbar(step / steps)
end
v=msgbox('Table Saved')
pause(1)
close(v)
close(h)
     sdr=get(handles.uitable2,'data')
     b.sdr=sdr
     save ('saveKL.mat','-struct','b')
    case 'No'
        close('f')
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


% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('saveKL.mat')
she=sdr(:,:)
if isempty(she)
    errordlg('There are no files in the database','Load Error')
else
set(handles.uitable2,'data',she)
end

% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit4,'String','')
set(handles.edit11,'String','')
set(handles.uitable2,'data',{})


% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=questdlg('Are you sure you want to delete?','Delete File','Yes')
switch s
    case 'Yes'
set(handles.uitable2,'data',[])
 sdr=get(handles.uitable2,'data')
     b.sdr=sdr
     save ('saveKL.mat','-struct','b')
     x=msgbox('Database DELETED','File Deleted')
     pause(1)
     close(x)
    case 'No'
  close(s)
end


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
for g=1:Inf
ima=imread('wallpaper1.jpg')
imb=imread('wedding_4_bg_103004.jpg')
imc=imread('23.jpg')
imd=imread('22.jpg')
ime=imread('thgh.jpeg')
imf=imread('mountainstream_800.jpg')
img=imread('19.jpg')
imh=imread('11(0).jpg')
imi=imread('8.jpg')
imj=imread('11CAIEFZDU.jpg')
imk=imread('Landscape005.jpg')
iml=imread('Landscape003.jpg')
imm=imread('island.jpg')
imn=imread('Genoa, Italy.jpg')
imo=imread('forest-ground.jpg')
imp=imread('flower_21.jpg')
imq=imread('fall.jpg')
imr=imread('dessert.jpg')
ims=imread('debelkova-indonesia.JPG')
imt=imread('Colossium, Rome.jpg')
imu=imread('02451_117.jpg')
imv=imread('356.jpg')
imw=imread('234.jpg')
imx=imread('34.jpg')
imy=imread('29.jpg')
set(handles.pushbutton31,'CData',imc)
pause(5)
set(handles.pushbutton31,'CData',ima)
pause(5)
set(handles.pushbutton31,'CData',imd)
pause(5)
set(handles.pushbutton31,'CData',ime)
pause(5)
set(handles.pushbutton31,'CData',img)
pause(5)
set(handles.pushbutton31,'CData',imh)
pause(5)
set(handles.pushbutton31,'CData',imf)
pause(5)
set(handles.pushbutton31,'CData',imb)
pause(5)
set(handles.pushbutton31,'CData',imj)
pause(5)
set(handles.pushbutton31,'CData',imk)
pause(5)
set(handles.pushbutton31,'CData',imm)
pause(5)
set(handles.pushbutton31,'CData',iml)
pause(5)
set(handles.pushbutton31,'CData',imi)
pause(5)
set(handles.pushbutton31,'CData',imp)
pause(5)
set(handles.pushbutton31,'CData',imn)
pause(5)
set(handles.pushbutton31,'CData',imr)
pause(5)
set(handles.pushbutton31,'CData',ims)
pause(5)
set(handles.pushbutton31,'CData',imo)
pause(5)
set(handles.pushbutton31,'CData',imq)
pause(5)
set(handles.pushbutton31,'CData',imv)
pause(5)
set(handles.pushbutton31,'CData',imt)
pause(5)
set(handles.pushbutton31,'CData',imw)
pause(5)
set(handles.pushbutton31,'CData',imx)
pause(5)
set(handles.pushbutton31,'CData',imu)
pause(5)
set(handles.pushbutton31,'CData',imy)
pause(5)
end

% --- Executes on button press in pushbutton33.
function pushbutton33_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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
