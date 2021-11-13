function varargout = TT(varargin)
% TT MATLAB code for TT.fig
%      TT, by itself, creates a new TT or raises the existing
%      singleton*.
%
%      H = TT returns the handle to a new TT or the handle to
%      the existing singleton*.
%
%      TT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TT.M with the given input arguments.
%
%      TT('Property','Value',...) creates a new TT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TT_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TT_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TT

% Last Modified by GUIDE v2.5 18-Feb-2016 22:23:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TT_OpeningFcn, ...
                   'gui_OutputFcn',  @TT_OutputFcn, ...
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


% --- Executes just before TT is made visible.
function TT_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TT (see VARARGIN)

% Choose default command line output for TT
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TT wait for user response (see UIRESUME)
% uiwait(handles.figure1);
% c={'A','a','B','b','C','c','D','d'}
cx={'A','t','O','1','s','0','p','P','1','n','5','9','0','546','H','m','0','o','O','r','E','Z','3','7'}
se=randi([1 24],1,8)
bb=se(1,1)
cc=se(1,2)
dd=se(1,3)
ee=se(1,4)
ff=se(1,5)
gg=se(1,8)
hh=se(1,7)
ii=se(1,6)
vc=cx(1,bb)
xc=cx(1,cc)
dc=cx(1,dd)
sc=cx(1,ee)
zc=cx(1,ff)
wc=cx(1,gg)
nc=cx(1,hh)
mc=cx(1,ii)
vd={mat2str(vc) mat2str(xc) mat2str(dc) mat2str(sc) mat2str(zc) mat2str(wc) mat2str(nc) mat2str(mc)}
% ml=reshape(vc,5,1)
% sw=['A','t','1','s','#','+','546','H','m','/' num2str(se)]
set(handles.text1,'String',vd)

% --- Outputs from this function are returned to the command line.
function varargout = TT_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tt=get(handles.text1,'String')
fr=get(handles.edit1,'string')
if strcmp(tt, fr)
m=msgbox('Access Granted!','CONGRATULATIONS')
pause(1)
close(m)
figure(Timetablegenerator')
close(TT) 
else
    errordlg('Access Denied,Try Again','Input Error')
end



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(TT)
