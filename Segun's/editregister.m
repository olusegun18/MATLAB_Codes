function varargout = editregister(varargin)
% EDITREGISTER MATLAB code for editregister.fig
%      EDITREGISTER, by itself, creates a new EDITREGISTER or raises the existing
%      singleton*.
%
%      H = EDITREGISTER returns the handle to a new EDITREGISTER or the handle to
%      the existing singleton*.
%
%      EDITREGISTER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EDITREGISTER.M with the given input arguments.
%
%      EDITREGISTER('Property','Value',...) creates a new EDITREGISTER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before editregister_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to editregister_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help editregister

% Last Modified by GUIDE v2.5 28-Sep-2020 14:24:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @editregister_OpeningFcn, ...
                   'gui_OutputFcn',  @editregister_OutputFcn, ...
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


% --- Executes just before editregister is made visible.
function editregister_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to editregister (see VARARGIN)

% Choose default command line output for editregister
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes editregister wait for user response (see UIRESUME)
% uiwait(handles.editregister);
set(handles.country,'String','Nigeria');
state = load('statelga.mat');
stateval = state.text;
set(handles.state ,'String',stateval(2:end,2));
len = str2num(datestr(now,10)) - 1980;
fyear = 1980;
year = zeros(len,1);
for i = 1:length(year)
    fyear = fyear + 1;
    year(i) = fyear;
end


months = {' ';'January'; 'Febuary' ; 'March' ; 'April' ; 'May' ; 'June' ; 'July' ; 'August' ; 'September' ;'October';'November';'December'};
set(handles.year ,'String',['' ; string(year)]);
set(handles.month,'String',['' ; months])


% --- Outputs from this function are returned to the command line.
function varargout = editregister_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function surname_Callback(hObject, eventdata, handles)
% hObject    handle to surname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of surname as text
%        str2double(get(hObject,'String')) returns contents of surname as a double


