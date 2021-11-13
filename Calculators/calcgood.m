function varargout = calcgood(varargin)
%CALCGOOD M-file for calcgood.fig
%      CALCGOOD, by itself, creates a new CALCGOOD or raises the existing
%      singleton*.
%
%      H = CALCGOOD returns the handle to a new CALCGOOD or the handle to
%      the existing singleton*.
%
%      CALCGOOD('Property','Value',...) creates a new CALCGOOD using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to calcgood_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      CALCGOOD('CALLBACK') and CALCGOOD('CALLBACK',hObject,...) call the
%      local function named CALLBACK in CALCGOOD.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calcgood

% Last Modified by GUIDE v2.5 09-Feb-2016 00:10:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 0;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calcgood_OpeningFcn, ...
                   'gui_OutputFcn',  @calcgood_OutputFcn, ...
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


% --- Executes just before calcgood is made visible.
function calcgood_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for calcgood
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calcgood wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calcgood_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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


% --- Executes on button press in minus.
function minus_Callback(hObject, eventdata, handles)
% hObject    handle to minus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in equalsto.
function equalsto_Callback(hObject, eventdata, handles)
% hObject    handle to equalsto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Clear.
function Clear_Callback(hObject, eventdata, handles)
% hObject    handle to Clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in value0.
function value0_Callback(hObject, eventdata, handles)
% hObject    handle to value0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in value9.
function value9_Callback(hObject, eventdata, handles)
% hObject    handle to value9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in value8.
function value8_Callback(hObject, eventdata, handles)
% hObject    handle to value8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in value7.
function value7_Callback(hObject, eventdata, handles)
% hObject    handle to value7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in plus.
function plus_Callback(hObject, eventdata, handles)
% hObject    handle to plus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in value6.
function value6_Callback(hObject, eventdata, handles)
% hObject    handle to value6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in value5.
function value5_Callback(hObject, eventdata, handles)
% hObject    handle to value5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in value3.
function value3_Callback(hObject, eventdata, handles)
% hObject    handle to value3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in value2.
function value2_Callback(hObject, eventdata, handles)
% hObject    handle to value2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in multiplication.
function multiplication_Callback(hObject, eventdata, handles)
% hObject    handle to multiplication (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in value4.
function value4_Callback(hObject, eventdata, handles)
% hObject    handle to value4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in value1.
function value1_Callback(hObject, eventdata, handles)
% hObject    handle to value1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in divide.
function divide_Callback(hObject, eventdata, handles)
% hObject    handle to divide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
