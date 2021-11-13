function varargout = exercise5(varargin)
% EXERCISE5 MATLAB code for exercise5.fig
%      EXERCISE5, by itself, creates a new EXERCISE5 or raises the existing
%      singleton*.
%
%      H = EXERCISE5 returns the handle to a new EXERCISE5 or the handle to
%      the existing singleton*.
%
%      EXERCISE5('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EXERCISE5.M with the given input arguments.
%
%      EXERCISE5('Property','Value',...) creates a new EXERCISE5 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before exercise5_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to exercise5_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help exercise5

% Last Modified by GUIDE v2.5 21-Jan-2016 13:00:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @exercise5_OpeningFcn, ...
                   'gui_OutputFcn',  @exercise5_OutputFcn, ...
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


% --- Executes just before exercise5 is made visible.
function exercise5_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to exercise5 (see VARARGIN)

% Choose default command line output for exercise5
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes exercise5 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = exercise5_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function waiting_Callback(hObject, eventdata, handles)
% hObject    handle to waiting (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of waiting as text
%        str2double(get(hObject,'String')) returns contents of waiting as a double


% --- Executes during object creation, after setting all properties.
function waiting_CreateFcn(hObject, eventdata, handles)
% hObject    handle to waiting (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Jaf.
function Jaf_Callback(hObject, eventdata, handles)
% hObject    handle to Jaf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Jaf=(get(handles.Jaf, 'String'))
set(handles.waiting, 'String', 'Jaf');


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1
ttt=get(handles.togglebutton1, 'Value');
if ttt
    set(handles.waiting, 'String', 'Toggle up');
else
    set(handles.waiting, 'String', 'Toggle down');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.waiting, 'String', 'Picture of Student');


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
checkdata=get(handles.checkbox1, 'Value');
if checkdata
    set(handles.waiting, 'String', 'Box Checked');
else
    set(handles.waiting, 'String', 'Box Unchecked');
end

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes during object creation, after setting all properties.
function radiobutton1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'String','JSS1');


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
tbs=get(handles.radiobutton1, 'Value');
if tbs
    set(handles.waiting, 'String', 'JSS1');
else
    set(handles.waiting, 'String', '');
end


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
khh=get(handles.radiobutton2, 'Value')
if khh
set(handles.waiting, 'String', 'JSS2')
else
set(handles.waiting, 'String', '')
end


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
ghh=get(handles.radiobutton3, 'Value');
if ghh
set(handles.waiting, 'String', 'JSS3');
else
set(handles.waiting, 'String', '');
end


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4
ggh=get(handles.radiobutton4, 'Value');
if ggh
set(handles.waiting, 'String', 'SSS1');
else
set(handles.waiting, 'String', '');
end


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5
kll=get(handles.radiobutton5, 'Value');
if kll
    set(handles.waiting, 'String', 'SSS2');
else
    set(handles.waiting, 'String', '');
end

% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton6
kkl=get(handles.radiobutton6, 'Value');
if kkl
set(handles.waiting, 'String', 'SSS3');
else
    set(handles.waiting, 'String', '');
end


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1
contents     = get(hObject,'String');
selectedText = contents(get(hObject,'Value'));
set(handles.waiting, 'string', selectedText);


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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
ste=get(handles.edit2, 'String');
set(handles.waiting, 'String', ste);


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


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
sliderVal    = get(hObject,'Value');
sliderStatus = ['Slider: ' num2str(sliderVal)];
set(handles.waiting, 'string', sliderStatus);
view(sliderVal, 30);


% --- Executes on selection change in popmenu1.
function popmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popmenu1


% --- Executes during object creation, after setting all properties.
function popmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popmenu1 (see GCBO)
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
dd=[1:5];
mm=[10 20 30 40 50];
axes(handles.axes1);
ddd=plot(dd,mm,'-r*');

a.data=[mm dd];
save('saveMM.mat','-struct','a');

load('saveMM.mat');
