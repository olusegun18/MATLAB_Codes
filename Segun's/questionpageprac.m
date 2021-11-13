function varargout = questionpageprac(varargin)
% QUESTIONPAGEPRAC MATLAB code for questionpageprac.fig
%      QUESTIONPAGEPRAC, by itself, creates a new QUESTIONPAGEPRAC or raises the existing
%      singleton*.
%
%      H = QUESTIONPAGEPRAC returns the handle to a new QUESTIONPAGEPRAC or the handle to
%      the existing singleton*.
%
%      QUESTIONPAGEPRAC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in QUESTIONPAGEPRAC.M with the given input arguments.
%
%      QUESTIONPAGEPRAC('Property','Value',...) creates a new QUESTIONPAGEPRAC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before questionpageprac_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to questionpageprac_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help questionpageprac

% Last Modified by GUIDE v2.5 04-Sep-2020 12:56:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @questionpageprac_OpeningFcn, ...
                   'gui_OutputFcn',  @questionpageprac_OutputFcn, ...
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


% --- Executes just before questionpageprac is made visible.
function questionpageprac_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to questionpageprac (see VARARGIN)

% Choose default command line output for questionpageprac
handles.output = hObject;

guidata(hObject, handles);

% UIWAIT makes questionpageprac wait for user response (see UIRESUME)
% uiwait(handles.questionpageprac);

global randomval currentpagenum dbs answer optionval numberofquestions n


% variables = {subjectvalue year topic sources num yearval topicval sourcesval };
studdetails = getappdata(0,'studetails');
set(handles.regno,'string',studdetails(3));
set(handles.mode,'string',getappdata(0,'test'))
variables = getappdata(0,'variables');
subjectvalue = cell2mat(variables(1));
set(handles.subject,'string',string(subjectvalue))
year = cell2mat(variables(2));
topic = cell2mat(variables(3));
sources = cell2mat(variables(4));
yearval = cell2mat(variables(6));
topicval = cell2mat(variables(7));
sourcesval = cell2mat(variables(8));

