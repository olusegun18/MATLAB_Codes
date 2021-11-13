function varargout = playinggui(varargin)
% PLAYINGGUI MATLAB code for playinggui.fig
%      PLAYINGGUI, by itself, creates a new PLAYINGGUI or raises the existing
%      singleton*.
%
%      H = PLAYINGGUI returns the handle to a new PLAYINGGUI or the handle to
%      the existing singleton*.
%
%      PLAYINGGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PLAYINGGUI.M with the given input arguments.
%
%      PLAYINGGUI('Property','Value',...) creates a new PLAYINGGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before playinggui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to playinggui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help playinggui

% Last Modified by GUIDE v2.5 29-Jan-2016 14:29:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @playinggui_OpeningFcn, ...
                   'gui_OutputFcn',  @playinggui_OutputFcn, ...
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


% --- Executes just before playinggui is made visible.
function playinggui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to playinggui (see VARARGIN)

% Choose default command line output for playinggui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes playinggui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = playinggui_OutputFcn(hObject, eventdata, handles) 
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
bb=get(handles.pushbutton1, 'String')
cc=get(handles.answer, 'String')
if cc=='0'
set(handles.answer, 'String',bb)
else
    ll = [cc bb]
    set(handles.answer, 'String',ll)
end




% cc=get(handles.answer, 'String')
% if cc=='0'
% set(handles.answer, 'String', cc)
% else
%     bg=str2num(cc)
% end

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


% --- Executes on button press in two.
function two_Callback(hObject, eventdata, handles)
% hObject    handle to two (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.two, 'String')
cc=get(handles.answer, 'String')
if cc=='0'
set(handles.answer, 'String',bb)
else
    ll = [cc bb]
    set(handles.answer, 'String',ll)
end

% --- Executes on button press in one.
function one_Callback(hObject, eventdata, handles)
% hObject    handle to one (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.one, 'String')
cc=get(handles.answer, 'String')
if cc=='0'
set(handles.answer,'String', bb)
else
    ll = [cc bb]
    set(handles.answer, 'String', ll)
end

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bb=get(handles.answer, 'string')
gh=(bb)
fg=eval(gh)
set(handles.answer, 'string',fg)
% bb=get(handles.answer,'String')
% 
% ff=regexp(num2str(bb),'\x','split')
% displ1=str2double(cell2mat(ff(1,1)))
% displ2=str2double(cell2mat(strtrim(ff(1,2))))
% mul=displ1*displ2;
% set(handles.answer,'String',mul)

% bb=get(handles.answer, 'String')
% cc=get(handles.answer, 'String')
% if cc=='0';
%     get(handles.answer, 'String')
% else
%     bb=get(handles.answer, 'String')
%     set(handles.answer,'String', bb)
% end
% gh=cc*bb



function store_Callback(hObject, eventdata, handles)
% hObject    handle to store (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of store as text
%        str2double(get(hObject,'String')) returns contents of store as a double
br=get(handles.string);
set(handles.store, 'String', br)

% --- Executes during object creation, after setting all properties.
function store_CreateFcn(hObject, eventdata, handles)
% hObject    handle to store (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sign_Callback(hObject, eventdata, handles)
% hObject    handle to sign (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sign as text
%        str2double(get(hObject,'String')) returns contents of sign as a double


% --- Executes during object creation, after setting all properties.
function sign_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sign (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
