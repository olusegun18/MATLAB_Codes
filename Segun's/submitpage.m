function varargout = submitpage(varargin)
% SUBMITPAGE MATLAB code for submitpage.fig
%      SUBMITPAGE, by itself, creates a new SUBMITPAGE or raises the existing
%      singleton*.
%
%      H = SUBMITPAGE returns the handle to a new SUBMITPAGE or the handle to
%      the existing singleton*.
%
%      SUBMITPAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SUBMITPAGE.M with the given input arguments.
%
%      SUBMITPAGE('Property','Value',...) creates a new SUBMITPAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before submitpage_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to submitpage_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help submitpage

% Last Modified by GUIDE v2.5 26-Aug-2020 09:44:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @submitpage_OpeningFcn, ...
                   'gui_OutputFcn',  @submitpage_OutputFcn, ...
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


% --- Executes just before submitpage is made visible.
function submitpage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to submitpage (see VARARGIN)

% Choose default command line output for submitpage
handles.output = hObject;
score = getappdata(0,'score');
set(handles.score,'string',score)
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes submitpage wait for user response (see UIRESUME)
% uiwait(handles.submitpage);


% --- Outputs from this function are returned to the command line.
function varargout = submitpage_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function score_Callback(hObject, eventdata, handles)
% hObject    handle to score (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of score as text
%        str2double(get(hObject,'String')) returns contents of score as a double


% --- Executes during object creation, after setting all properties.
function score_CreateFcn(hObject, eventdata, handles)
% hObject    handle to score (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
