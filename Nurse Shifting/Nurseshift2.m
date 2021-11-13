function varargout = Nurseshift2(varargin)
% NURSESHIFT2 MATLAB code for Nurseshift2.fig
%      NURSESHIFT2, by itself, creates a new NURSESHIFT2 or raises the existing
%      singleton*.
%
%      H = NURSESHIFT2 returns the handle to a new NURSESHIFT2 or the handle to
%      the existing singleton*.
%
%      NURSESHIFT2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NURSESHIFT2.M with the given input arguments.
%
%      NURSESHIFT2('Property','Value',...) creates a new NURSESHIFT2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Nurseshift2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Nurseshift2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Nurseshift2

% Last Modified by GUIDE v2.5 20-Feb-2016 09:26:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Nurseshift2_OpeningFcn, ...
                   'gui_OutputFcn',  @Nurseshift2_OutputFcn, ...
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


% --- Executes just before Nurseshift2 is made visible.
function Nurseshift2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Nurseshift2 (see VARARGIN)

% Choose default command line output for Nurseshift2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Nurseshift2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Nurseshift2_OutputFcn(hObject, eventdata, handles) 
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
t=get(handles.noc,'String')
n=str2double(t)
z={'M','AL','O'}
dsd={'A','N'}
% n=n-1
if isempty(n) | isnan(n) |(n=='0')
    c=errordlg('Pls, give a valid input','Input Error');
    elseif (n<5)
    t=msgbox('No of Courses must be more than or equal to 5','Input Error')
else
%     gettable=get(handles.uitable1,'data');
for t=1:1
for p=1:n
ll = ['Nurse',num2str(p)]
table(p+1,1) = {ll};
set(handles.uitable1,'data',table)
end
for m=1:53
gettable=get(handles.uitable1,'data')
mm=gettable(1,:)
mmlen=length(mm)
if    (m==1)
%             data = {'Oyekale', 50; 'Isaac', 60; 'Dammy', 80}
            rname = {'Friday';'Saturday'}
            gettable(1,2:3) = rname
%             gettable(3:5,1:2) = data
            set(handles.uitable1,'data',gettable) 
else
            k = mmlen+1
            l = mmlen+7
%             kl = mmlen+3
%             ll = mmlen+5
%             data = {'Oyekale', 50; 'Isaac', 60; 'Dammy', 80}
            rname = {'Sunday';'Monday';'Tuesday';'Wednesday';'Thursday';'Friday';'Saturday'}
            gettable(1,k:l) = rname
%             gettable(kl:ll,1:2) = data
            set(handles.uitable1,'data',gettable)
end
end
end
 end



function noc_Callback(hObject, eventdata, handles)
% hObject    handle to noc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of noc as text
%        str2double(get(hObject,'String')) returns contents of noc as a double


% --- Executes during object creation, after setting all properties.
function noc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to noc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
