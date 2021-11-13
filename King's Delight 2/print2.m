function varargout = print2(varargin)
% PRINT2 MATLAB code for print2.fig
%      PRINT2, by itself, creates a new PRINT2 or raises the existing
%      singleton*.
%
%      H = PRINT2 returns the handle to a new PRINT2 or the handle to
%      the existing singleton*.
%
%      PRINT2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRINT2.M with the given input arguments.
%
%      PRINT2('Property','Value',...) creates a new PRINT2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before print2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to print2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help print2

% Last Modified by GUIDE v2.5 24-Dec-2020 20:45:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @print2_OpeningFcn, ...
                   'gui_OutputFcn',  @print2_OutputFcn, ...
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


% --- Executes just before print2 is made visible.
function print2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to print2 (see VARARGIN)

% Choose default command line output for print2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% load grade.mat
load(['C:/King''s Delight Records' '/' 'grade.mat']);
set(handles.table,'data',grade)
fig = handles.figure1
movegui(fig,'center')

axes(handles.axes2)
matlabImage = imread('kings.jpg');
image(matlabImage)
set(gca,'XTick',[], 'YTick', [])
set(handles.datet,'String',date)

% load skills.mat
load(['C:/King''s Delight Records' '/' 'skills.mat']);
set(handles.table2,'data',skills(1:8,1))
set(handles.table3,'data',skills(10:20,1))

filer = getappdata(0,'file')
set(handles.namerep,'String',filer{1})
set(handles.sessrep,'String',filer{2})
set(handles.termrep,'String',filer{3})
set(handles.regnorep,'String',filer{5})
set(handles.classrep,'String',filer{6})

% UIWAIT makes print2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = print2_OutputFcn(hObject, eventdata, handles) 
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
h = handles.figure1
printpreview(h)
% set(h,'PaperPositionMode','auto')
print(h,'filenamer','-dpdf','-r0')
