function varargout = stopwatch(varargin)
% STOPWATCHGUI MATLAB code for stopwatchgui.fig
%      STOPWATCHGUI, by itself, creates a new STOPWATCHGUI or raises the existing
%      singleton*.
%
%      H = STOPWATCHGUI returns the handle to a new STOPWATCHGUI or the handle to
%      the existing singleton*.
%
%      STOPWATCHGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STOPWATCHGUI.M with the given input arguments.
%
%      STOPWATCHGUI('Property','Value',...) creates a new STOPWATCHGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before stopwatch_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to stopwatch_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help stopwatchgui

% Last Modified by GUIDE v2.5 24-Aug-2020 13:15:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @stopwatch_OpeningFcn, ...
                   'gui_OutputFcn',  @stopwatch_OutputFcn, ...
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


% --- Executes just before stopwatchgui is made visible.
function stopwatch_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to stopwatchgui (see VARARGIN)

% Choose default command line output for stopwatchgui
handles.output = hObject;
run(hObject, handles);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes stopwatchgui wait for user response (see UIRESUME)
% uiwait(handles.stopwatchgui);

function run(hObject, handles)
tic;
    secs = 15-toc;
    hrs = floor(secs/3600);
    mins = floor(secs/60 - 60*hrs);
    secs = floor(secs - 60*(mins + 60*hrs)) ;
    h = sprintf('%1.0f:',hrs);
    m = sprintf('%1.0f:',mins);
    s = sprintf('%1d',secs);
%     if hrs < 10
%         h = sprintf('0%1.0f:',hrs);
%     end
%     if mins < 10
%         m = sprintf('0%1.0f:',mins);
%     end
%     if secs < 9.9995
%         s = sprintf('0%1d',secs);
%     end
    str = [h m s];
    set(handles.stopwatch, 'string', str);
    pause(0.9);
    if toc <= 15
%         run(hObject, handles);
    else
    end
% --- Outputs from this function are returned to the command line.
function varargout = stopwatch_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% n = 2400;
% 
% t= timer('TimeFcn','state=false; disp(''Timer!!'')','StartDelay',n);
% start(t);
% 



function stopwatch_Callback(hObject, eventdata, handles)
% hObject    handle to stopwatchgui (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of stopwatchgui as text
%        str2double(get(hObject,'String')) returns contents of stopwatchgui as a double


% --- Executes during object creation, after setting all properties.
function stopwatchgui_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stopwatchgui (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
