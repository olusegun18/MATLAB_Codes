function varargout = register(varargin)
% REGISTER MATLAB code for register.fig
%      REGISTER, by itself, creates a new REGISTER or raises the existing
%      singleton*.
%
%      H = REGISTER returns the handle to a new REGISTER or the handle to
%      the existing singleton*.
%
%      REGISTER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in REGISTER.M with the given input arguments.
%
%      REGISTER('Property','Value',...) creates a new REGISTER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before register_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to register_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help register

% Last Modified by GUIDE v2.5 07-Dec-2020 16:25:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @register_OpeningFcn, ...
                   'gui_OutputFcn',  @register_OutputFcn, ...
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


% --- Executes just before register is made visible.
function register_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)
% varargin   command line arguments to register (see VARARGIN)

% Choose default command line output for register
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes register wait for user response (see UIRESUME)
% uiwait(handles.figure1);

h = handles.figure1
movegui(h,'center')




% load sessions.mat
load(['C:/King''s Delight Records' '/' 'sessions.mat']);
fill= [{'Select Session'}; sessions(3:end,1)]
set(handles.session,'String',fill)
%             app.session.Items = sessions(:,1)
%             app.entsession.Items = sessions(:,1)
%             app.sessiontype.Items = sessions(:,1)


% --- Outputs from this function are returned to the command line.
function varargout = register_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in c1.
function c1_Callback(hObject, eventdata, handles)
% hObject    handle to c1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c1


% --- Executes on button press in c4.
function c4_Callback(hObject, eventdata, handles)
% hObject    handle to c4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c4


% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)


