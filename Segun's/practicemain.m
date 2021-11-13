function varargout = practicemain(varargin)
% PRACTICEMAIN MATLAB code for practicemain.fig
%      PRACTICEMAIN, by itself, creates a new PRACTICEMAIN or raises the existing
%      singleton*.
%
%      H = PRACTICEMAIN returns the handle to a new PRACTICEMAIN or the handle to
%      the existing singleton*.
%  
%      PRACTICEMAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRACTICEMAIN.M with the given input arguments.
%
%      PRACTICEMAIN('Property','Value',...) creates a new PRACTICEMAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before practicemain_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to practicemain_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help practicemain

% Last Modified by GUIDE v2.5 16-Sep-2020 17:29:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @practicemain_OpeningFcn, ...
                   'gui_OutputFcn',  @practicemain_OutputFcn, ...
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


% --- Executes just before practicemain is made visible.
function practicemain_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to practicemain (see VARARGIN)

% Choose default command line output for practicemain
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global year sources topic
topic = '0';
year = '0';
sources = '0';


% UIWAIT makes practicemain wait for user response (see UIRESUME)
% uiwait(handles.practicemain);


% --- Outputs from this function are returned to the command line.
function varargout = practicemain_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on selection change in subject.
function subject_Callback(hObject, eventdata, handles)
% hObject    handle to subject (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns subject contents as cell array
%        contents{get(hObject,'Value')} returns selected item from subject
subject = get(handles.subject,'string');
subject = subject(get(handles.subject,'value'));
category = get(handles.category,'string');
category = char(string(category(get(handles.category, 'value'))));
if get(handles.category, 'value') == 3 || get(handles.category, 'value') == 4
    category = category(1:6);
end 

dr = load(string(strcat(pwd,'\challengeval\',category,'\',subject,'.mat')));
stud = dr.studdetail;
stud((length(stud(:,1))),1)
set(handles.challenge,'string',stud((length(stud(:,1))),1));



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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


subject = get(handles.subject, 'string');
subjectvalue = subject{get(handles.subject,'value')};

subject = [subjectvalue '.mat'];
dr = [pwd,'\Subject\',category,'\',subject];
try
    lt = load(dr);
    dbs = lt.alldata;
    a = string(dbs(:,17));
    b = fillmissing(a,'previous');
    set(handles.topicpop,'string',unique(b));
    a = string(dbs(:,14));
    b = fillmissing(a,'previous');
    set(handles.yearpop,'string',unique(b));
    a = string(dbs(:,15));
    b = fillmissing(a,'previous');
    set(handles.sourcespop,'string',unique(b));
    set(handles.year,'visible','on');
    set(handles.sources,'visible','on');
    set(handles.topic,'visible','on');
catch
    errordlg('You have not chosen any subject', 'Error Dialog');
end



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global year sources topic
topic = '0';
year = '0';
sources = '0';

set(handles.year,'visible','off');
set(handles.yearpop,'visible','off');
set(handles.sources,'visible','off');
set(handles.sourcespop,'visible','off');
set(handles.topic,'visible','off');
set(handles.topicpop,'visible','off');


% --- Executes on selection change in yearpop.
function yearpop_Callback(hObject, eventdata, handles)
% hObject    handle to yearpop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns yearpop contents as cell array
%        contents{get(hObject,'Value')} returns selected item from yearpop


% --- Executes during object creation, after setting all properties.
function yearpop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yearpop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in sourcespop.
function sourcespop_Callback(hObject, eventdata, handles)
% hObject    handle to sourcespop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns sourcespop contents as cell array
%        contents{get(hObject,'Value')} returns selected item from sourcespop


% --- Executes during object creation, after setting all properties.
function sourcespop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sourcespop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in topicpop.
function topicpop_Callback(hObject, eventdata, handles)
% hObject    handle to topicpop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns topicpop contents as cell array
%        contents{get(hObject,'Value')} returns selected item from topicpop


% --- Executes during object creation, after setting all properties.
function topicpop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to topicpop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global year sources topic
yearval = '';
topicval = '';
sourcesval = ''; 
subject = get(handles.subject, 'string');
subject = subject{get(handles.subject,'value')};
category = get(handles.category,'string');
category = char(string(category(get(handles.category, 'value'))));
if get(handles.category, 'value') == 3 || get(handles.category, 'value') == 4
    category = category(1:6);
end

dr = load(strcat(pwd,'\challengeval\',category,'\',subject,'.mat'));
studdetail = dr.studdetail;
set(handles.challenge,'string',studdetail((length(studdetail(:,1))),1));


if get(handles.category, 'value') == 3 || get(handles.category, 'value') == 4
    category = category(1:6);
end

subject = [subject '.mat'];
dr = [pwd,'\Subject\',category,'\',subject];
try
    lt = load(dr);
    num = get(handles.edit3,'string');
    numques = str2num(num);
    if isempty(numques)
        errordlg('You have not entered a number in number of questions', 'Error Dialog');
    end
    subject = get(handles.subject, 'string');
    subject = subject{get(handles.subject,'value')};


    if  strcmp(year,'1')
        yea = get(handles.yearpop, 'string');
        yearval = yea{get(handles.yearpop,'value')};
    elseif strcmp(topic,'1')
        topi = get(handles.topicpop, 'string');
        topicval = topi{get(handles.topicpop,'value')};
    elseif strcmp(sources,'1')
        sourc = get(handles.sourcespop, 'string');
        sourcesval = sourc{get(handles.sourcespop,'value')};
    end 

       

    dbs = lt.alldata;
    if  strcmp(year,'1')
        r= find(yearval == dbs(:,14));
        if length(r)< numques
            errordlg('There are not enough questions for the category you have selected reduce the number of questions', 'Error Dialog');
        else
            variables = {subject year topic sources num yearval topicval sourcesval};
            studdetail(length(studdetail(:,1)),2) = {subject};
            studdetail(length(studdetail(:,1)),3) = {year};
            studdetail(length(studdetail(:,1)),4) = {topic};
            studdetail(length(studdetail(:,1)),5) = {sources};
            studdetail(length(studdetail(:,1)),6) = {num};
            studdetail(length(studdetail(:,1)),7) = {yearval};
            studdetail(length(studdetail(:,1)),8) = {topicval};
            studdetail(length(studdetail(:,1)),9) = {sourcesval};
            studdetai = string({num2str(length(studdetail(:,1))+1) '' '' '' '' '' '' '' ''});
            [m, n, b] = mkdir(string(strcat(pwd,'\stdexammon\',category,'\',split1(1),'\',split1(1),num2str(length(studdetail(:,1))+1))));

            studdetail = string(studdetail);
            studdetail = [studdetail ; studdetai];
            quesbankname = string(strcat(pwd,'\challengeval\',category,'\',subject,'.mat'));
            save(quesbankname, 'studdetail');
            set(handles.subject,'value',1)
            set(handles.delsubject,'value',1)
            set(handles.delcategory,'value',1)
            set(handles.upcategory,'value',1)
            set(handles.category,'value',1)
            msgbox('Set questions operation successful');
        end    
    elseif strcmp(topic,'1')
        r= find(topicval == dbs(:,17));
        if length(r)< numques
            errordlg('There are not enough questions for the category you have selected reduce the number of questions', 'Error Dialog');
        else
            variables = {subject year topic sources num yearval topicval sourcesval};
            studdetail(length(studdetail(:,1)),2) = {subject};
            studdetail(length(studdetail(:,1)),3) = {year};
            studdetail(length(studdetail(:,1)),4) = {topic};
            studdetail(length(studdetail(:,1)),5) = {sources};
            studdetail(length(studdetail(:,1)),6) = {num};
            studdetail(length(studdetail(:,1)),7) = {yearval};
            studdetail(length(studdetail(:,1)),8) = {topicval};
            studdetail(length(studdetail(:,1)),9) = {sourcesval};
            studdetail(length(studdetail(:,1)),2) = {sourcesval};
            studdetai = string({num2str(length(studdetail(:,1))+1) '' '' '' '' '' '' '' ''});
            [m, n, b] = mkdir(string(strcat(pwd,'\stdexammon\',category,'\',split1(1),'\',split1(1),num2str(length(studdetail(:,1))+1))));
            studdetail = string(studdetail);
            studdetail = [studdetail ; studdetai];
            quesbankname = string(strcat(pwd,'\challengeval\',category,'\',subject,'.mat'));
            save(quesbankname, 'studdetail');
            set(handles.subject,'value',1)
            set(handles.delsubject,'value',1)
            set(handles.delcategory,'value',1)
            set(handles.upcategory,'value',1)
            set(handles.category,'value',1)
            msgbox('Set questions operation successful');
        end    
    elseif strcmp(sources,'1')
        r= find(sourcesval == dbs(:,15));
        if length(r)< numques
            errordlg('There are not enough questions for the category you have selected reduce the number of questions', 'Error Dialog');
        else
            variables = {subject year topic sources num yearval topicval sourcesval};
            studdetail(length(studdetail(:,1)),2) = {subject};
            studdetail(length(studdetail(:,1)),3) = {year};
            studdetail(length(studdetail(:,1)),4) = {topic};
            studdetail(length(studdetail(:,1)),5) = {sources};
            studdetail(length(studdetail(:,1)),6) = {num};
            studdetail(length(studdetail(:,1)),7) = {yearval};
            studdetail(length(studdetail(:,1)),8) = {topicval};
            studdetail(length(studdetail(:,1)),9) = {sourcesval};
            studdetai = string({num2str(length(studdetail(:,1))+1) '' '' '' '' '' '' '' ''});
            [m, n, b] = mkdir(string(strcat(pwd,'\stdexammon\',category,'\',split1(1),'\',split1(1),num2str(length(studdetail(:,1))+1))));
            studdetail = string(studdetail);
            studdetail = [studdetail ; studdetai];
            quesbankname = string(strcat(pwd,'\challengeval\',category,'\',subject,'.mat'));
            save(quesbankname, 'studdetail');
            set(handles.subject,'value',1)
            set(handles.delsubject,'value',1)
            set(handles.delcategory,'value',1)
            set(handles.upcategory,'value',1)
            set(handles.category,'value',1)
            msgbox('Set questions operation successful');
        end 
    else
        variables = {subject year topic sources num yearval topicval sourcesval};
        
        studdetail(length(studdetail(:,1)),2) = {subject}
        studdetail(length(studdetail(:,1)),3) = {year}
        studdetail(length(studdetail(:,1)),4) = {topic};
        studdetail(length(studdetail(:,1)),5) = {sources};
        studdetail(length(studdetail(:,1)),6) = {num};
        studdetail(length(studdetail(:,1)),7) = {yearval};
        studdetail(length(studdetail(:,1)),8) = {topicval};
        studdetail(length(studdetail(:,1)),9) = {sourcesval};
        studdetai = string({num2str(length(studdetail(:,1))+1) '' '' '' '' '' '' '' ''});
        [m, n, b] = mkdir(string(strcat(pwd,'\stdexammon\',category,'\',split1(1),'\',split1(1),num2str(length(studdetail(:,1))+1))));
        studdetail = string(studdetail);
        studdetail = [studdetail ; studdetai];
        quesbankname = string(strcat(pwd,'\challengeval\',category,'\',subject,'.mat'));
         save(quesbankname, 'studdetail');
         set(handles.subject,'value',1)
         set(handles.delsubject,'value',1)
         set(handles.delcategory,'value',1)
         set(handles.upcategory,'value',1)
         set(handles.category,'value',1)
        msgbox('Set questions operation successful');
    end 
catch
    errordlg('You have not chosen any subject', 'Error Dialog');
end




% --- Executes on button press in yearcheck.
function yearcheck_Callback(hObject, eventdata, handles)
% hObject    handle to yearcheck (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of yearcheck


% --- Executes on button press in sourcescheck.
function sourcescheck_Callback(hObject, eventdata, handles)
% hObject    handle to sourcescheck (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sourcescheck


% --- Executes on button press in topiccheck.
function topiccheck_Callback(hObject, eventdata, handles)
% hObject    handle to topiccheck (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of topiccheck


% --- Executes on button press in year.
function year_Callback(hObject, eventdata, handles)
% hObject    handle to year (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global year sources topic
topic = '0';
year = '1';
sources = '0';
set(handles.yearpop,'visible','on');
set(handles.topicpop,'visible','off');
set(handles.sourcespop,'visible','off');

% --- Executes on button press in sources.
function sources_Callback(hObject, eventdata, handles)
% hObject    handle to sources (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global year sources topic
topic = '0';
year = '0';
sources = '1';
set(handles.sourcespop,'visible','on');
set(handles.topicpop,'visible','off');
set(handles.yearpop,'visible','off');

% --- Executes on button press in topic.
function topic_Callback(hObject, eventdata, handles)
% hObject    handle to topic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global year sources topic
topic = '1';
year = '0';
sources = '0';
set(handles.topicpop,'visible','on');
set(handles.sourcespop,'visible','off');
set(handles.yearpop,'visible','off');


% --- Executes during object creation, after setting all properties.
function pushbutton1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double

num = get(handles.edit3,'string');
numques = str2num(num);
if isempty(numques)
    errordlg('You have not entered a number in number of questions', 'Error Dialog');
end

% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
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


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname, filterindex] = uigetfile('*.xlsx;*.xls', 'Pick a SPREEDSHEET file');
split1 = regexp(filename,'\.','split');
[data,text,alldata]=xlsread([pathname filename],-1);
set(handles.pushbutton8,'visible','On')

category = get(handles.upcategory,'string');
category = char(string(category(get(handles.upcategory, 'value'))));
if get(handles.upcategory, 'value') == 3 || get(handles.upcategory, 'value') == 4
    category = category(1:6);
end

quesbankname = string(strcat(pwd,'\Subject\',category,'\',split1(1),'.mat'));
save(quesbankname, 'alldata');
studdetail = {'' '' '' ''};
quesbankname = string(strcat(pwd,'\leaderboard\',category,'\',split1(1),'leaderboard.mat'));
save(quesbankname, 'studdetail');
% quesbankname = string(strcat(pwd,'\challengeleaderboard\',category,'\',split1(1),'leaderboard.mat'));
% save(quesbankname, 'studdetail');
studdetail = {'1' '' '' '' '' '' '' '' ''};
quesbankname = string(strcat(pwd,'\challengeval\',category,'\',split1(1),'.mat'));
[m, n, b] = mkdir(string(strcat(pwd,'\stdexammon\',category,'\',split1(1),'\',split1(1),'1')));
save(quesbankname, 'studdetail');
set(handles.subject,'value',1)
set(handles.delsubject,'value',1)
set(handles.delcategory,'value',1)
set(handles.upcategory,'value',1)
set(handles.category,'value',1)
msgbox('UPLOADED SUCCESFULLY');

% --- Executes on button press in delete.
function delete_Callback(hObject, eventdata, handles)
% hObject    handle to delete (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
category = get(handles.delcategory,'string');
category = char(string(category(get(handles.delcategory, 'value'))));
if get(handles.delcategory, 'value') == 3 || get(handles.delcategory, 'value') == 4
    category = category(1:6);
end

subject = get(handles.delsubject, 'string');
subjectvalue = subject{get(handles.delsubject,'value')};
quedlg=strcat('ARE YOU SURE YOU WANT TO DELETE ',upper(subjectvalue),' ?');
ButtonName = questdlg(quedlg, ...
                         '', ...
                         'YES', 'NO','NO');
   switch ButtonName
     case 'NO'
     case 'YES'
         dr = strcat(pwd,'\Subject\',category,'\',subjectvalue,'.mat');
         delete(dr)
%          dr = strcat(pwd,'\subleaderboard\',category,'\',subjectvalue,'leaderboard.mat');
%          delete(dr)
         set(handles.subject,'value',1)
         set(handles.delsubject,'value',1)
         set(handles.delcategory,'value',1)
         set(handles.upcategory,'value',1)
         set(handles.category,'value',1)
        msgbox('DELETED SUCCESFULLY');
        
   end % switch
catch
     errordlg('You have not chosen any subject', 'Error Dialog');
end
  
close;
adminprofilepage;

% --- Executes on selection change in delsubject.
function delsubject_Callback(hObject, eventdata, handles)
% hObject    handle to delsubject (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns delsubject contents as cell array
%        contents{get(hObject,'Value')} returns selected item from delsubject


% --- Executes during object creation, after setting all properties.
function delsubject_CreateFcn(hObject, eventdata, handles)
% hObject    handle to delsubject (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
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
%        contents{get(hObject,'Value')}  selected item from category
global year sources topic
topic = '0';
year = '0';
sources = '0';


category = get(handles.category,'string');
category = char(string(category(get(handles.category, 'value'))));
if get(handles.category, 'value') == 3 || get(handles.category, 'value') == 4
    category = category(1:6);
end

dr = [pwd,'\Subject\',category,'\'];
objindir = dir(dr);
sub = [' '];
for i = 1:length(objindir)
    filename = string(objindir(i).name);
    split = regexp(filename,'\.','split');
    if strcmp(split(2),'mat')
        sub = [sub; split(1)];
    end
end
set(handles.subject,'string',sub)
set(handles.subject,'value',1)
set(handles.delsubject,'value',1)
set(handles.delcategory,'value',1)
set(handles.upcategory,'value',1)

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


% --- Executes on selection change in upcategory.
function upcategory_Callback(hObject, eventdata, handles)
% hObject    handle to upcategory (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns upcategory contents as cell array
%        contents{get(hObject,'Value')} returns selected item from upcategory
set(handles.pushbutton8,'visible','On')

% --- Executes during object creation, after setting all properties.
function upcategory_CreateFcn(hObject, eventdata, handles)
% hObject    handle to upcategory (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in delcategory.
function delcategory_Callback(hObject, eventdata, handles)
% hObject    handle to delcategory (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns delcategory contents as cell array
%        contents{get(hObject,'Value')} returns selected item from delcategory
set(handles.delete,'visible','On')
set(handles.delsubject,'visible','On')
category = get(handles.delcategory,'string');
category = char(string(category(get(handles.delcategory, 'value'))));
get(handles.delcategory, 'value')
if get(handles.delcategory, 'value') == 3 | get(handles.delcategory, 'value') == 4
    category = category(1:6)
end

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
set(handles.delsubject,'string',sub)

% --- Executes during object creation, after setting all properties.
function delcategory_CreateFcn(hObject, eventdata, handles)
% hObject    handle to delcategory (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function challenge_Callback(hObject, eventdata, handles)
% hObject    handle to challenge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of challenge as text
%        str2double(get(hObject,'String')) returns contents of challenge as a double


% --- Executes during object creation, after setting all properties.
function challenge_CreateFcn(hObject, eventdata, handles)
% hObject    handle to challenge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
