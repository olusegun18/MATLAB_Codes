function varargout = studscoresheet(varargin)
% STUDSCORESHEET MATLAB code for studscoresheet.fig
%      STUDSCORESHEET, by itself, creates a new STUDSCORESHEET or raises the existing
%      singleton*.
%
%      H = STUDSCORESHEET returns the handle to a new STUDSCORESHEET or the handle to
%      the existing singleton*.
%
%      STUDSCORESHEET('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STUDSCORESHEET.M with the given input arguments.
%
%      STUDSCORESHEET('Property','Value',...) creates a new STUDSCORESHEET or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before studscoresheet_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to studscoresheet_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help studscoresheet

% Last Modified by GUIDE v2.5 28-Sep-2020 14:11:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @studscoresheet_OpeningFcn, ...
                   'gui_OutputFcn',  @studscoresheet_OutputFcn, ...
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


% --- Executes just before studscoresheet is made visible.
function studscoresheet_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to studscoresheet (see VARARGIN)

% Choose default command line output for studscoresheet
handles.output = hObject;
dr = [pwd,'\subleaderboard'];
objindir = dir(dr);
sub = ' ';
for i = 1:length(objindir)
    filename = string(objindir(i).name);
    split = regexp(filename,'\.','split');
    if strcmp(split(2),'mat')
        sub = [sub; split(1)];
    end
end
set(handles.subject,'string',sub)

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes studscoresheet wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = studscoresheet_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in subject.
function subject_Callback(hObject, eventdata, handles)
% hObject    handle to subject (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns subject contents as cell array
%        contents{get(hObject,'Value')} returns selected item from subject
category = get(handles.category,'string');
category = char(category(get(handles.category,'value')));
if get(handles.category, 'value') == 3 || get(handles.category, 'value') == 4
    category = category(1:6);
end
subject = get(handles.subject, 'string');
subjectvalue = subject{get(handles.subject,'value')};
dr = [pwd,'\leaderboard\',category,'\',subjectvalue,'.mat'];
lt = load(dr);
data = lt.studdetail;
heading={'NAME','REG-NO','SCORE','POSITION'};
set(handles.table,'data',data,'columnname',heading);


% --- Executes during object creation, after setting all properties.
function subject_CreateFcn(hObject, eventdata, handles)
% hObject    handle to subject (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
adminprofilepage;


% --- Executes on selection change in category.
function category_Callback(hObject, eventdata, handles)
% hObject    handle to category (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns category contents as cell array
%        contents{get(hObject,'Value')} returns selected item from category
category = get(handles.category,'string');
category = char(category(get(handles.category,'value')));
if get(handles.category, 'value') == 3 || get(handles.category, 'value') == 4
    category = category(1:6);
end

dr = string(strcat(pwd,'\leaderboard\',category));
objindir = dir(dr);
sub = ' ';

for i = 1:length(objindir)
    if i > length(objindir) - 2
        break
    end
    if objindir(i+2).isdir
        sub = [sub; string(objindir(i+2).name) ];
    end
end

set(handles.subject,'visible','On')
set(handles.subject,'value',1)


% --- Executes during object creation, after setting all properties.
function category_CreateFcn(hObject, eventdata, handles)
% hObject    handle to category (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
