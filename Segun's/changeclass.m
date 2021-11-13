function varargout = changeschool(varargin)
% CHANGESCHOOL MATLAB code for changeschool.fig
%      CHANGESCHOOL, by itself, creates a new CHANGESCHOOL or raises the existing
%      singleton*.
%
%      H = CHANGESCHOOL returns the handle to a new CHANGESCHOOL or the handle to
%      the existing singleton*.
%
%      CHANGESCHOOL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CHANGESCHOOL.M with the given input arguments.
%
%      CHANGESCHOOL('Property','Value',...) creates a new CHANGESCHOOL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before changeschool_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to changeschool_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help changeschool

% Last Modified by GUIDE v2.5 03-Sep-2020 11:16:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @changeschool_OpeningFcn, ...
                   'gui_OutputFcn',  @changeschool_OutputFcn, ...
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


% --- Executes just before changeschool is made visible.
function changeschool_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to changeschool (see VARARGIN)

% Choose default command line output for changeschool
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes changeschool wait for user response (see UIRESUME)
admindetails =  getappdata(0, 'studetails');
name = sprintf('%s, %s',upper(cell2mat(admindetails(1))),cell2mat(admindetails(2)));
set(handles.name,'string',name);
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = changeschool_OutputFcn(hObject, eventdata, handles) 
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
admindetails =  getappdata(0, 'studetails');


lt = load('studentdata.mat');
dbs = lt.table;
newpassword = get(handles.newpassword,'string'); 
confirmpassword = get(handles.confirmpassword,'string'); 
oldpassword = get(handles.oldpassword,'string');  
value = find(string(admindetails(3)) == string(dbs(1:end,13)));
if isempty(oldpassword)|isempty(newpassword)
    errordlg('WRONG SCHOOL NAME');
else
    if strcmp (lower(oldpassword),lower(dbs(value,9)))
        
        if strcmp (newpassword,confirmpassword)
            value = find(cell2mat(admindetails(3)) == string(dbs(1:end,13)));
            dbs(value,9) = {newpassword};
            table = dbs;
            save('studentdata.mat','table');
            msgbox('Changed Successfully')
        else
            errordlg('NEW SCHOOL NAME AND CONFIRM SCHOOL NAME DO NOT MATCH');
        end
        close;
        editdetails;
       
    else
       errordlg('WRONG SCHOOL NAME');
    end
end


function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


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



function newpassword_Callback(hObject, eventdata, handles)
% hObject    handle to newpassword (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of newpassword as text
%        str2double(get(hObject,'String')) returns contents of newpassword as a double


% --- Executes during object creation, after setting all properties.
function newpassword_CreateFcn(hObject, eventdata, handles)
% hObject    handle to newpassword (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function oldpassword_Callback(hObject, eventdata, handles)
% hObject    handle to oldpassword (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of oldpassword as text
%        str2double(get(hObject,'String')) returns contents of oldpassword as a double


% --- Executes during object creation, after setting all properties.
function oldpassword_CreateFcn(hObject, eventdata, handles)
% hObject    handle to oldpassword (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
