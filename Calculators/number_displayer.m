function varargout = exercisegui2(varargin)
% EXERCISEGUI2 MATLAB code for exercisegui2.fig
%      EXERCISEGUI2, by itself, creates a new EXERCISEGUI2 or raises the existing
%      singleton*.
%
%      H = EXERCISEGUI2 returns the handle to a new EXERCISEGUI2 or the handle to
%      the existing singleton*.
%
%      EXERCISEGUI2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EXERCISEGUI2.M with the given input arguments.
%
%      EXERCISEGUI2('Property','Value',...) creates a new EXERCISEGUI2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before exercisegui2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to exercisegui2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help exercisegui2

% Last Modified by GUIDE v2.5 18-Jan-2016 15:51:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @exercisegui2_OpeningFcn, ...
                   'gui_OutputFcn',  @exercisegui2_OutputFcn, ...
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


% --- Executes just before exercisegui2 is made visible.
function exercisegui2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to exercisegui2 (see VARARGIN)

% Choose default command line output for exercisegui2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes exercisegui2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = exercisegui2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in value1.
function value1_Callback(hObject, eventdata, handles)
% hObject    handle to value1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=str2double(get(handles.value1, 'string'))
set(handles.display, 'string', bb)


% --- Executes on button press in value2.
function value2_Callback(hObject, eventdata, handles)
% hObject    handle to value2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%cc=str2num(get(handles.value2, 'String'))
set(handles.display, 'string', 2)


% --- Executes on button press in value3.
function value3_Callback(hObject, eventdata, handles)
% hObject    handle to value3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dd=str2num(get(handles.value3, 'String'))
set(handles.display, 'String', dd)


% --- Executes on button press in value4.
function value4_Callback(hObject, eventdata, handles)
% hObject    handle to value4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ee=str2num(get(handles.value4, 'String'))
set(handles.display, 'String', ee)


% --- Executes on button press in value5.
function value5_Callback(hObject, eventdata, handles)
% hObject    handle to value5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ff=str2num(get(handles.value5, 'String'))
set(handles.display, 'String', ff)


% --- Executes on button press in value6.
function value6_Callback(hObject, eventdata, handles)
% hObject    handle to value6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gg=str2num(get(handles.value6, 'String'))
set(handles.display, 'String', gg)


% --- Executes on button press in value9.
function value9_Callback(hObject, eventdata, handles)
% hObject    handle to value9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hh=str2num(get(handles.value9, 'String'))
set(handles.display, 'String', hh)


% --- Executes on button press in value8.
function value8_Callback(hObject, eventdata, handles)
% hObject    handle to value8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ii=str2num(get(handles.value8, 'String'))
set(handles.display, 'String', ii)


% --- Executes on button press in value7.
function value7_Callback(hObject, eventdata, handles)
% hObject    handle to value7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jj=str2num(get(handles.value7, 'String'))
set(handles.display, 'String', jj)



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
