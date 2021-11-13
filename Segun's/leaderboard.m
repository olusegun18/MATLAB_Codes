function varargout = leaderboard(varargin)
% LEADERBOARD MATLAB code for leaderboard.fig
%      LEADERBOARD, by itself, creates a new LEADERBOARD or raises the existing
%      singleton*.
%
%      H = LEADERBOARD returns the handle to a new LEADERBOARD or the handle to
%      the existing singleton*.
%
%      LEADERBOARD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LEADERBOARD.M with the given input arguments.
%
%      LEADERBOARD('Property','Value',...) creates a new LEADERBOARD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before leaderboard_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to leaderboard_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help leaderboard

% Last Modified by GUIDE v2.5 04-Sep-2020 12:40:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @leaderboard_OpeningFcn, ...
                   'gui_OutputFcn',  @leaderboard_OutputFcn, ...
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


% --- Executes just before leaderboard is made visible.
function leaderboard_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to leaderboard (see VARARGIN)

% Choose default command line output for leaderboard
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
studdetails = getappdata(0,'studetails');
variables = getappdata(0,'variables');
subjectvalue = cell2mat(variables(1));
category = cell2mat(studdetails(6));
lt = load(string(strcat(pwd,'\leaderboard\',category,'\',subjectvalue,'leaderboard.mat')));
heading={'NAME','REG-NO','SCORE'};
kk = lt.studdetail;
lt = string(strcat(pwd,'\leaderboard\',category,'\',subjectvalue,'leaderboard.mat'));
set(handles.table,'data',kk,'columnname',heading);
table=get(handles.table,'data');
score = getappdata(0,'score');

firstname = string(studdetails(1));
lastname = string(studdetails(2));
regno = string(studdetails(3));

if strcmp(getappdata(0,'test'),'PRACTICE')
    set(handles.pushbutton1,'visible','On')
%     db = [pwd,'\prechalval.mat'];
%     mt = load(db);
%     table = mt.table;
%     scorerow = 2 + str2double(string(table(1,1)));
%     if str2double(string(table(1,1))) == 1
%       if ~isempty(find(regno == string(kk(:,2))))
%           r = find(regno == string(kk(:,2)));
%           studdetail = lt.studdetail;          
%           save(dr,'studdetail')
%       end
       scorerow = 3;
%     end
else
    scorerow = 3;
end



fullname = sprintf('%s %s',firstname,lastname);
gettable = {fullname regno score ''};

if ~isempty(find(regno == string(kk(:,2))))
    r = find(regno == string(kk(:,2)));
    table=string(get(handles.table,'data'));
    table(r,scorerow) = str2num(table(r,scorerow)) + score;
    tab = str2double(table);
    tab = sortrows(tab,scorerow,'descend');
    tab = string(tab);
    for i = 1:length(table(:,2))
        r = find (tab(i,2)==table(:,2));
        tab(i,1) = table(r,1);
    end
    for i = 1:length(table(:,2))
        if i == 1
            tab(i,4) = '1';
        elseif str2double(tab(i,3)) == str2double(tab((i-1),3))
            tab(i,4) = string( tab((i-1),4));
        else
            tab(i,4) = string(length(tab(1:i,4)));
        end
        
    end
    studdetail = cellstr(tab);
    save(lt,'studdetail')
    leaderboard = tab;
    r = find(regno == leaderboard(:,2));
    first = r-1;
    third = r+1;
    try
        set(handles.firstscore,'string',leaderboard(first,3));
        set(handles.firstname,'string',leaderboard(first,1));
        set(handles.firstposition,'string',leaderboard(first,4));
    catch
        try
        set(handles.firstscore,'string','--');
        set(handles.firstname,'string','-- --');
        set(handles.firstposition,'string','--');
        catch
        end
    end
    try
        set(handles.secondscore,'string',leaderboard(r,3));
        set(handles.secondname,'string',leaderboard(r,1));
        set(handles.secondposition,'string',leaderboard(r,4));
    catch
        
        set(handles.secondscore,'string','');
        set(handles.secondname,'string','');
        set(handles.secondposition,'string','');
        r = 0;
        third = 0;
    end
    try
        set(handles.thirdscore,'string',leaderboard(third,3));
        set(handles.thirdname,'string',leaderboard(third,1));
        set(handles.thirdposition,'string',leaderboard(third,4));
    catch
        set(handles.thirdscore,'string','--');
        set(handles.thirdname,'string','-- --');
        set(handles.thirdposition,'string','--');
    end
else
    if  strcmp("",table(1,1))
        set(handles.table,'data',gettable,'columnname',heading)
    else
        table=get(handles.table,'data');
        gettable = string(gettable);
        gettable = cellstr(gettable);
        studentdata=[table;gettable];
        set(handles.table,'data',studentdata,'columnname',heading)   
    end
    table=get(handles.table,'data');
    tab = str2double(table);
    tab = sortrows(tab,scorerow,'descend');
    tab = string(tab);
    for i = 1:length(table(:,2))
        r = find (tab(i,2)==table(:,2));
        tab(i,1) = table(r,1);
    end
     for i = 1:length(table(:,2))
        if i == 1
            tab(i,4) = '1';
        elseif str2double(tab(i,3)) == str2double(tab((i-1),3))
            tab(i,4) = string( tab((i-1),4));
        else
            tab(i,4) = string(length(tab(1:i,4)));
        end
        
    end
    studdetail = cellstr(tab);
    lt
    save(lt,'studdetail')
    leaderboard = tab;
    r = find(regno == leaderboard(:,2));
    first = r-1;
    third = r+1;
    try
        set(handles.firstscore,'string',leaderboard(first,3));
        set(handles.firstname,'string',leaderboard(first,1));
        set(handles.firstposition,'string',leaderboard(first,4));
    catch
        try
        set(handles.firstscore,'string','--');
        set(handles.firstname,'string','-- --');
        set(handles.firstposition,'string','--');
        catch
        end
    end
    try
        set(handles.secondscore,'string',leaderboard(r,3));
        set(handles.secondname,'string',leaderboard(r,1));
        set(handles.secondposition,'string',leaderboard(r,4));
    catch
        
        set(handles.secondscore,'string','');
        set(handles.secondname,'string','');
        set(handles.secondposition,'string','');
        r = 0;
        third = 0;
    end
    try
        set(handles.thirdscore,'string',leaderboard(third,3));
        set(handles.thirdname,'string',leaderboard(third,1));
        set(handles.thirdposition,'string',leaderboard(third,4));
    catch
        set(handles.thirdscore,'string','--');
        set(handles.thirdname,'string','-- --');
        set(handles.thirdposition,'string','--');
    end
end
set(handles.totalstudent,'string',string(length(kk(:,2))))
set(handles.highestscore,'string',string(kk(1,scorerow)))

% UIWAIT makes leaderboard wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = leaderboard_OutputFcn(hObject, eventdata, handles) 
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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
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



function firstposition_Callback(hObject, eventdata, handles)
% hObject    handle to firstposition (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of firstposition as text
%        str2double(get(hObject,'String')) returns contents of firstposition as a double


% --- Executes during object creation, after setting all properties.
function firstposition_CreateFcn(hObject, eventdata, handles)
% hObject    handle to firstposition (see GCBO)
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



function secondname_Callback(hObject, eventdata, handles)
% hObject    handle to secondname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of secondname as text
%        str2double(get(hObject,'String')) returns contents of secondname as a double


% --- Executes during object creation, after setting all properties.
function secondname_CreateFcn(hObject, eventdata, handles)
% hObject    handle to secondname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function thirdposition_Callback(hObject, eventdata, handles)
% hObject    handle to thirdposition (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of thirdposition as text
%        str2double(get(hObject,'String')) returns contents of thirdposition as a double


% --- Executes during object creation, after setting all properties.
function thirdposition_CreateFcn(hObject, eventdata, handles)
% hObject    handle to thirdposition (see GCBO)
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



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function firstscore_Callback(hObject, eventdata, handles)
% hObject    handle to firstscore (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of firstscore as text
%        str2double(get(hObject,'String')) returns contents of firstscore as a double


% --- Executes during object creation, after setting all properties.
function firstscore_CreateFcn(hObject, eventdata, handles)
% hObject    handle to firstscore (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function secondscore_Callback(hObject, eventdata, handles)
% hObject    handle to secondscore (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of secondscore as text
%        str2double(get(hObject,'String')) returns contents of secondscore as a double


% --- Executes during object creation, after setting all properties.
function secondscore_CreateFcn(hObject, eventdata, handles)
% hObject    handle to secondscore (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function thirdscore_Callback(hObject, eventdata, handles)
% hObject    handle to thirdscore (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of thirdscore as text
%        str2double(get(hObject,'String')) returns contents of thirdscore as a double


% --- Executes during object creation, after setting all properties.
function thirdscore_CreateFcn(hObject, eventdata, handles)
% hObject    handle to thirdscore (see GCBO)
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
questionpageprac;


function totalstudent_Callback(hObject, eventdata, handles)
% hObject    handle to totalstudent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of totalstudent as text
%        str2double(get(hObject,'String')) returns contents of totalstudent as a double


% --- Executes during object creation, after setting all properties.
function totalstudent_CreateFcn(hObject, eventdata, handles)
% hObject    handle to totalstudent (see GCBO)
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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
studpage1;
