function varargout = schedule(varargin)
%SCHEDULE M-file for schedule.fig
%      SCHEDULE, by itself, creates a new SCHEDULE or raises the existing
%      singleton*.
%
%      H = SCHEDULE returns the handle to a new SCHEDULE or the handle to
%      the existing singleton*.
%
%      SCHEDULE('Property','Value',...) creates a new SCHEDULE using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to schedule_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      SCHEDULE('CALLBACK') and SCHEDULE('CALLBACK',hObject,...) call the
%      local function named CALLBACK in SCHEDULE.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help schedule

% Last Modified by GUIDE v2.5 12-Feb-2016 23:29:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @schedule_OpeningFcn, ...
                   'gui_OutputFcn',  @schedule_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for schedule
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes schedule wait for user response (see UIRESUME)
% uiwait(handles.figure1);


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
% b=get(handles.noc,'String')
% n=str2double(b)
% if isempty(n) | isnan(n) |(n=='0')
%     c=errordlg('Pls, give a valid input','Input Error');
%     elseif (n<5)
%     t=msgbox('No of Courses must be more than or equal to 5','Input Error')
% end
% b={'8am-9:30am' '9:30am-11am' '12:00pm-1:30pm' '1:30pm-3:00pm' '3.00pm-4:30pm'}
% tc=get(handles.uitable1,'data')
% mk=cell2mat(tc)
% for c=1:n
%     pause(0.5)
    tyc={'Day','Course','No of Students','Venue','Venue Capacity','Lecturer','Time'};
% 
% v=randperm(n,5)
% j=v(1,1)
% k=v(1,2)
% m=v(1,3)
% op=v(1,4)
% t=v(1,5)

% y=str2mat(b(1,1))
% z=str2mat(b(1,2))
% ww=str2mat(b(1,3))
% nn=str2mat(b(1,4))
% cc=str2mat(b(1,5))
% set(handles.lecturer,'String',v)
set(handles.uitable1,'data',{'' '' '' '' ''},'Columnname',tyc)
% set(handles.uitable2,'data',{[] k z},'Columnname',tyc)
% set(handles.uitable3,'data',{[] m ww},'Columnname',tyc)
% set(handles.uitable4,'data',{[] op nn},'Columnname',tyc)
% set(handles.uitable5,'data',{[] t cc},'Columnname',tyc)
gettable=get(handles.uitable1,'data')
wd=('see')
gettable(1,3) = {wd};
set(handles.uitable1,'data',gettable,'Columnname',tyc)

% end



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



function venue_Callback(hObject, eventdata, handles)
% hObject    handle to venue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of venue as text
%        str2double(get(hObject,'String')) returns contents of venue as a double


% --- Executes during object creation, after setting all properties.
function venue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to venue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vcap_Callback(hObject, eventdata, handles)
% hObject    handle to vcap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vcap as text
%        str2double(get(hObject,'String')) returns contents of vcap as a double


% --- Executes during object creation, after setting all properties.
function vcap_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vcap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lecturer_Callback(hObject, eventdata, handles)
% hObject    handle to lecturer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lecturer as text
%        str2double(get(hObject,'String')) returns contents of lecturer as a double


% --- Executes during object creation, after setting all properties.
function lecturer_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lecturer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function time_Callback(hObject, eventdata, handles)
% hObject    handle to time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of time as text
%        str2double(get(hObject,'String')) returns contents of time as a double


% --- Executes during object creation, after setting all properties.
function time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function course_Callback(hObject, eventdata, handles)
% hObject    handle to course (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of course as text
%        str2double(get(hObject,'String')) returns contents of course as a double


% --- Executes during object creation, after setting all properties.
function course_CreateFcn(hObject, eventdata, handles)
% hObject    handle to course (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nos_Callback(hObject, eventdata, handles)
% hObject    handle to nos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nos as text
%        str2double(get(hObject,'String')) returns contents of nos as a double


% --- Executes during object creation, after setting all properties.
function nos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
