function varargout = studpage(varargin)
% STUDPAGE MATLAB code for studpage.fig
%      STUDPAGE, by itself, creates a new STUDPAGE or raises the existing
%      singleton*.
%
%      H = STUDPAGE returns the handle to a new STUDPAGE or the handle to
%      the existing singleton*.
%
%      STUDPAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STUDPAGE.M with the given input arguments.
%
%      STUDPAGE('Property','Value',...) creates a new STUDPAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before studpage_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to studpage_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help studpage

% Last Modified by GUIDE v2.5 18-Aug-2020 17:41:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @studpage_OpeningFcn, ...
                   'gui_OutputFcn',  @studpage_OutputFcn, ...
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


% --- Executes just before studpage is made visible.
function studpage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to studpage (see VARARGIN)

% Choose default command line output for studpage
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes studpage wait for user response (see UIRESUME)
% uiwait(handles.studpage);
 studdetails = getappdata(0,'studetails');
 fullname = sprintf('%s, %s',cell2mat(studdetails(1)),cell2mat(studdetails(2)));
 set(handles.name,'string',fullname);
 set(handles.regno,'string',studdetails(3));
 set(handles.class,'string',studdetails(4));
 image=[pwd,'\Profilepic\',char(studdetails(3)),'.jpg'];
 axes(handles.axes1);
 imshow(image);
 
% --- Outputs from this function are returned to the command line.
function varargout = studpage_OutputFcn(hObject, eventdata, handles) 
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
studpage1;
