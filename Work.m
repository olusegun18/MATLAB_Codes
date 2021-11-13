function varargout = Work(varargin)
% WORK MATLAB code for Work.fig
%      WORK, by itself, creates a new WORK or raises the existing
%      singleton*.
%
%      H = WORK returns the handle to a new WORK or the handle to
%      the existing singleton*.
%
%      WORK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WORK.M with the given input arguments.
%
%      WORK('Property','Value',...) creates a new WORK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Work_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Work_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Work

% Last Modified by GUIDE v2.5 17-Apr-2016 17:20:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Work_OpeningFcn, ...
                   'gui_OutputFcn',  @Work_OutputFcn, ...
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


% --- Executes just before Work is made visible.
function Work_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Work (see VARARGIN)

% Choose default command line output for Work
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Work wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Work_OutputFcn(hObject, eventdata, handles) 
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
Train1=str2double(get(handles.pic1,'String'));
Train2=str2double(get(handles.pic2,'String'));
for  b=1:Train1
    for d=1:Train2
dd=imread(strcat(pwd,'\Pics\TP\',num2str(b),',',num2str(d)),'jpg');
%gg=imread(strcat(pwd,'\Pics\TP\',num2str(d),'.jpg'));
imshow(dd)
%img=getimage(handles.axes1)
%axes(handles.axes1)
gg=rgb2gray(dd);
pause(1)
imshow(gg);
set(handles.uitable1,'data',gg);
pause(1)
mg=get(handles.uitable1,'data');
jh=mg(70:100,70:100);
kj=sum(jh);
ll=mean(kj)
    end
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
vj=str2double(get(handles.test,'String'))
if vj>8
    msgbox('Only 8 Pictures are available','Error')
elseif vj<1
    msgbox('Check your Input','Input Error')
elseif isnan(vj) | isempty(vj) | (vj==0)
    msgbox('Pls, Give a valid input','Error')
else
vj=get(handles.test,'string')
kkg=imread(strcat(pwd,'\Pics\TST\',vj,'.jpg'));
imshow(kkg)
hy=rgb2gray(kkg);
set(handles.uitable1,'data',hy)
bgi=get(handles.uitable1,'data');
jow=bgi(70:100,70:100);
jik=sum(jow);
jok=mean(jik)
end

function pic1_Callback(hObject, eventdata, handles)
% hObject    handle to pic1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pic1 as text
%        str2double(get(hObject,'String')) returns contents of pic1 as a double


% --- Executes during object creation, after setting all properties.
function pic1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pic1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pic2_Callback(hObject, eventdata, handles)
% hObject    handle to pic2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pic2 as text
%        str2double(get(hObject,'String')) returns contents of pic2 as a double


% --- Executes during object creation, after setting all properties.
function pic2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pic2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function test_Callback(hObject, eventdata, handles)
% hObject    handle to test (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of test as text
%        str2double(get(hObject,'String')) returns contents of test as a double


% --- Executes during object creation, after setting all properties.
function test_CreateFcn(hObject, eventdata, handles)
% hObject    handle to test (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
