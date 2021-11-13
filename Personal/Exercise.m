function varargout = Exercise(varargin)
% EXERCISE MATLAB code for Exercise.fig
%      EXERCISE, by itself, creates a new EXERCISE or raises the existing
%      singleton*.
%
%      H = EXERCISE returns the handle to a new EXERCISE or the handle to
%      the existing singleton*.
%
%      EXERCISE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EXERCISE.M with the given input arguments.
%
%      EXERCISE('Property','Value',...) creates a new EXERCISE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Exercise_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Exercise_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Exercise

% Last Modified by GUIDE v2.5 25-Apr-2016 10:28:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Exercise_OpeningFcn, ...
                   'gui_OutputFcn',  @Exercise_OutputFcn, ...
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


% --- Executes just before Exercise is made visible.
function Exercise_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Exercise (see VARARGIN)

% Choose default command line output for Exercise
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Exercise wait for user response (see UIRESUME)
% uiwait(handles.figure1);
setappdata(handles.figure,'waiting',1)
% UIWAIT makes changeme_main wait for user response (see UIRESUME)
 uiwait(handles.figure);

% --- Outputs from this function are returned to the command line.
function varargout = Exercise_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
delete(hObject);


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dialog('Exercise', handles.figure);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
