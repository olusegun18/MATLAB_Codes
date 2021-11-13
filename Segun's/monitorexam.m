function varargout = monitorexam(varargin)
% MONITOREXAM MATLAB code for monitorexam.fig
%      MONITOREXAM, by itself, creates a new MONITOREXAM or raises the existing
%      singleton*.
%
%      H = MONITOREXAM returns the handle to a new MONITOREXAM or the handle to
%      the existing singleton*.
%
%      MONITOREXAM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MONITOREXAM.M with the given input arguments.
%
%      MONITOREXAM('Property','Value',...) creates a new MONITOREXAM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before monitorexam_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to monitorexam_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help monitorexam

% Last Modified by GUIDE v2.5 28-Sep-2020 14:05:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @monitorexam_OpeningFcn, ...
                   'gui_OutputFcn',  @monitorexam_OutputFcn, ...
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


% --- Executes just before monitorexam is made visible.
function monitorexam_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to monitorexam (see VARARGIN)

% Choose default command line output for monitorexam
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes monitorexam wait for user response (see UIRESUME)
% uiwait(handles.figure1);




% --- Outputs from this function are returned to the command line.
function varargout = monitorexam_OutputFcn(hObject, eventdata, handles) 
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
set(handles.table,'visible','On');


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



function studinfrig_Callback(hObject, eventdata, handles)
% hObject    handle to studinfrig (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of studinfrig as text
%        str2double(get(hObject,'String')) returns contents of studinfrig as a double


% --- Executes during object creation, after setting all properties.
function studinfrig_CreateFcn(hObject, eventdata, handles)
% hObject    handle to studinfrig (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function totalstud_Callback(hObject, eventdata, handles)
% hObject    handle to totalstud (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of totalstud as text
%        str2double(get(hObject,'String')) returns contents of totalstud as a double


% --- Executes during object creation, after setting all properties.
function totalstud_CreateFcn(hObject, eventdata, handles)
% hObject    handle to totalstud (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in nextpic.
function nextpic_Callback(hObject, eventdata, handles)
% hObject    handle to nextpic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global i 

category = get(handles.category,'string');
category = char(category(get(handles.category,'value')));
if get(handles.category, 'value') == 3 || get(handles.category, 'value') == 4
    category = category(1:6);
end

regno = get(handles.viewstud,'string');
regno = regno(get(handles.viewstud,'value'));
challnum = get(handles.challnum,'string');
challnum = challnum(get(handles.challnum,'value'));
sub = get(handles.sub,'string');
sub = sub(get(handles.sub,'value'));
n = get(handles.nopic,'string');
nopic = str2num(string(n(1)));
i = 1+i
if i>nopic
    
    i = 1;
    image=string(strcat(pwd,'\stdexammon\',category,'\',sub,'\',sub,challnum,'\' ,regno,'_',num2str(i),'.jpg'));
    axes(handles.axes2);
    imshow(image);
    msgbox('YOU HAVE VIEWED ALL THE PICTURES APPLY THE NECCESSARY PENALTY')
else
    set(handles.pic,'string',i)
    image=string(strcat(pwd,'\stdexammon\',category,'\',sub,'\',sub,challnum,'\' ,regno,'_',num2str(i),'.jpg'));
    axes(handles.axes2);
    imshow(image);
end

function studscore_Callback(hObject, eventdata, handles)
% hObject    handle to studscore (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of studscore as text
%        str2double(get(hObject,'String')) returns contents of studscore as a double


% --- Executes during object creation, after setting all properties.
function studscore_CreateFcn(hObject, eventdata, handles)
% hObject    handle to studscore (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function studname_Callback(hObject, eventdata, handles)
% hObject    handle to studname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of studname as text
%        str2double(get(hObject,'String')) returns contents of studname as a double


% --- Executes during object creation, after setting all properties.
function studname_CreateFcn(hObject, eventdata, handles)
% hObject    handle to studname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pic_Callback(hObject, eventdata, handles)
% hObject    handle to pic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pic as text
%        str2double(get(hObject,'String')) returns contents of pic as a double


% --- Executes during object creation, after setting all properties.
function pic_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nopic_Callback(hObject, eventdata, handles)
% hObject    handle to nopic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nopic as text
%        str2double(get(hObject,'String')) returns contents of nopic as a double


% --- Executes during object creation, after setting all properties.
function nopic_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nopic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to nopic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nopic as text
%        str2double(get(hObject,'String')) returns contents of nopic as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nopic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in viewstud.
function viewstud_Callback(hObject, eventdata, handles)
% hObject    handle to viewstud (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns viewstud contents as cell array
%        contents{get(hObject,'Value')} returns selected item from viewstud
global i
i = 1;
category = get(handles.category,'string');
category = char(category(get(handles.category,'value')));
if get(handles.category, 'value') == 3 || get(handles.category, 'value') == 4
    category = category(1:6);
end

regno = get(handles.viewstud,'string');
regno = regno(get(handles.viewstud,'value'));
challnum = get(handles.challnum,'string');
challnum = challnum(get(handles.challnum,'value'));
sub = get(handles.sub,'string');
sub = sub(get(handles.sub,'value'));

mr = load(string(strcat(pwd,'\Studentscore\',regno,'.mat'))); 
dbss = mr.studdetail;
dr = [pwd '\studentdata.mat'];
lt = load(dr);
dbs = lt.table;
value = find(regno == string(dbs(1:end,13)));
fullname = sprintf('%s, %s',cell2mat(dbs(value,1)),cell2mat(dbs(value,2)));
set(handles.studname,'string',fullname)
r = find(sub == string(dbss(1:end,1)));
dbss = dbss(r,:);
r = find('CHALLENGE' == string(dbss(1:end,2)));
dbss = dbss(r,:)
r = find(string(challnum) == string(dbss(1:end,3)));
set(handles.studscore,'String',string(dbss(r,4)));
dbss(r,4)
image=string(strcat(pwd,'\Profilepic\',regno,'.jpg'));
axes(handles.axes1);
imshow(image);

image=string(strcat(pwd,'\stdexammon\',category,'\',sub,'\',sub,challnum,'\' ,regno,'_',num2str(i),'.jpg'));
axes(handles.axes2);
imshow(image);

dr = string(strcat(pwd,'\stdexammon\',category,'\',sub,'\',sub,challnum,'\'));
objindir = dir(dr);

tub = '';
for i = 1:length(objindir)
    filename = string(objindir(i).name);
    split = regexp(filename,'\.','split');
    if strcmp(split(2),'jpg')
        tub = [tub; split(1)];
    end
end
set(handles.nopic,'string',length(tub)-1);
set(handles.pic,'string',1);


% --- Executes during object creation, after setting all properties.
function viewstud_CreateFcn(hObject, eventdata, handles)
% hObject    handle to viewstud (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nomarksubt_Callback(hObject, eventdata, handles)
% hObject    handle to nomarksubt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nomarksubt as text
%        str2double(get(hObject,'String')) returns contents of nomarksubt as a double


% --- Executes during object creation, after setting all properties.
function nomarksubt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nomarksubt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sub = get(handles.sub,'string');
sub = sub(get(handles.sub,'value'));
category = get(handles.category,'string');
category = char(category(get(handles.category,'value')));
dr = string(strcat(pwd,'\leaderboard\',category,'\',sub,'leaderboard.mat'));
lt = load(dr);
kk = lt.studdetail;
r = find(regno == string(kk(:,2)));
table=string(get(handles.table,'data'));
scorerow = 3;
table(r,scorerow) = str2num(table(r,scorerow)) - 0;
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
save(dr,'studdetail')
n = get(handles.nopic,'string');
nopic = str2num(string(n(1)));

for k=1:nopic   
     dbimg= string(strcat(pwd,'\stdexammon\',category,'\',sub,'\',sub,challnum,'\' ,regno,'_',num2str(i),'.jpg'));
     delete(dbimg);
     
 end
close;
monitor

% --- Executes on selection change in sub.
function sub_Callback(hObject, eventdata, handles)
% hObject    handle to sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns sub contents as cell array
%        contents{get(hObject,'Value')} returns selected item from sub
try
    global tub
    sub = get(handles.sub,'string');
    sub = sub(get(handles.sub,'value'));
    category = get(handles.category,'string');
    category = char(category(get(handles.category,'value')));
    if get(handles.category, 'value') == 3 || get(handles.category, 'value') == 4
        category = category(1:6);
    end

    subject = string(strcat(sub, 'leaderboard', '.mat'));
    subleaderboard = string(strcat('\leaderboard\',category,'\'));
    dr = string(strcat(pwd,subleaderboard,subject));
    lt = load(dr);
    studdetail = lt.studdetail;
    set(handles.totalstud,'string',length(studdetail(:,1)));

    dr = load(string(strcat(pwd,'\challengeval\',category,'\',sub,'.mat')));
    dbs = dr.studdetail;
    set(handles.challnum,'string',['';dbs((end-1),1)]);
catch
end    

% for i = 1:length(objindir)
%     
%     unique(sub)(i)
% end
% set(handles.studinfrig,'string',length(unique(sub))-1);

% --- Executes during object creation, after setting all properties.
function sub_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


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

dr = string(strcat(pwd,'\stdexammon\',category));
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

set(handles.sub,'string',sub)
set(handles.challnum,'value',1)
set(handles.sub,'value',1)
set(handles.viewstud,'value',1)

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



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in challnum.
function challnum_Callback(hObject, eventdata, handles)
% hObject    handle to challnum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns challnum contents as cell array
%        contents{get(hObject,'Value')} returns selected item from challnum
try
    sub = get(handles.sub,'string');
    sub = sub(get(handles.sub,'value'));
    category = get(handles.category,'string');
    category = char(category(get(handles.category,'value')));
    challnum = get(handles.challnum,'string');
    challnum = challnum(get(handles.challnum,'value'));

    if get(handles.category, 'value') == 3 || get(handles.category, 'value') == 4
        category = category(1:6);
    end
    dr = string(strcat(pwd,'\stdexammon\',category,'\',sub,'\',sub,challnum,'\'));
    objindir = dir(dr);

%     tub = '';
%     for i = 1:length(objindir)
%         filename = string(objindir(i).name);
%         split = regexp(filename,'\.','split');
%         if strcmp(split(2),'jpg')
%             tub = [tub; split(1)];
%         end
%     end
% 
% 

    tub = '';
    for i = 1:length(objindir)
        filename = string(objindir(i).name);
        split1 = regexp(filename,'\_','split');
        split = regexp(filename,'\.','split');
        if strcmp(split(2),'jpg')
            tub = [tub; split1(1)];
        end
    end
    set(handles.studinfrig,'string',length(unique(tub))-1);
    set(handles.viewstud,'string',unique(tub));

catch
end
% --- Executes during object creation, after setting all properties.
function challnum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to challnum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sub = get(handles.sub,'string');
sub = sub(get(handles.sub,'value'));
category = get(handles.category,'string');
category = char(category(get(handles.category,'value')));
dr = string(strcat(pwd,'\leaderboard\',category,'\',sub,'leaderboard.mat'));
lt = load(dr);
kk = lt.studdetail;
r = find(regno == string(kk(:,2)));
scorerow = 3;
table=string(get(handles.table,'data'));
if str2num(abs(table)) > 50
    errordlg('PENALTY EXCEEDED THE 50 MARK REDUCE THE PENALTY')
else
    table(r,scorerow) = str2num(table(r,scorerow)) - str2num(abs(get(handles.nomarksubt,'string')));
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
    save(dr,'studdetail')
    n = get(handles.nopic,'string');
    nopic = str2num(string(n(1)));

    for k=1:nopic   
         dbimg= string(strcat(pwd,'\stdexammon\',category,'\',sub,'\',sub,challnum,'\' ,regno,'_',num2str(i),'.jpg'));
         delete(dbimg);

     end
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
adminprofilepage;