category = cell2mat(studdetails(6));
subject = [subjectvalue '.mat'];
dr =  [pwd,'\Subject\',category,'\',subject];
lt = load(dr);
dbs = string(lt.alldata);
if  strcmp(year,'1')
    r= find(yearval == dbs(:,14));
    randomindices = randi([1 length(r)],1,numberofquestions);
    randomval = zeros(1,numberofquestions);
    for i = 1:length(randomindices)
        randomval(i) =  r(randomindices(i));
    end
elseif strcmp(topic,'1')
    r= find(topicval == dbs(:,17));
    randomindices = randi([1 length(r)],1,numberofquestions);
    randomval = zeros(1,numberofquestions);
    for i = 1:length(randomindices)
        randomval(i) =  r(randomindices(i));
    end
elseif strcmp(sources,'1')
    r= find(sourcesval == dbs(:,15));
    randomindices = randi([1 length(r)],1,numberofquestions);
    randomval = zeros(1,numberofquestions);
    for i = 1:length(randomindices)
        randomval(i) =  r(randomindices(i));
    end
else
    
    dbn = lt.alldata;
    dbs = rmmissing(string(dbn));
end 

numberofquestions = str2num(cell2mat(variables(5)));


randomval = getappdata (0,'randomval');
set(handles.totalques,'string',numberofquestions);
currentpagenum = 1;
set(handles.currentques,'string',currentpagenum);
answer = getappdata (0,'answer');
n = getappdata (0,'n');
optionval = getappdata (0,'optionval');
studdetails = getappdata(0,'studetails');
set(handles.regno,'string',studdetails(3));
numofquesprime=50-numberofquestions;
numofvaloff = 50-numofquesprime;
for i = 1:numofquesprime
    m = i+numofvaloff;
    buttonhandle = sprintf('n%d',m);
    set(handles.(buttonhandle),'Visible','Off')
end

 loadquestion(hObject, handles);




% --- Outputs from this function are returned to the command line.
function varargout = questionpageprac_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function loadquestion(hObject, handles)
global randomval currentpagenum dbs optionval answer n

set(handles.remark1,'Visible','Off');
set(handles.explanation1,'Visible','Off');
set(handles.remark2,'Visible','Off');
set(handles.explanation2,'Visible','Off');
set(handles.remark3,'Visible','Off');
set(handles.explanation3,'Visible','Off');
set(handles.remark4,'Visible','Off');
set(handles.explanation4,'Visible','Off');
set(handles.remark5,'Visible','Off');
set(handles.explanation5,'Visible','Off');
set(handles.uipanel6,'Visible','Off')

set(handles.currentques,'string',currentpagenum);
set(handles.a,'value',optionval(currentpagenum,1));
set(handles.b,'value',optionval(currentpagenum,2));
set(handles.c,'value',optionval(currentpagenum,3));
set(handles.d,'value',optionval(currentpagenum,4));
set(handles.e,'value',optionval(currentpagenum,5));
set(handles.display,'string',['' ; dbs(randomval(currentpagenum),1)]);
set(handles.a,'string',dbs(randomval(currentpagenum),n(currentpagenum,1)));
set(handles.b,'string',dbs(randomval(currentpagenum),n(currentpagenum,2)));
set(handles.c,'string',dbs(randomval(currentpagenum),n(currentpagenum,3)));
set(handles.d,'string',dbs(randomval(currentpagenum),n(currentpagenum,4)));
if isempty(dbs(randomval(currentpagenum),n(currentpagenum,5)))
    set(handles.e,'Visible','Off');
    set(handles.text9,'Visible','Off');
else
    set(handles.e,'string',dbs(randomval(currentpagenum),n(currentpagenum,5)));
end

options = {dbs(randomval(currentpagenum),n(currentpagenum,1)) dbs(randomval(currentpagenum),n(currentpagenum,2))... 
    dbs(randomval(currentpagenum),n(currentpagenum,3)) dbs(randomval(currentpagenum),n(currentpagenum,4)) dbs(randomval(currentpagenum),n(currentpagenum,5))};
r = find(dbs(randomval(currentpagenum),19) == string(options));
if answer(currentpagenum) == 0
    remark = sprintf('remark%d',r);
    explanation = sprintf('explanation%d',r);
    set(handles.(remark),'Visible','On','string','Correct Answer','ForegroundColor','black');
    set(handles.(explanation),'Visible','On');
elseif answer(currentpagenum) == 1
    remark = sprintf('remark%d',r);
    explanation = sprintf('explanation%d',r);
    set(handles.(remark),'Visible','On','string','Correct Answer','ForegroundColor','green')
    set(handles.(explanation),'Visible','On');
elseif answer(currentpagenum) == -1
    if get(handles.a,'Value')==get(handles.a,'Max')
        set(handles.remark1,'Visible','On','string','Wrong Answer','ForegroundColor','red')
    elseif get(handles.b,'Value')==get(handles.b,'Max')
        set(handles.remark2,'Visible','On','string','Wrong Answer','ForegroundColor','red')
    elseif get(handles.c,'Value')==get(handles.c,'Max')
        set(handles.remark3,'Visible','On','string','Wrong Answer','ForegroundColor','red')
    elseif get(handles.d,'Value')==get(handles.d,'Max')
        set(handles.remark4,'Visible','On','string','Wrong Answer','ForegroundColor','red')
    elseif get(handles.e,'Value')==get(handles.e,'Max')
        set(handles.remark5,'Visible','On','string','Wrong Answer','ForegroundColor','red')
    end
    r = find(dbs(randomval(currentpagenum),19) == string(options));
    remark = sprintf('remark%d',r);
    explanation = sprintf('explanation%d',r);
    set(handles.(remark),'Visible','On','string','Correct Answer','ForegroundColor','black');
    set(handles.(explanation),'Visible','On');
end
quesinfo = sprintf('%s %s %s',dbs(randomval(currentpagenum),13),dbs(randomval(currentpagenum),14),dbs(randomval(currentpagenum),15));
set(handles.infoonques,'string',quesinfo);



function submitquestion(hObject, handles)
global answer
score = 0;
for i = 1:length(answer)
    score = score + answer(i);
end;
setappdata(0,'score',score);
close;
leaderboard;

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



% --- Executes on button press in a.
function a_Callback(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of a




% --- Executes on button press in b.
function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of b


 
% --- Executes on button press in c.
function c_Callback(hObject, eventdata, handles)
% hObject    handle to c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c

% --- Executes on button press in d.
function d_Callback(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of d


function subject_Callback(hObject, eventdata, handles)
% hObject    handle to subject (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of subject as text
%        str2double(get(hObject,'String')) returns contents of subject as a double


% --- Executes during object creation, after setting all properties.
function subject_CreateFcn(hObject, eventdata, handles)
% hObject    handle to subject (see GCBO)
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



function mode_Callback(hObject, eventdata, handles)
% hObject    handle to mode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mode as text
%        str2double(get(hObject,'String')) returns contents of mode as a double


% --- Executes during object creation, after setting all properties.
function mode_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in next.
function next_Callback(hObject, eventdata, handles)
% hObject    handle to next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum numberofquestions
set(handles.remark1,'Visible','Off');
set(handles.explanation1,'Visible','Off');
set(handles.remark2,'Visible','Off');
set(handles.explanation2,'Visible','Off');
set(handles.remark3,'Visible','Off');
set(handles.explanation3,'Visible','Off');
set(handles.remark4,'Visible','Off');
set(handles.explanation4,'Visible','Off');

if currentpagenum == numberofquestions
    currentpagenum = 1;
else
    currentpagenum = currentpagenum + 1 ;
end

loadquestion(hObject, handles);



% --- Executes on button press in previous.
function previous_Callback(hObject, eventdata, handles)
% hObject    handle to previous (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum numberofquestions
set(handles.remark1,'Visible','Off');
set(handles.explanation1,'Visible','Off');
set(handles.remark2,'Visible','Off');
set(handles.explanation2,'Visible','Off');
set(handles.remark3,'Visible','Off');
set(handles.explanation3,'Visible','Off');
set(handles.remark4,'Visible','Off');
set(handles.explanation4,'Visible','Off');

currentpagenum = currentpagenum - 1;
if currentpagenum == 0
    currentpagenum = numberofquestions;
else
    
end

loadquestion(hObject, handles);





% --- Executes on button press in n1.
function n1_Callback(hObject, eventdata, handles)
% hObject    handle to n1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 1;
loadquestion(hObject, handles);


% --- Executes on button press in n2.
function n2_Callback(hObject, eventdata, handles)
% hObject    handle to n2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 2;
loadquestion(hObject, handles);

% --- Executes on button press in n3.
function n3_Callback(hObject, eventdata, handles)
% hObject    handle to n3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 3;
loadquestion(hObject, handles);

% --- Executes on button press in n4.
function n4_Callback(hObject, eventdata, handles)
% hObject    handle to n4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 4;
loadquestion(hObject, handles);

% --- Executes on button press in n5.
function n5_Callback(hObject, eventdata, handles)
% hObject    handle to n5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 5;
loadquestion(hObject, handles);

% --- Executes on button press in n6.
function n6_Callback(hObject, eventdata, handles)
% hObject    handle to n6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 6;
loadquestion(hObject, handles);

% --- Executes on button press in n7.
function n7_Callback(hObject, eventdata, handles)
% hObject    handle to n7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 7;
loadquestion(hObject, handles);

% --- Executes on button press in n13.
function n13_Callback(hObject, eventdata, handles)
% hObject    handle to n13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 13;
loadquestion(hObject, handles);

% --- Executes on button press in n19.
function n19_Callback(hObject, eventdata, handles)
% hObject    handle to n19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global currentpagenum
currentpagenum = 19;
loadquestion(hObject, handles);

% --- Executes on button press in n25.
function n25_Callback(hObject, eventdata, handles)
% hObject    handle to n25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 25;
loadquestion(hObject, handles);

% --- Executes on button press in n8.
function n8_Callback(hObject, eventdata, handles)
% hObject    handle to n8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 8;
loadquestion(hObject, handles);


% --- Executes on button press in n9.
function n9_Callback(hObject, eventdata, handles)
% hObject    handle to n9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 9;
loadquestion(hObject, handles);

% --- Executes on button press in n10.
function n10_Callback(hObject, eventdata, handles)
% hObject    handle to n10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 10;
loadquestion(hObject, handles);

% --- Executes on button press in n11.
function n11_Callback(hObject, eventdata, handles)
% hObject    handle to n11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 11;
loadquestion(hObject, handles);

% --- Executes on button press in n12.
function n12_Callback(hObject, eventdata, handles)
% hObject    handle to n12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 12;
loadquestion(hObject, handles);

% --- Executes on button press in n14.
function n14_Callback(hObject, eventdata, handles)
% hObject    handle to n14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 14;
loadquestion(hObject, handles);

% --- Executes on button press in n15.
function n15_Callback(hObject, eventdata, handles)
% hObject    handle to n15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 15;
loadquestion(hObject, handles);

% --- Executes on button press in n16.
function n16_Callback(hObject, eventdata, handles)
% hObject    handle to n16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 16;
loadquestion(hObject, handles);

% --- Executes on button press in n17.
function n17_Callback(hObject, eventdata, handles)
% hObject    handle to n17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 17;
loadquestion(hObject, handles);

% --- Executes on button press in n18.
function n18_Callback(hObject, eventdata, handles)
% hObject    handle to n18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 18;
loadquestion(hObject, handles);

% --- Executes on button press in n20.
function n20_Callback(hObject, eventdata, handles)
% hObject    handle to n20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 20;
loadquestion(hObject, handles);

% --- Executes on button press in n21.
function n21_Callback(hObject, eventdata, handles)
% hObject    handle to n21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 21;
loadquestion(hObject, handles);

% --- Executes on button press in n22.
function n22_Callback(hObject, eventdata, handles)
% hObject    handle to n22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 22;
loadquestion(hObject, handles);

% --- Executes on button press in n23.
function n23_Callback(hObject, eventdata, handles)
% hObject    handle to n23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 23;
loadquestion(hObject, handles);

% --- Executes on button press in n24.
function n24_Callback(hObject, eventdata, handles)
% hObject    handle to n24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 24;
loadquestion(hObject, handles);

% --- Executes on button press in n26.
function n26_Callback(hObject, eventdata, handles)
% hObject    handle to n26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 26;
loadquestion(hObject, handles);

% --- Executes on button press in n27.
function n27_Callback(hObject, eventdata, handles)
% hObject    handle to n27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 27;
loadquestion(hObject, handles);

% --- Executes on button press in n28.
function n28_Callback(hObject, eventdata, handles)
% hObject    handle to n28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 28;
loadquestion(hObject, handles);

% --- Executes on button press in n29.
function n29_Callback(hObject, eventdata, handles)
% hObject    handle to n29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 29;
loadquestion(hObject, handles);

% --- Executes on button press in n30.
function n30_Callback(hObject, eventdata, handles)
% hObject    handle to n30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 30;
loadquestion(hObject, handles);



function currentques_Callback(hObject, eventdata, handles)
% hObject    handle to currentques (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of currentques as text
%        str2double(get(hObject,'String')) returns contents of currentques as a double


% --- Executes during object creation, after setting all properties.
function currentques_CreateFcn(hObject, eventdata, handles)
% hObject    handle to currentques (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function totalques_Callback(hObject, eventdata, handles)
% hObject    handle to totalques (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of totalques as text
%        str2double(get(hObject,'String')) returns contents of totalques as a double


% --- Executes during object creation, after setting all properties.
function totalques_CreateFcn(hObject, eventdata, handles)
% hObject    handle to totalques (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end






% --- Executes on button press in n31.
function n31_Callback(hObject, eventdata, handles)
% hObject    handle to n31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 31;
loadquestion(hObject, handles);

% --- Executes on button press in n32.
function n32_Callback(hObject, eventdata, handles)
% hObject    handle to n32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 32;
loadquestion(hObject, handles);

% --- Executes on button press in n33.
function n33_Callback(hObject, eventdata, handles)
% hObject    handle to n33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 33;
loadquestion(hObject, handles);

% --- Executes on button press in n34.
function n34_Callback(hObject, eventdata, handles)
% hObject    handle to n34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 34;
loadquestion(hObject, handles);

% --- Executes on button press in n35.
function n35_Callback(hObject, eventdata, handles)
% hObject    handle to n35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 35;
loadquestion(hObject, handles);

% --- Executes on button press in n36.
function n36_Callback(hObject, eventdata, handles)
% hObject    handle to n36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 36;
loadquestion(hObject, handles);

% --- Executes on button press in n37.
function n37_Callback(hObject, eventdata, handles)
% hObject    handle to n37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 37;
loadquestion(hObject, handles);

% --- Executes on button press in n38.
function n38_Callback(hObject, eventdata, handles)
% hObject    handle to n38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 38;
loadquestion(hObject, handles);

% --- Executes on button press in n39.
function n39_Callback(hObject, eventdata, handles)
% hObject    handle to n39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 39;
loadquestion(hObject, handles);

% --- Executes on button press in n40.
function n40_Callback(hObject, eventdata, handles)
% hObject    handle to n40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 40;
loadquestion(hObject, handles);

% --- Executes on button press in n41.
function n41_Callback(hObject, eventdata, handles)
% hObject    handle to n41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 41;
loadquestion(hObject, handles);

% --- Executes on button press in n42.
function n42_Callback(hObject, eventdata, handles)
% hObject    handle to n42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 42;
loadquestion(hObject, handles);

% --- Executes on button press in n43.
function n43_Callback(hObject, eventdata, handles)
% hObject    handle to n43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 43;
loadquestion(hObject, handles);

% --- Executes on button press in n44.
function n44_Callback(hObject, eventdata, handles)
% hObject    handle to n44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 44;
loadquestion(hObject, handles);

% --- Executes on button press in n45.
function n45_Callback(hObject, eventdata, handles)
% hObject    handle to n45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 45;
loadquestion(hObject, handles);

% --- Executes on button press in n46.
function n46_Callback(hObject, eventdata, handles)
% hObject    handle to n46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 46;
loadquestion(hObject, handles);

% --- Executes on button press in n47.
function n47_Callback(hObject, eventdata, handles)
% hObject    handle to n47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 47;
loadquestion(hObject, handles);

% --- Executes on button press in n48.
function n48_Callback(hObject, eventdata, handles)
% hObject    handle to n48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 48;
loadquestion(hObject, handles);

% --- Executes on button press in n49.
function n49_Callback(hObject, eventdata, handles)
% hObject    handle to n49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 49;
loadquestion(hObject, handles);

% --- Executes on button press in n50.
function n50_Callback(hObject, eventdata, handles)
% hObject    handle to n50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global currentpagenum
currentpagenum = 50;
loadquestion(hObject, handles);


% --- Executes on button press in pushbutton55.
function pushbutton55_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in e.
function e_Callback(hObject, eventdata, handles)
% hObject    handle to e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of e



function explanation_Callback(hObject, eventdata, handles)
% hObject    handle to explanation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of explanation as text
%        str2double(get(hObject,'String')) returns contents of explanation as a double


% --- Executes during object creation, after setting all properties.
function explanation_CreateFcn(hObject, eventdata, handles)
% hObject    handle to explanation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in explanation1.
function explanation1_Callback(hObject, eventdata, handles)
% hObject    handle to explanation1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of explanation1
if get(handles.explanation1,'value')==get(handles.explanation1,'max')
    set(handles.uipanel6,'Visible','On')
else 
    set(handles.uipanel6,'Visible','Off')
end
% --- Executes on button press in explanation2.
function explanation2_Callback(hObject, eventdata, handles)
% hObject    handle to explanation2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of explanation2
if get(handles.explanation2,'value')==get(handles.explanation2,'max')
    set(handles.uipanel6,'Visible','On')
else 
    set(handles.uipanel6,'Visible','Off')
end



% --- Executes on button press in explanation3.
function explanation3_Callback(hObject, eventdata, handles)
% hObject    handle to explanation3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of explanation3
if get(handles.explanation3,'value')==get(handles.explanation3,'max')
    set(handles.uipanel6,'Visible','On')
else 
    set(handles.uipanel6,'Visible','Off')
end



% --- Executes on button press in explanation4.
function explanation4_Callback(hObject, eventdata, handles)
% hObject    handle to explanation4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of explanation4
if get(handles.explanation4,'value')==get(handles.explanation4,'max')
    set(handles.uipanel6,'Visible','On')
else 
    set(handles.uipanel6,'Visible','Off')
end


% --- Executes on button press in explanation5.
function explanation5_Callback(hObject, eventdata, handles)
% hObject    handle to explanation5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of explanation5
if get(handles.explanation5,'value')==get(handles.explanation5,'max')
    set(handles.uipanel6,'Visible','On')
else 
    set(handles.uipanel6,'Visible','Off')
end


% --- Executes on button press in pushbutton56.
function pushbutton56_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
studpage1;