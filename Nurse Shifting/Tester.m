function varargout = Tester(varargin)
% TESTER MATLAB code for Tester.fig
%      TESTER, by itself, creates a new TESTER or raises the existing
%      singleton*.
%
%      H = TESTER returns the handle to a new TESTER or the handle to
%      the existing singleton*.
%
%      TESTER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TESTER.M with the given input arguments.
%
%      TESTER('Property','Value',...) creates a new TESTER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Tester_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Tester_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Tester

% Last Modified by GUIDE v2.5 23-Feb-2016 14:24:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Tester_OpeningFcn, ...
                   'gui_OutputFcn',  @Tester_OutputFcn, ...
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


% --- Executes just before Tester is made visible.
function Tester_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Tester (see VARARGIN)

% Choose default command line output for Tester
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Tester wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Tester_OutputFcn(hObject, eventdata, handles) 
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
ff=get(handles.table,'data')
%ff(3:3:17)={'M'}
%ff(5,1:2:7)={'K'}
%ff(5:1:2)={'W'}                       % You actually need this
%ff(2,5)={'P'}                        % You may need this
%ff(:,4:5)={'L'}                      % You need this
%ff(1:2,3)={'T'}                      % You need this
%ff(7:1:20)={'MSN VS BBC'}  
%ff(5,2:4:7)={'kjh'}
%ff(3:2,1:8) = {'g'};% You need this
% for m=1:10
% gettable=get(handles.table,'data')
% mm=gettable(:,1)
% mmlen=length(mm)
% if    (m==1)
%             data = {'Oyekale', 50; 'Isaac', 60; 'Dammy', 80}
%             rname = {'Sunday';'Monday';'Tuesday';'Wednesday';'Thursday';'Friday';'Saturday'}
%             gettable(1:7,1) = rname
%             gettable(3:5,1:2) = data
%             set(handles.table,'data',gettable) 
% else
%             k = mmlen+1
%             l = mmlen+7
%             kl = mmlen+3
%             ll = mmlen+5
%             data = {'Oyekale', 50; 'Isaac', 60; 'Dammy', 80}
%             rname = {'Sunday';'Monday';'Tuesday';'Wednesday';'Thursday';'Friday';'Saturday'}
%             gettable(k:l,1) = rname
%             gettable(kl:ll,1:2) = data
%             set(handles.table,'data',gettable) 
% end
% end
% set(handles.table,'data',ff)
%jj=get(handles.table,'data')
% ml=jj(5,2)
% fr='M'
