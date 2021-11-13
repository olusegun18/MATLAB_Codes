function varargout = sumgui(varargin)
% SUMGUI MATLAB code for sumgui.fig
%      SUMGUI, by itself, creates a new SUMGUI or raises the existing
%      singleton*.
%
%      H = SUMGUI returns the handle to a new SUMGUI or the handle to
%      the existing singleton*.
%
%      SUMGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SUMGUI.M with the given input arguments.
%
%      SUMGUI('Property','Value',...) creates a new SUMGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sumgui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sumgui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sumgui

% Last Modified by GUIDE v2.5 18-Jan-2016 11:45:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sumgui_OpeningFcn, ...
                   'gui_OutputFcn',  @sumgui_OutputFcn, ...
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


% --- Executes just before sumgui is made visible.
function sumgui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sumgui (see VARARGIN)

% Choose default command line output for sumgui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes sumgui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = sumgui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function value2_Callback(hObject, eventdata, handles)
% hObject    handle to value2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of value2 as text
%        str2double(get(hObject,'String')) returns contents of value2 as a double


% --- Executes during object creation, after setting all properties.
function value2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to value2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val1=str2double(get(handles.value1,'string'))
val2=str2double(get(handles.value2,'string'))
sum=val1+val2;
set(handles.answer,'string',sum)




function value1_Callback(hObject, eventdata, handles)
% hObject    handle to value1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of value1 as text
%        str2double(get(hObject,'String')) returns contents of value1 as a double


% --- Executes during object creation, after setting all properties.
function value1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to value1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function answer_Callback(hObject, eventdata, handles)
% hObject    handle to answer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of answer as text
%        str2double(get(hObject,'String')) returns contents of answer as a double


% --- Executes during object creation, after setting all properties.
function answer_CreateFcn(hObject, eventdata, handles)
% hObject    handle to answer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.value1,'string','')
set(handles.value2,'string','')
set(handles.answer,'string','')
