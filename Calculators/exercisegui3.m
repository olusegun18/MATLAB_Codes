function varargout = exercisegui3(varargin)
% EXERCISEGUI3 MATLAB code for exercisegui3.fig
%      EXERCISEGUI3, by itself, creates a new EXERCISEGUI3 or raises the existing
%      singleton*.
%
%      H = EXERCISEGUI3 returns the handle to a new EXERCISEGUI3 or the handle to
%      the existing singleton*.
%
%      EXERCISEGUI3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EXERCISEGUI3.M with the given input arguments.
%
%      EXERCISEGUI3('Property','Value',...) creates a new EXERCISEGUI3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before exercisegui3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to exercisegui3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help exercisegui3

% Last Modified by GUIDE v2.5 28-Jan-2016 10:15:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @exercisegui3_OpeningFcn, ...
                   'gui_OutputFcn',  @exercisegui3_OutputFcn, ...
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


% --- Executes just before exercisegui3 is made visible.
function exercisegui3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to exercisegui3 (see VARARGIN)

% Choose default command line output for exercisegui3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes exercisegui3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = exercisegui3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in divide.
function divide_Callback(hObject, eventdata, handles)
% hObject    handle to divide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.divide, 'String')
cc=get(handles.workspace, 'String')
if cc=='0'
set(handles.workspace, 'String', bb)
else
    ll = [cc bb]
    set(handles.workspace, 'String', ll)
end


% --- Executes on button press in value1.
function value1_Callback(hObject, eventdata, handles)
% hObject    handle to value1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

bb=get(handles.value1, 'String')
cc=get(handles.workspace, 'String')
if cc=='0'
set(handles.workspace, 'String', bb)
else
    ll = [cc bb]
    set(handles.workspace, 'String', ll)
end

% --- Executes on button press in value4.
function value4_Callback(hObject, eventdata, handles)
% hObject    handle to value4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.value4, 'String')
cc=get(handles.workspace, 'String')
if cc=='0'
set(handles.workspace, 'String', bb)
else
    ll = [cc bb]
    set(handles.workspace, 'String', ll)
end

% --- Executes on button press in multiplication.
function multiplication_Callback(hObject, eventdata, handles)
% hObject    handle to multiplication (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.multiplication, 'String')
cc=get(handles.workspace, 'String')
if cc=='0'
set(handles.workspace, 'String', bb)
else
    ll = [cc bb]
    set(handles.workspace, 'String', ll)
end

% --- Executes on button press in value2.
function value2_Callback(hObject, eventdata, handles)
% hObject    handle to value2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.value2, 'String')
cc=get(handles.workspace, 'String')
if cc=='0'
set(handles.workspace, 'String', bb)
else
    ll = [cc bb]
    set(handles.workspace, 'String', ll)
end

% --- Executes on button press in value3.
function value3_Callback(hObject, eventdata, handles)
% hObject    handle to value3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.value3, 'String')
cc=get(handles.workspace, 'String')
if cc=='0'
set(handles.workspace, 'String', bb)
else
    ll = [cc bb]
    set(handles.workspace, 'String', ll)
end

% --- Executes on button press in value5.
function value5_Callback(hObject, eventdata, handles)
% hObject    handle to value5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.value5, 'String')
cc=get(handles.workspace, 'String')
if cc=='0'
set(handles.workspace, 'String', bb)
else
    ll = [cc bb]
    set(handles.workspace, 'String', ll)
end
% --- Executes on button press in value6.
function value6_Callback(hObject, eventdata, handles)
% hObject    handle to value6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.value6, 'String')
cc=get(handles.workspace, 'String')
if cc=='0'
set(handles.workspace, 'String', bb)
else
    ll = [cc bb]
    set(handles.workspace, 'String', ll)
end

% --- Executes on button press in plus.
function plus_Callback(hObject, eventdata, handles)
% hObject    handle to plus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.plus, 'String')
cc=get(handles.workspace, 'String')
if cc=='0'
set(handles.workspace, 'String', bb)
else
     ll = [cc bb]
     set(handles.workspace, 'String', ll)

end
% --- Executes on button press in value7.
function value7_Callback(hObject, eventdata, handles)
% hObject    handle to value7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.value7, 'String')
cc=get(handles.workspace, 'String')
if cc=='0'
set(handles.workspace, 'String', bb)
else
    ll = [cc bb]
    set(handles.workspace, 'String', ll)
end

% --- Executes on button press in value8.
function value8_Callback(hObject, eventdata, handles)
% hObject    handle to value8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.value8, 'String')
cc=get(handles.workspace, 'String')
if cc=='0'
set(handles.workspace, 'String', bb)
else
    ll = [cc bb]
    set(handles.workspace, 'String', ll)
end

% --- Executes on button press in value9.
function value9_Callback(hObject, eventdata, handles)
% hObject    handle to value9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.value9, 'String')
cc=get(handles.workspace, 'String')
if cc=='0'
set(handles.workspace, 'String', bb)
else
    ll = [cc bb]
    set(handles.workspace, 'String', ll)
end

% --- Executes on button press in value0.
function value0_Callback(hObject, eventdata, handles)
% hObject    handle to value0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.value0, 'String')
cc=get(handles.workspace, 'String')
if cc=='0'
set(handles.workspace, 'String', bb)
else
    ll = [cc bb]
    set(handles.workspace, 'String', ll)
end
% --- Executes on button press in Clear.
function Clear_Callback(hObject, eventdata, handles)
% hObject    handle to Clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.workspace, 'String', '')
set(handles.display, 'String', '')

% --- Executes on button press in equalsto.
function equalsto_Callback(hObject, eventdata, handles)
% hObject    handle to equalsto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.workspace, 'String')
zz= str2num(bb)
set(handles.display,'string',zz)

% bt=get(handles.workspace, 'String')
% hj=str2num(bt)
% set(handles.display, 'string',hj)
% jj = get(handles.input,'string')
% kk = str2num(jj)
% set(handles.ans,'string',kk)


% --- Executes on button press in minus.
function minus_Callback(hObject, eventdata, handles)
% hObject    handle to minus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.minus, 'String')
cc=get(handles.workspace, 'String')
if cc=='0'
set(handles.workspace, 'String', bb)
else
    ll = [cc bb]
    set(handles.workspace, 'String', ll)
end

function display_Callback(hObject, eventdata, handles)
% hObject    handle to display (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of display as text
%        str2double(get(hObject,'String')) returns contents of display as a double


% --- Executes during object creation, after setting all properties.
function display_CreateFcn(hObject, eventdata, handles)
% hObject    handle to display (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function display2_Callback(hObject, eventdata, handles)
% hObject    handle to display2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of display2 as text
%        str2double(get(hObject,'String')) returns contents of display2 as a double


% --- Executes during object creation, after setting all properties.
function display2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to display2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function workspace_Callback(hObject, eventdata, handles)
% hObject    handle to workspace (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of workspace as text
%        str2double(get(hObject,'String')) returns contents of workspace as a double


% --- Executes during object creation, after setting all properties.
function workspace_CreateFcn(hObject, eventdata, handles)
% hObject    handle to workspace (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
