function varargout = myscore(varargin)
% MYSCORE MATLAB code for myscore.fig
%      MYSCORE, by itself, creates a new MYSCORE or raises the existing
%      singleton*.
%
%      H = MYSCORE returns the handle to a new MYSCORE or the handle to
%      the existing singleton*.
%
%      MYSCORE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MYSCORE.M with the given input arguments.
%
%      MYSCORE('Property','Value',...) creates a new MYSCORE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before myscore_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to myscore_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help myscore

% Last Modified by GUIDE v2.5 04-Sep-2020 14:04:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @myscore_OpeningFcn, ...
                   'gui_OutputFcn',  @myscore_OutputFcn, ...
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


% --- Executes just before myscore is made visible.
function myscore_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to myscore (see VARARGIN)

% Choose default command line output for myscore
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes myscore wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global mode
mode = 'practice';
studdetails = getappdata(0,'studetails');
category = cell2mat(studdetails(6));
dr = [pwd,'\Subject\',category,'\'];
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


% --- Outputs from this function are returned to the command line.
function varargout = myscore_OutputFcn(hObject, eventdata, handles) 
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

global mode

subject = get(handles.subject,'String');
subjectvalue = subject{get(handles.subject,'Value')};
subject = [subjectvalue 'leaderboard' '.mat'];
subleaderboard = ['\',mode,'leaderboard\'];
dr = [pwd,subleaderboard,subject];
lt = load(dr);


% heading={'NAME','REG-NO','SCORE'};
kk = lt.studdetail;


studdetails = getappdata(0,'studetails');
regno = string(studdetails(3));
n = find(regno == string(kk(:,2)));
if ~isempty(n)
    num = str2double(string(kk(n,3)));
    set(handles.totalscore,'string',string(num));
else
    errordlg('YOU HAVE NOT PARTICIPATED IN AN EXAM IN THIS MODE OR SUBJECT');
end
try
    set(handles.highestscore,'string',kk(1,3));
    dr = [pwd,'\prechalval.mat'];
    lt = load(dr);
    table = lt.table;
    set(handles.level,'string',str2double(string(table(1,2))));
    if ~isempty(find(regno == string(kk(:,2))))
        leaderboard = kk;
        r = find(regno == leaderboard(:,2));
        first = r-1;
        third = r+1;
        try

            set(handles.firstname,'string',leaderboard(first,1));

        catch
            try

            set(handles.firstname,'string','-- --');

            catch
            end
        end
        try


            set(handles.secondposition,'string',num2str(r));
        catch



            set(handles.secondposition,'string','');
            r = 0;
            third = 0;
        end
        try

            set(handles.thirdname,'string',leaderboard(third,1));

        catch

            set(handles.thirdname,'string','-- --');

        end
    end
catch
    errordlg('YOU HAVE NOT PARTICIPATED IN AN EXAM IN THIS MODE OR SUBJECT');
end

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



function secondposition_Callback(hObject, eventdata, handles)
% hObject    handle to secondposition (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of secondposition as text
%        str2double(get(hObject,'String')) returns contents of secondposition as a double


% --- Executes during object creation, after setting all properties.
function secondposition_CreateFcn(hObject, eventdata, handles)
% hObject    handle to secondposition (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function firstname_Callback(hObject, eventdata, handles)
% hObject    handle to firstname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of firstname as text
%        str2double(get(hObject,'String')) returns contents of firstname as a double


% --- Executes during object creation, after setting all properties.
function firstname_CreateFcn(hObject, eventdata, handles)
% hObject    handle to firstname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function thirdname_Callback(hObject, eventdata, handles)
% hObject    handle to thirdname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of thirdname as text
%        str2double(get(hObject,'String')) returns contents of thirdname as a double


% --- Executes during object creation, after setting all properties.
function thirdname_CreateFcn(hObject, eventdata, handles)
% hObject    handle to thirdname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function highestscore_Callback(hObject, eventdata, handles)
% hObject    handle to highestscore (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of highestscore as text
%        str2double(get(hObject,'String')) returns contents of highestscore as a double


% --- Executes during object creation, after setting all properties.
function highestscore_CreateFcn(hObject, eventdata, handles)
% hObject    handle to highestscore (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function level_Callback(hObject, eventdata, handles)
% hObject    handle to level (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of level as text
%        str2double(get(hObject,'String')) returns contents of level as a double


% --- Executes during object creation, after setting all properties.
function level_CreateFcn(hObject, eventdata, handles)
% hObject    handle to level (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function totalscore_Callback(hObject, eventdata, handles)
% hObject    handle to totalscore (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of totalscore as text
%        str2double(get(hObject,'String')) returns contents of totalscore as a double


% --- Executes during object creation, after setting all properties.
function totalscore_CreateFcn(hObject, eventdata, handles)
% hObject    handle to totalscore (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
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


% --- Executes on button press in practice.
function practice_Callback(hObject, eventdata, handles)
% hObject    handle to practice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of practice
global mode
set(handles.challenge,'value',0)
set(handles.practice,'value',1)
mode = 'practice';

% --- Executes on button press in challenge.
function challenge_Callback(hObject, eventdata, handles)
% hObject    handle to challenge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of challenge
global mode
set(handles.practice,'value',0)
set(handles.challenge,'value',1)
mode = 'challenge';


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
studpage1;