% --- Executes on selection change in session.
function session_Callback(hObject, eventdata, handles)
% hObject    handle to session (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns session contents as cell array
%        contents{get(hObject,'Value')} returns selected item from session


% --- Executes during object creation, after setting all properties.
function session_CreateFcn(hObject, eventdata, handles)
% hObject    handle to session (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function surname_Callback(hObject, eventdata, handles)
% hObject    handle to surname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

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



function firstname_Callback(hObject, eventdata, handles)
% hObject    handle to firstname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

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



function othername_Callback(hObject, eventdata, handles)
% hObject    handle to othername (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hints: get(hObject,'String') returns contents of othername as text
%        str2double(get(hObject,'String')) returns contents of othername as a double


% --- Executes during object creation, after setting all properties.
function othername_CreateFcn(hObject, eventdata, handles)
% hObject    handle to othername (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in catpop.
function catpop_Callback(hObject, eventdata, handles)
% hObject    handle to catpop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns catpop contents as cell array
%        contents{get(hObject,'Value')} returns selected item from catpop
global value
 idx = get(handles.catpop,'Value')
 items = get(handles.catpop,'String')
 value = items{idx}
            if strcmp('NURSERY AND PRIMARY',value)
                
%                 load('n&p.mat')
                load(['C:/King''s Delight Records' '/' 'n&p.mat']);
%                 junior = jss(:,1);
%                 app.subject.Items = junior;
                for i = 1:17
                    j = string(i)
                    jj = strcat('c',j)
                    set(handles.(jj),'Visible','On')
                    set(handles.(jj),'Value',1)
                    set(handles.(jj),'String',np(i,1))
                end
          
                file = [{'NURSERY 1'},{'NURSERY 2'},{'NURSERY 3'},{'PRIMARY 1'},{'PRIMARY 2'},{'PRIMARY 3'},...
                    {'PRIMARY 4'},{'PRIMARY 5'}];
                set(handles.classpop,'String',file)
                set(handles.uipanel2,'Visible','Off')
                set(handles.c18,'Visible','Off')
                
            elseif strcmp('JUNIOR',value)
                
%                 load('jss.mat')
                load(['C:/King''s Delight Records' '/' 'jss.mat']);
%                 junior = jss(:,1);
%                 app.subject.Items = junior;
                for i = 1:17
                    j = string(i)
                    jj = strcat('c',j)
                    set(handles.(jj),'Visible','On')
                    set(handles.(jj),'Value',1)
                    set(handles.c16,'Value',0)
                    set(handles.c17,'Value',0)
                    set(handles.(jj),'String',jss(i,1))
                end
                
                
                
                
                file = [{'JSS1'},{'JSS2'},{'JSS3'}];
                set(handles.classpop,'String',file)
                set(handles.uipanel2,'Visible','Off')
                set(handles.c18,'Visible','Off')
               
                
            elseif strcmp('SENIOR',value)
                
%                 load('sss.mat');
                load(['C:/King''s Delight Records' '/' 'sss.mat']);
           
                for i = 1:18
                    j = string(i)
                    jj = strcat('c',j)
                    set(handles.(jj),'Visible','On')
                    set(handles.(jj),'Value',0)
                    set(handles.c1,'Value',1)
                    set(handles.c2,'Value',1)
                    set(handles.c3,'Value',1)
                    set(handles.c4,'Value',1)
                    set(handles.c5,'Value',1)
                    set(handles.c15,'Value',1)
                    set(handles.(jj),'String',sss(i,1))
                end
                
                
                file = [{'SSS1'},{'SSS2'},{'SSS3'}];
                set(handles.classpop,'String',file);
                set(handles.c19,'Value',1)
                set(handles.uipanel2,'Visible','On')
                
                
            else
                file = [{'PRY1'},{'PRY2'},{'PRY3'},{'PRY4'},{'PRY5'},{'PRY6'}];
                set(handles.classpop,'String',file);
                set(handles.uipanel2,'Visible','Off')
            end



% --- Executes during object creation, after setting all properties.
function catpop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to catpop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in c7.
function c7_Callback(hObject, eventdata, handles)
% hObject    handle to c7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c7


% --- Executes on button press in c10.
function c10_Callback(hObject, eventdata, handles)
% hObject    handle to c10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c10


% --- Executes on button press in c2.
function c2_Callback(hObject, eventdata, handles)
% hObject    handle to c2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c2


% --- Executes on button press in c3.
function c3_Callback(hObject, eventdata, handles)
% hObject    handle to c3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c3


% --- Executes on button press in c5.
function c5_Callback(hObject, eventdata, handles)
% hObject    handle to c5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c5


% --- Executes on button press in c6.
function c6_Callback(hObject, eventdata, handles)
% hObject    handle to c6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c6


% --- Executes on button press in c8.
function c8_Callback(hObject, eventdata, handles)
% hObject    handle to c8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c8


% --- Executes on button press in c9.
function c9_Callback(hObject, eventdata, handles)
% hObject    handle to c9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c9


% --- Executes on button press in c13.
function c13_Callback(hObject, eventdata, handles)
% hObject    handle to c13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c13


% --- Executes on button press in c11.
function c11_Callback(hObject, eventdata, handles)
% hObject    handle to c11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c11


% --- Executes on button press in c14.
function c14_Callback(hObject, eventdata, handles)
% hObject    handle to c14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c14


% --- Executes on button press in c15.
function c15_Callback(hObject, eventdata, handles)
% hObject    handle to c15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c15


% --- Executes on button press in c12.
function c12_Callback(hObject, eventdata, handles)
% hObject    handle to c12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c12


% --- Executes on button press in c16.
function c16_Callback(hObject, eventdata, handles)
% hObject    handle to c16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c16
global value
if strcmp(value, 'JUNIOR')
set(handles.c17,'Value',0)
end

% --- Executes on button press in c17.
function c17_Callback(hObject, eventdata, handles)
% hObject    handle to c17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c17
global value
if strcmp(value,'JUNIOR')
set(handles.c16,'Value',0)

elseif strcmp(value,'SENIOR')
set(handles.c18,'Value',0)
end



% --- Executes on button press in c18.
function c18_Callback(hObject, eventdata, handles)
% hObject    handle to c18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c18

set(handles.c17,'Value',0)


% --- Executes on selection change in classpop.
function classpop_Callback(hObject, eventdata, handles)
% hObject    handle to classpop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns classpop contents as cell array
%        contents{get(hObject,'Value')} returns selected item from classpop


% --- Executes during object creation, after setting all properties.
function classpop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to classpop (see GCBO)
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
% handles    structure with handles and user c20 (see GUIDATA)
list = []
surn = get(handles.surname,'String');
first = get(handles.firstname,'String');
othern = get(handles.othername,'String');


ses = get(handles.session,'String');
sessv = get(handles.session,'Value');
sessval = ses{sessv};
ct = get(handles.catpop,'String');
catv = get(handles.catpop,'Value');
cat = ct{catv};
clss = get(handles.classpop,'String');
classv = get(handles.classpop,'Value');
classs = clss{classv};
crk = get(handles.c16,'Value')
irk = get(handles.c17,'Value')


if strcmp(sessval, 'Select Session') | isempty(sessval)
    msgbox('You must pick a session')
elseif isempty(surn) | isempty(first) | isempty(othern) | strcmp(cat,'Select Category')
       msgbox('Enter all inputs','Missing Inputs','error')
elseif crk == 0 & irk == 0
    msgbox('You must pick between CRK and IRK')
else
for i = 1:26
    j = string(i);
   jj = strcat('c',j);
   val = get(handles.(jj),'Value');
   if val == 1
   bjj = get(handles.(jj),'String');
   list = [list bjj];
   end
end
name = [surn,' ',first,' ',othern];
name = upper(name);

sessv = regexp(sessval, '/*','split');
sessva = [sessv{1} '_' sessv{2}];



lalpha = {'a','b','c','d','e','f','g','h','i','j',...
                    'k','l','m','n','o','p','q','r','s','t','u',...
                    'v','w','x','y','z'};
ualpha = upper(lalpha);
num = string(randperm(9,3));
lnumo = randperm(26,2);  

if strcmp(cat,'NURSERY AND PRIMARY')
%    load('database.mat');
   load(['C:/King''s Delight Records' '/' 'database.mat']);
   dr = string(dbase(:,1));
   fgi = find(dr== upper(name));
      if isempty(fgi)
         reg_no = strcat('KDRC','/',sessv{1},'/','0',num(1),num(2),num(3),ualpha(lnumo(1)),...
         ualpha(lnumo(2)));
      else
         reg_no = dbase{fgi,2};
      end

else
%     load('database.mat');
    load(['C:/King''s Delight Records' '/' 'database.mat']);
    dr = string(dbase(:,1));
    fgi = find(dr== upper(name));
      if isempty(fgi)
         reg_no = strcat('KDRC','/',sessv{1},'/','0',num(1),num(2),num(3),ualpha(lnumo(1)),...
         ualpha(lnumo(2)));
      else
         reg_no = dbase{fgi,2};
      end

end

lister = [{name},{reg_no},{sessva},{cat},{classs}];

setappdata(0,'lister',lister);
setappdata(0,'list',list);


setappdata(0, 'fig', handles.figure1);
set(handles.figure1,'Visible','Off');
confirm
end

% --- Executes on button press in c19.
function c19_Callback(hObject, eventdata, handles)
% hObject    handle to c19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c19
set(handles.c20,'Value',0);
set(handles.c21,'Value',0);
set(handles.c22,'Value',0);
set(handles.c23,'Value',0);
set(handles.c24,'Value',0);
set(handles.c25,'Value',0);
set(handles.c26,'Value',0);

% --- Executes on button press in c20.
function c20_Callback(hObject, eventdata, handles)
% hObject    handle to c20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c20
set(handles.c19,'Value',0);
set(handles.c21,'Value',0);
set(handles.c22,'Value',0);
set(handles.c23,'Value',0);
set(handles.c24,'Value',0);
set(handles.c25,'Value',0);
set(handles.c26,'Value',0);

% --- Executes on button press in c21.
function c21_Callback(hObject, eventdata, handles)
% hObject    handle to c21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c21
set(handles.c19,'Value',0);
set(handles.c20,'Value',0);
set(handles.c22,'Value',0);
set(handles.c23,'Value',0);
set(handles.c24,'Value',0);
set(handles.c25,'Value',0);
set(handles.c26,'Value',0);

% --- Executes on button press in c22.
function c22_Callback(hObject, eventdata, handles)
% hObject    handle to c22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c22
set(handles.c19,'Value',0);
set(handles.c20,'Value',0);
set(handles.c21,'Value',0);
set(handles.c23,'Value',0);
set(handles.c24,'Value',0);
set(handles.c25,'Value',0);
set(handles.c26,'Value',0);


% --- Executes on button press in c23.
function c23_Callback(hObject, eventdata, handles)
% hObject    handle to c23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c23
set(handles.c19,'Value',0);
set(handles.c20,'Value',0);
set(handles.c22,'Value',0);
set(handles.c21,'Value',0);
set(handles.c24,'Value',0);
set(handles.c25,'Value',0);
set(handles.c26,'Value',0);


% --- Executes on button press in c24.
function c24_Callback(hObject, eventdata, handles)
% hObject    handle to c24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c24
set(handles.c19,'Value',0);
set(handles.c20,'Value',0);
set(handles.c22,'Value',0);
set(handles.c23,'Value',0);
set(handles.c21,'Value',0);
set(handles.c25,'Value',0);
set(handles.c26,'Value',0);

% --- Executes on button press in c25.
function c25_Callback(hObject, eventdata, handles)
% hObject    handle to c25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c25
set(handles.c19,'Value',0);
set(handles.c20,'Value',0);
set(handles.c22,'Value',0);
set(handles.c23,'Value',0);
set(handles.c24,'Value',0);
set(handles.c21,'Value',0);
set(handles.c26,'Value',0);


% --- Executes on button press in c26.
function c26_Callback(hObject, eventdata, handles)
% hObject    handle to c26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user c20 (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c26
set(handles.c19,'Value',0);
set(handles.c20,'Value',0);
set(handles.c22,'Value',0);
set(handles.c23,'Value',0);
set(handles.c24,'Value',0);
set(handles.c25,'Value',0);
set(handles.c21,'Value',0);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
studentregister
