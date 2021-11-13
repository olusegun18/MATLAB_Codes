function varargout = Timetablegenerator(varargin)
% TIMETABLEGENERATOR MATLAB code for Timetablegenerator.fig
%      TIMETABLEGENERATOR, by itself, creates a new TIMETABLEGENERATOR or raises the existing
%      singleton*.
%
%      H = TIMETABLEGENERATOR returns the handle to a new TIMETABLEGENERATOR or the handle to
%      the existing singleton*.
%
%      TIMETABLEGENERATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TIMETABLEGENERATOR.M with the given input arguments.
%
%      TIMETABLEGENERATOR('Property','Value',...) creates a new TIMETABLEGENERATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Timetablegenerator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Timetablegenerator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Timetablegenerator

% Last Modified by GUIDE v2.5 19-Feb-2016 02:26:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Timetablegenerator_OpeningFcn, ...
                   'gui_OutputFcn',  @Timetablegenerator_OutputFcn, ...
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


% --- Executes just before Timetablegenerator is made visible.
function Timetablegenerator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Timetablegenerator (see VARARGIN)

% Choose default command line output for Timetablegenerator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Timetablegenerator wait for user response (see UIRESUME)
% uiwait(handles.figure1);
If=imread('oau.jpg');
io=imread('oauoba.jpg');
il=imread('ft.jpg');
iu=imread('senate.jpg');
set(handles.pushbutton19,'CData',If)
set(handles.pushbutton29,'CData',io)
set(handles.pushbutton30,'CData',il)
set(handles.pushbutton27,'CData',iu)


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure(oau_mailbox)
close(Timetablegenerator)


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h=figure(oau_mailbox)
set(0,'CurrentFigure',h)
ss=str2double(get(handles.edit1,'String'))
js=get(handles.edit4,'String')
gd={'ID No','Comment'}
df={ss js}
set(handles.uitable1,'data',df,'Columnname',gd)


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cf=get(handles.edit4,'String')
if isempty(cf)
    msgbox('Enter your Identification Number first','Error')
else
set(handles.edit1,'enable','on')
set(handles.edit1,'string','')
end

% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% h = waitbar(0,'Please wait...');
% steps = 1000;
% for step = 1:steps
%     % computations take place here
%     waitbar(step / steps)
% end
% close(h) 
% v=msgbox('Pictures are under processing','Pls,wait')
for g=1:Inf
ima=imread('waterfall_21.jpg');
imb=imread('wedding_4_bg_103004.jpg');
imc=imread('23.jpg');
imd=imread('22.jpg');
ime=imread('waterfall_17.jpg');
imf=imread('mountainstream_800.jpg');
img=imread('19.jpg');
imh=imread('11(0).jpg');
imi=imread('8.jpg');
imj=imread('waterfall_8.jpg');
imk=imread('Landscape005.jpg');
iml=imread('Landscape003.jpg');
imm=imread('island.jpg');
imn=imread('Genoa, Italy.jpg');
imo=imread('forest-ground.jpg');
imp=imread('flower_21.jpg');
imq=imread('fall.jpg');
imr=imread('dessert.jpg');
ims=imread('debelkova-indonesia.JPG');
imt=imread('Colossium, Rome.jpg');
imu=imread('02451_117.jpg');
imv=imread('356.jpg');
imw=imread('234.jpg');
imx=imread('34.jpg');
imy=imread('29.jpg');
imz=imread('waterfall_1.jpg');
imaa=imread('towns_313.jpg');
imab=imread('red-flowers.jpg');
imac=imread('protea_1200.jpg');
imad=imread('nightbeach.jpg');
imae=imread('nature_853.jpg');
imaf=imread('My home_001.jpg');
imag=imread('Landscape0076.jpg');
imah=imread('Landscape029.jpg');
imai=imread('Landscape011.jpg');
imal=imread('Landscape005.jpg');
imam=imread('Landscape003.jpg');
iman=imread('flower_50.jpg');
imao=imread('flower_21.jpg');
imap=imread('backgroundland13.jpg');
imaq=imread('backgroundflowers15.jpg');
imar=imread('2436.jpg');
imas=imread('1498.jpg');
imat=imread('186(0).jpg');
imau=imread('147.jpg');
imav=imread('60.jpg');
imax=imread('28(0).jpg');
imay=imread('10 (2).jpg');
imaz=imread('9 (2).jpg');
imba=imread('7(0).jpg');
imbb=imread('6.jpg');
imbc=imread('6(0).jpg');
imbd=imread('4.jpg');
imbe=imread('4 (2).jpg');

