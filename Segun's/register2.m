function varargout = register2(varargin)
% REGISTER2 MATLAB code for register2.fig
%      REGISTER2, by itself, creates a new REGISTER2 or raises the existing
%      singleton*.
%
%      H = REGISTER2 returns the handle to a new REGISTER2 or the handle to
%      the existing singleton*.
%
%      REGISTER2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in REGISTER2.M with the given input arguments.
%
%      REGISTER2('Property','Value',...) creates a new REGISTER2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before register2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to register2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help register2

% Last Modified by GUIDE v2.5 14-Aug-2020 08:58:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @register2_OpeningFcn, ...
                   'gui_OutputFcn',  @register2_OutputFcn, ...
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


% --- Executes just before register2 is made visible.
function register2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to register2 (see VARARGIN)

% Choose default command line output for register2
handles.output = hObject;

code = getappdata(0,'centralcode');
set(handles.centralcode,'string',code);
radno = num2str(randi([1000 9999]));
regno = cellstr(strcat(code,radno));
set(handles.regno,'string',regno);
% Update handles structure
guidata(hObject, handles);



% UIWAIT makes register2 wait for user response (see UIRESUME)
% uiwait(handles.register2);


% --- Outputs from this function are returned to the command line.
function varargout = register2_OutputFcn(hObject, eventdata, handles) 
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
password = get(handles.password,'string');
confirmpassword = get(handles.confirmpassword,'string');

table = getappdata(0,'recordtable');
if isempty(password)
     msgbox('You have not entered a Password');
else
    if strmatch(password,confirmpassword,'exact') 
        code = getappdata(0,'centralcode');
        radno = num2str(randi([1000 9999]));
        regno = cellstr(strcat(code,radno));
        studentdata = [table password regno];
        setappdata(0, 'record2table', studentdata);
        close;
        register3;
    else
        msgbox('Password and confirm password do not match');
    end
end;
    
function centralcode_Callback(hObject, eventdata, handles)
% hObject    handle to centralcode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of centralcode as text
%        str2double(get(hObject,'String')) returns contents of centralcode as a double


% --- Executes during object creation, after setting all properties.
function centralcode_CreateFcn(hObject, eventdata, handles)
% hObject    handle to centralcode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function regno_Callback(hObject, eventdata, handles)
% hObject    handle to regno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of regno as text
%        str2double(get(hObject,'String')) returns contents of regno as a double


% --- Executes during object creation, after setting all properties.
function regno_CreateFcn(hObject, eventdata, handles)
% hObject    handle to regno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function password_Callback(hObject, eventdata, handles)
% hObject    handle to password (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of password as text
%        str2double(get(hObject,'String')) returns contents of password as a double


% --- Executes during object creation, after setting all properties.
function password_CreateFcn(hObject, eventdata, handles)
% hObject    handle to password (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function confirmpassword_Callback(hObject, eventdata, handles)
% hObject    handle to confirmpassword (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of confirmpassword as text
%        str2double(get(hObject,'String')) returns contents of confirmpassword as a double


% --- Executes during object creation, after setting all properties.
function confirmpassword_CreateFcn(hObject, eventdata, handles)
% hObject    handle to confirmpassword (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
