function varargout = adminlogin(varargin)
% ADMINLOGIN MATLAB code for adminlogin.fig
%      ADMINLOGIN, by itself, creates a new ADMINLOGIN or raises the existing
%      singleton*.
%
%      H = ADMINLOGIN returns the handle to a new ADMINLOGIN or the handle to
%      the existing singleton*.
%
%      ADMINLOGIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ADMINLOGIN.M with the given input arguments.
%
%      ADMINLOGIN('Property','Value',...) creates a new ADMINLOGIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before adminlogin_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to adminlogin_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help adminlogin

% Last Modified by GUIDE v2.5 31-Aug-2020 06:57:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @adminlogin_OpeningFcn, ...
                   'gui_OutputFcn',  @adminlogin_OutputFcn, ...
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


% --- Executes just before adminlogin is made visible.
function adminlogin_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to adminlogin (see VARARGIN)

% Choose default command line output for adminlogin
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes adminlogin wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = adminlogin_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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



function profilename_Callback(hObject, eventdata, handles)
% hObject    handle to profilename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of profilename as text
%        str2double(get(hObject,'String')) returns contents of profilename as a double


% --- Executes during object creation, after setting all properties.
function profilename_CreateFcn(hObject, eventdata, handles)
% hObject    handle to profilename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
lt = load('admindbs.mat');
dbs = lt.hey;
profilename = get(handles.profilename,'string');
password = get(handles.password,'string');  
value = find(profilename == string(dbs(1:end,3)));
if isempty(value)
    errordlg('WRONG REGISTRATION NUMBER OR PASSWORD');
else
    if strcmp (password,dbs(value,4))
        value = find(profilename==string(dbs(1:end,3)));
        admindetails = {cell2mat(dbs(value,1)),cell2mat(dbs(value,2)),cell2mat(dbs(value,3))};
        setappdata(0, 'admindetails', admindetails);
        close;
        adminprofilepage;
    else
       errordlg('WRONG REGISTRATION NUMBER OR PASSWORD');
    end
end
    
