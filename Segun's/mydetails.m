function varargout = mydetails(varargin)
% MYDETAILS MATLAB code for mydetails.fig
%      MYDETAILS, by itself, creates a new MYDETAILS or raises the existing
%      singleton*.
%
%      H = MYDETAILS returns the handle to a new MYDETAILS or the handle to
%      the existing singleton*.
%
%      MYDETAILS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MYDETAILS.M with the given input arguments.
%
%      MYDETAILS('Property','Value',...) creates a new MYDETAILS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before mydetails_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to mydetails_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help mydetails

% Last Modified by GUIDE v2.5 03-Sep-2020 18:29:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mydetails_OpeningFcn, ...
                   'gui_OutputFcn',  @mydetails_OutputFcn, ...
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


% --- Executes just before mydetails is made visible.
function mydetails_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mydetails (see VARARGIN)

% Choose default command line output for mydetails
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mydetails wait for user response (see UIRESUME)
% uiwait(handles.figure1);
admindetails =  getappdata(0, 'studetails');
welcomemsg = sprintf('Welcome, %s %s',upper(cell2mat(admindetails(1))),cell2mat(admindetails(2)));
set(handles.welcomemsg,'string',welcomemsg);
set(handles.class,'string',admindetails(4));
set(handles.school,'string',admindetails(5));
name = sprintf('%s, %s',upper(cell2mat(admindetails(1))),cell2mat(admindetails(2)));
set(handles.name,'string',name);

 image=[pwd,'\Profilepic\',char(admindetails(3)),'.jpg'];
 axes(handles.axes2);
 imshow(image);


% --- Outputs from this function are returned to the command line.
function varargout = mydetails_OutputFcn(hObject, eventdata, handles) 
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
close;
editdetails;


function welcomemsg_Callback(hObject, eventdata, handles)
% hObject    handle to welcomemsg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of welcomemsg as text
%        str2double(get(hObject,'String')) returns contents of welcomemsg as a double


% --- Executes during object creation, after setting all properties.
function welcomemsg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to welcomemsg (see GCBO)
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
close;
studpage1;
