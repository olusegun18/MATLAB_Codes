function varargout = oau_mailbox(varargin)
% OAU_MAILBOX MATLAB code for oau_mailbox.fig
%      OAU_MAILBOX, by itself, creates a new OAU_MAILBOX or raises the existing
%      singleton*.
%
%      H = OAU_MAILBOX returns the handle to a new OAU_MAILBOX or the handle to
%      the existing singleton*.
%
%      OAU_MAILBOX('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OAU_MAILBOX.M with the given input arguments.
%
%      OAU_MAILBOX('Property','Value',...) creates a new OAU_MAILBOX or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before oau_mailbox_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to oau_mailbox_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help oau_mailbox

% Last Modified by GUIDE v2.5 19-Feb-2016 15:27:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @oau_mailbox_OpeningFcn, ...
                   'gui_OutputFcn',  @oau_mailbox_OutputFcn, ...
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


% --- Executes just before oau_mailbox is made visible.
function oau_mailbox_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to oau_mailbox (see VARARGIN)

% Choose default command line output for oau_mailbox
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes oau_mailbox wait for user response (see UIRESUME)
% uiwait(handles.figure1);
% for b=1:Inf    
% f=questdlg('Do you want to open the School Portal and access this','Invalid Option','Yes')
%     switch f
%         case 'Yes'
%            figure(Timetablegenerator)
%            clf
%         case 'No'
%             close(f)
%             clf
%         case 'Cancel'
%            w= msgbox('You have decided to stop this operation','Window File Error')
%            pause(2)
%            close(w)
%            close(f)
%            clf
%     end
%     clf(oau_mailbox)
%         end

% --- Outputs from this function are returned to the command line.
function varargout = oau_mailbox_OutputFcn(hObject, eventdata, handles) 
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
figure(Timetablegenerator)
close(oau_mailbox)



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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
for j=1:1
mt={'ID No','Comment'}
ms=get(handles.edit2,'String')
tb=str2double(get(handles.edit3,'String'))
% fs={tb ms}
% set(handles.uitable1,'data',fs,'Columnname',mt)
table(j,1:2) = {tb ms}
set(handles.uitable1,'data',table,'Columnname',mt)
end


function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


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


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit2,'enable','inactive')
bn=str2double(get(handles.edit3,'String'))
if isempty(bn) | isnan(bn)
    errordlg('Pls,input a valid Identification Number','ERROR!')
else
    set(handles.edit2,'String','')
    set(handles.edit2,'enable','on')
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ni={'ID No','Comment'} 
fm=str2double(get(handles.edit3,'String'))
sd=get(handles.edit2,'String')
gett=get(handles.uitable1,'data')
if ~isempty(gett(1,:))

table={fm sd}
tbe=[gett;table]

set(handles.uitable1,'data',tbe,'Columnname',ni)
end

% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
set(handles.radiobutton1,'value',1)
set(handles.radiobutton2,'value',0)
set(handles.uitable1,'visible','on')
set(handles.edit2,'visible','on')
set(handles.edit3,'visible','on')
set(handles.text3,'visible','on')
set(handles.text2,'visible','on')
set(handles.pushbutton2,'visible','on')
set(handles.pushbutton3,'visible','on')
set(handles.pushbutton4,'visible','on')
set(handles.pushbutton5,'visible','off')
set(handles.pushbutton6,'visible','on')

% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.radiobutton2,'value',1)
set(handles.radiobutton1,'value',0)
set(handles.uitable1,'visible','off')
set(handles.edit2,'visible','off')
set(handles.edit3,'visible','on')
set(handles.text3,'visible','on')
set(handles.text2,'visible','off')
set(handles.pushbutton2,'visible','off')
set(handles.pushbutton3,'visible','off')
set(handles.pushbutton4,'visible','off')
set(handles.pushbutton5,'visible','on')
set(handles.pushbutton6,'visible','off')

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('COMMENT_FILE.mat')
sw=cell2mat(dpr(:,1))
fdp=str2double(get(handles.edit3,'String'))
[row col]=find(fdp==sw)
data=dpr(row,:)
dse=data(1,2)
set(handles.edit2,'visible','on')
set(handles.edit2,'String',dse)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
w=questdlg('Are you sure you want to save this table','SAVE FILE','Cancel')
switch w
case 'Yes'
dpr=get(handles.uitable1,'data')
v.dpr=dpr
save('COMMENT_FILE','-struct','v')
cvsd=msgbox('File Saved')
pause(1)
close(cvsd)
    case 'No'
%         close(w)
        msgbox('File Save Cancelled')
        set(handles.uitable1,'data',{'' ''})
    case 'Cancel'
%         close(w)
end