% --- Executes during object creation, after setting all properties.
function surname_CreateFcn(hObject, eventdata, handles)
% hObject    handle to surname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function category_Callback(hObject, eventdata, handles)
% hObject    handle to category (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of category as text
%        str2double(get(hObject,'String')) returns contents of category as a double
pry = {'     ';' 1';' 2';' 3';' 4';' 5';' 6'};
jss = {'     ';' 1';' 2';' 3'};
sss = {'     ';' 1';' 2';' 3'};
adv = {'     ';'100 ';'200 ';'300 ';'400 ';'500 '};

category = get(handles.category, 'string');
categoryvalue = category{get(handles.category,'value')};
if strmatch(categoryvalue,'PRIMARY')
    set(handles.class,'string',pry);
elseif strmatch(categoryvalue,'JUNIOR SECONDARY')
    set(handles.class,'string',jss);
elseif strmatch(categoryvalue,'SENIOR SECONDARY')
    set(handles.class,'string',sss);
elseif strmatch(categoryvalue,'ADVANCE')
    set(handles.class,'string',adv);
end;

% --- Executes during object creation, after setting all properties.
function category_CreateFcn(hObject, eventdata, handles)
% hObject    handle to category (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function class_Callback(hObject, eventdata, handles)
% hObject    handle to class (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of class as text
%        str2double(get(hObject,'String')) returns contents of class as a double



% --- Executes during object creation, after setting all properties.
function class_CreateFcn(hObject, eventdata, handles)
% hObject    handle to class (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dateofbirth_Callback(hObject, eventdata, handles)
% hObject    handle to dateofbirth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dateofbirth as text
%        str2double(get(hObject,'String')) returns contents of dateofbirth as a double


% --- Executes during object creation, after setting all properties.
function dateofbirth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dateofbirth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function religion_Callback(hObject, eventdata, handles)
% hObject    handle to religion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of religion as text
%        str2double(get(hObject,'String')) returns contents of religion as a double


% --- Executes during object creation, after setting all properties.
function religion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to religion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function othernames_Callback(hObject, eventdata, handles)
% hObject    handle to othernames (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of othernames as text
%        str2double(get(hObject,'String')) returns contents of othernames as a double


% --- Executes during object creation, after setting all properties.
function othernames_CreateFcn(hObject, eventdata, handles)
% hObject    handle to othernames (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function schoolname_Callback(hObject, eventdata, handles)
% hObject    handle to schoolname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of schoolname as text
%        str2double(get(hObject,'String')) returns contents of schoolname as a double



% --- Executes during object creation, after setting all properties.
function schoolname_CreateFcn(hObject, eventdata, handles)
% hObject    handle to schoolname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in country.
function country_Callback(hObject, eventdata, handles)
% hObject    handle to country (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns country contents as cell array
%        contents{get(hObject,'Value')} returns selected item from country


% --- Executes during object creation, after setting all properties.
function country_CreateFcn(hObject, eventdata, handles)
% hObject    handle to country (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in state.
function state_Callback(hObject, eventdata, handles)
% hObject    handle to state (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns state contents as cell array
%        contents{get(hObject,'Value')} returns selected item from state
state = get(handles.state, 'string');
statevalue = state{get(handles.state,'value')};
state = load('statelga.mat');
allstatelga = state.text;
lgas = strmatch(statevalue,allstatelga(1,:));
set(handles.localgov,'string',allstatelga(2:end,lgas));

% --- Executes during object creation, after setting all properties.
function state_CreateFcn(hObject, eventdata, handles)
% hObject    handle to state (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in localgov.
function localgov_Callback(hObject, eventdata, handles)
% hObject    handle to localgov (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns localgov contents as cell array
%        contents{get(hObject,'Value')} returns selected item from localgov


% --- Executes during object creation, after setting all properties.
function localgov_CreateFcn(hObject, eventdata, handles)
% hObject    handle to localgov (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in male.
function male_Callback(hObject, eventdata, handles)
% hObject    handle to male (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of male
set(handles.female,'value',0);
set(handles.male,'value',1);

% --- Executes on button press in female.
function female_Callback(hObject, eventdata, handles)
% hObject    handle to female (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of female
set(handles.male,'value',0);
set(handles.female,'value',1)

% --- Executes on button press in next.
function next_Callback(hObject, eventdata, handles)
% hObject    handle to next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
country = get(handles.country, 'string');
countryvalue = get(handles.country,'string');
state = get(handles.state, 'string');
statevalue = state{get(handles.state,'value')};
lga = get(handles.localgov, 'string');
lgavalue = lga{get(handles.localgov,'value')};
schoolname =  get(handles.schoolname,'string');

religion = get(handles.religion,'string');
categorys = get(handles.category, 'string');
categoryvalue = categorys{get(handles.category,'value')};
class = get(handles.class, 'string');
classvalue = class{get(handles.class,'value')};
classvalue = sprintf('%s %s',classvalue,categoryvalue);
months ={'','';'January','01'; 'Febuary','02' ; 'March','03' ; 'April','04' ; 'May','05' ; 'June','06' ; 'July','07' ; 'August','08' ; 'September','09' ;'October','10';'November','11';'December','12'};
mont = get(handles.month, 'string');
monthval = mont{get(handles.month,'value')};
da = get(handles.day, 'string');
day = da{get(handles.day,'value')};
yea = get(handles.year, 'string');
year = yea{get(handles.year,'value')};
matval = find(monthval == string(months(:,1)));
month = string(months(matval,2));
dateofbirth = sprintf('%s/%s/%s',day,month,year);


if strmatch(categoryvalue,'PRIMARY')
    category = '1';
elseif strmatch(categoryvalue,'JUNIOR SECONDARY')
    category = '2';
elseif strmatch(categoryvalue,'SENIOR SECONDARY')
    category = '3';
elseif strmatch(categoryvalue,'ADVANCE')
    category = '4';
end;

if get(handles.male,'Value')==get(handles.male,'Max')
    gender=get(handles.male,'string');
else
    gender=get(handles.female,'string');
end
dr = [pwd '\studentdata.mat'];
lt = load(dr);
dbs = lt.table;
regno = get(handles.regno,'string');
value = find(regno == string(dbs(1:end,13)));

prompt='Enter the student password:';
name='Access permit';
answer=inputdlg(prompt,name);
if ~(strcmp(answer,dbs(value,12)))
    close;
    errordlg('WRONG PAssword');  
end    
    if  ( isempty(countryvalue) | isempty(statevalue) | isempty(lgavalue) ...
             | isempty(schoolname) | isempty(category) || isempty(classvalue) | isempty(dateofbirth) | isempty(religion))
        msgbox('You have not filled in a field');
    else

        ButtonName = questdlg('ARE YOU SURE THE VALUES ARE CORRECT? ', ...
                             '', ...
                             'EDIT', 'OK','EDIT');
       switch ButtonName,
         case 'EDIT',
         case 'OK',
            dr = [pwd '\studentdata.mat'];
            lt = load(dr);
            dbs = lt.table;
            regno = get(handles.regno,'string');
            value = find(regno == string(dbs(1:end,13)));
           
            dbs(value,3) = {gender};
            dbs(value,4) = {countryvalue};
            dbs(value,5) = {statevalue};
            dbs(value,6)= {lgavalue};
            dbs(value,7)={schoolname};
            dbs(value,8) = {category};
            dbs(value,9) = {classvalue};
            dbs(value,10) = {dateofbirth};
            dbs(value,11) = {religion};
            table = dbs;
            save('studentdata.mat','table');
            msgbox('Changed Successfully')

       end % switch

    end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to othernames (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of othernames as text
%        str2double(get(hObject,'String')) returns contents of othernames as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to othernames (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in year.
function year_Callback(hObject, eventdata, handles)
% hObject    handle to year (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns year contents as cell array
%        contents{get(hObject,'Value')} returns selected item from year


% --- Executes during object creation, after setting all properties.
function year_CreateFcn(hObject, eventdata, handles)
% hObject    handle to year (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in month.
function month_Callback(hObject, eventdata, handles)
% hObject    handle to month (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns month contents as cell array
%        contents{get(hObject,'Value')} returns selected item from month
months = {'','';'January','01'; 'Febuary','02' ; 'March','03' ; 'April','04' ; 'May','05' ; 'June','06' ; 'July','07' ; 'August','08' ; 'September','09' ;'October','10';'November','11';'December','12'};
month = get(handles.month, 'string');
monthval = month{get(handles.month,'value')};
feb = {'','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29'};
sajn = {'','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30'};
psajn = {'','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31'};
m30 = {'September','April','November','June'};
if strcmp(monthval,'Febuary')
    set(handles.day,'string',feb)
elseif isempty(find(monthval == string(m30)))
    set(handles.day,'string',psajn)
else
    set(handles.day,'string',sajn)
end


% --- Executes during object creation, after setting all properties.
function month_CreateFcn(hObject, eventdata, handles)
% hObject    handle to month (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in day.
function day_Callback(hObject, eventdata, handles)
% hObject    handle to day (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns day contents as cell array
%        contents{get(hObject,'Value')} returns selected item from day


% --- Executes during object creation, after setting all properties.
function day_CreateFcn(hObject, eventdata, handles)
% hObject    handle to day (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fullname_Callback(hObject, eventdata, handles)
% hObject    handle to fullname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fullname as text
%        str2double(get(hObject,'String')) returns contents of fullname as a double


% --- Executes during object creation, after setting all properties.
function fullname_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fullname (see GCBO)
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


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

dr = [pwd '\studentdata.mat'];
lt = load(dr);
dbs = lt.table;
regno = get(handles.regno,'string');
 value = find(regno == string(dbs(1:end,13)));
firstname =  string(dbs(value,1));
lastname =  string(dbs(value,2));
sex = string(dbs(value,3));
state = string(dbs(value,5));
lga = string(dbs(value,6));
school = string(dbs(value,7));
religion = string(dbs(value,11));
date = char(string(dbs(value,10)));
category = string(dbs(value,8));
class = string(regexp(dbs(value,9),'[0-9]\w*','match'));
fullname = sprintf('%s %s',firstname,lastname);
set(handles.fullname,'string',fullname);
states = load('statelga.mat');
stateval = states.text;
r = find(state == stateval(2:end,2));
set(handles.state,'value',r);

state = get(handles.state, 'string');
statevalue = state{get(handles.state,'value')};
state = load('statelga.mat');
allstatelga = state.text;
lgas = strmatch(statevalue,allstatelga(1,:));
set(handles.localgov,'string',allstatelga(2:end,lgas));
r = find(lga == string(allstatelga(2:end,lgas)));
set(handles.localgov,'value',r);


if strmatch(category,'1')
    set(handles.category, 'value', 1);
elseif strmatch(category,'2')
    set(handles.category, 'value', 2);
elseif strmatch(category,'3')
    set(handles.category, 'value', 3);
elseif strmatch(category,'4')
    set(handles.category, 'value', 4);
end

pry = {'     ';'1';'2';'3';'4';'5';'6'};
jss = {'     ';'1';'2';'3'};
sss = {'     ';'1';'2';'3'};
adv = {'     ';'100';'200';'300';'400';'500'};

category = get(handles.category, 'string');
categoryvalue = category{get(handles.category,'value')};
if strmatch(categoryvalue,'PRIMARY')
    set(handles.class,'string',pry);
    r = find(class == pry);
    set(handles.class,'value',r);
elseif strmatch(categoryvalue,'JUNIOR SECONDARY')
    set(handles.class,'string',jss);
    r = find(class == jss);
    set(handles.class,'value',r);
elseif strmatch(categoryvalue,'SENIOR SECONDARY')
    set(handles.class,'string',sss);
    r = find(class == sss);
    set(handles.class,'value',r);
elseif strmatch(categoryvalue,'ADVANCE')
    set(handles.class,'string',adv);
    r = find(class == adv);
    set(handles.class,'value',r);
end
set(handles.schoolname,'string',school);
 
set(handles.religion,'string',religion);

len = str2num(datestr(now,10)) - 1980;
fyear = 1980;
year = zeros(len,1);
for i = 1:length(year)
    fyear = fyear + 1;
    year(i) = fyear;
end


year = ['' ; string(year)];

r = find(date(7:end) == year);
set(handles.year,'value',r);

months ={'','';'January','01'; 'Febuary','02' ; 'March','03' ; 'April','04' ; 'May','05' ; 'June','06' ; 'July','07' ; 'August','08' ; 'September','09' ;'October','10';'November','11';'December','12'};

matval = find(date(4:5) == string(months(:,2)));
set(handles.month,'value',matval);


month = get(handles.month, 'string');
monthval = month{get(handles.month,'value')};
feb = {'','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29'};
sajn = {'','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30'};
psajn = {'','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31'};
m30 = {'September','April','November','June'};
if strcmp(monthval,'Febuary')
    set(handles.day,'string',feb)
    r = find(date(1:2) == string(feb));
    set(handles.day,'value',r);
elseif isempty(find(monthval == string(m30)))
    set(handles.day,'string',psajn)
    r = find(date(1:2) == string(psajn));
    set(handles.day,'value',r);
else
    set(handles.day,'string',sajn)
    r = find(date(1:2) == string(sajn));
    set(handles.day,'value',r);
end


if strcmp(monthval,'Male')
    set(handles.female,'value',0);
    set(handles.male,'value',1);
else
    set(handles.female,'value',1);
    set(handles.male,'value',0);
end
 


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
adminprofilepage;