set(handles.pushbutton11,'CData',imc)
pause(5)
set(handles.pushbutton11,'CData',ima)
pause(5)
set(handles.pushbutton11,'CData',imd)
pause(5)
set(handles.pushbutton11,'CData',ime)
pause(5)
set(handles.pushbutton11,'CData',img)
pause(5)
set(handles.pushbutton11,'CData',imh)
pause(5)
set(handles.pushbutton11,'CData',imf)
pause(5)
set(handles.pushbutton11,'CData',imb)
pause(5)
set(handles.pushbutton11,'CData',imj)
pause(5)
set(handles.pushbutton11,'CData',imk)
pause(5)
set(handles.pushbutton11,'CData',imm)
pause(5)
set(handles.pushbutton11,'CData',iml)
pause(5)
set(handles.pushbutton11,'CData',imi)
pause(5)
set(handles.pushbutton11,'CData',imp)
pause(5)
set(handles.pushbutton11,'CData',imn)
pause(5)
set(handles.pushbutton11,'CData',imr)
pause(5)
set(handles.pushbutton11,'CData',ims)
pause(5)
set(handles.pushbutton11,'CData',imo)
pause(5)
set(handles.pushbutton11,'CData',imq)
pause(5)
set(handles.pushbutton11,'CData',imv)
pause(5)
set(handles.pushbutton11,'CData',imt)
pause(5)
set(handles.pushbutton11,'CData',imw)
pause(5)
set(handles.pushbutton11,'CData',imx)
pause(5)
set(handles.pushbutton11,'CData',imu)
pause(5)
set(handles.pushbutton11,'CData',imy)
pause(5)
set(handles.pushbutton11,'CData',imz)
pause(5)
set(handles.pushbutton11,'CData',imaa)
pause(5)
set(handles.pushbutton11,'CData',imab)
pause(5)
set(handles.pushbutton11,'CData',imac)
pause(5)
set(handles.pushbutton11,'CData',imad)
pause(5)
set(handles.pushbutton11,'CData',imae)
pause(5)
set(handles.pushbutton11,'CData',imaf)
pause(5)
set(handles.pushbutton11,'CData',imag)
pause(5)
set(handles.pushbutton11,'CData',imah)
pause(5)
set(handles.pushbutton11,'CData',imai)
pause(5)
set(handles.pushbutton11,'CData',imal)
pause(5)
set(handles.pushbutton11,'CData',imam)
pause(5)
set(handles.pushbutton11,'CData',iman)
pause(5)
set(handles.pushbutton11,'CData',imao)
pause(5)
set(handles.pushbutton11,'CData',imap)
pause(5)
set(handles.pushbutton11,'CData',imaq)
pause(5)
set(handles.pushbutton11,'CData',imar)
pause(5)
set(handles.pushbutton11,'CData',imas)
pause(5)
set(handles.pushbutton11,'CData',imat)
pause(5)
set(handles.pushbutton11,'CData',imau)
pause(5)
set(handles.pushbutton11,'CData',imav)
pause(5)
set(handles.pushbutton11,'CData',imax)
pause(5)
set(handles.pushbutton11,'CData',imay)
pause(5)
set(handles.pushbutton11,'CData',imaz)
pause(5)
set(handles.pushbutton11,'CData',imba)
pause(5)
set(handles.pushbutton11,'CData',imbb)
pause(5)
set(handles.pushbutton11,'CData',imbc)
pause(5)
set(handles.pushbutton11,'CData',imbd)
pause(5)
set(handles.pushbutton11,'CData',imbe)
pause(5)
end
% close(v)

% --- Outputs from this function are returned to the command line.
function varargout = Timetablegenerator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ID=imread('oaulogo.png')
set(handles.pushbutton28,'CData',ID)
set(handles.text1,'visible','on')
set(handles.text2,'visible','on')
set(handles.text3,'visible','on')
set(handles.text4,'visible','on')
set(handles.text5,'visible','on')
set(handles.text30,'visible','on')
set(handles.edit4,'visible','on')
set(handles.edit1,'visible','on')
set(handles.pushbutton17,'visible','on')
set(handles.pushbutton20,'visible','on')
set(handles.pushbutton18,'visible','on')
set(handles.pushbutton1,'visible','on')
set(handles.pushbutton2,'visible','on')
set(handles.pushbutton4,'visible','on')
set(handles.pushbutton5,'visible','on')
set(handles.pushbutton6,'visible','on')
set(handles.pushbutton7,'visible','on')
set(handles.pushbutton9,'visible','on')
set(handles.pushbutton11,'visible','on')
set(handles.pushbutton28,'visible','on')
set(handles.pushbutton30,'visible','off')
pause(2)
set(handles.edit3,'visible','on')
pause(2)
set(handles.text6,'visible','on')
pause(2)
set(handles.text7,'visible','on')
pause(2)
set(handles.text8,'visible','on')
pause(2)
set(handles.text9,'visible','on')
pause(2)
set(handles.text12,'visible','on')
pause(2)
set(handles.text11,'visible','on')
pause(2)
set(handles.text10,'visible','on')
pause(2)
set(handles.text13,'visible','on')
pause(2)
set(handles.text14,'visible','on')
pause(2)
set(handles.text15,'visible','on')
pause(2)
set(handles.text17,'visible','on')
pause(2)
set(handles.text18,'visible','on')
pause(2)
set(handles.text16,'visible','on')
pause(2)
set(handles.text19,'visible','on')
pause(2)
set(handles.text20,'visible','on')
pause(2)
set(handles.text21,'visible','on')
pause(2)
set(handles.text22,'visible','on')
pause(2)
set(handles.text23,'visible','on')
pause(2)
set(handles.text24,'visible','on')
pause(2)
set(handles.text25,'visible','on')
pause(2)
set(handles.text26,'visible','on')
pause(2)
set(handles.text27,'visible','on')
pause(2)
set(handles.text28,'visible','on')
pause(1)
ih=imread('oaus (2).jpg')
set(handles.edit7,'visible','on')
set(handles.edit5,'visible','on')
set(handles.pushbutton31,'visible','on')
set(handles.pushbutton31,'CData',ih)


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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


% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in edit5.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in edit7.
function pushbutton33_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton17.
function pushbutton34_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton18.
function pushbutton35_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
