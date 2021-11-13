function varargout = C_P_M_Func(varargin)
% C_P_M_FUNC MATLAB code for C_P_M_Func.fig
%      C_P_M_FUNC, by itself, creates a new C_P_M_FUNC or raises the existing
%      singleton*.
%
%      H = C_P_M_FUNC returns the handle to a new C_P_M_FUNC or the handle to
%      the existing singleton*.
%
%      C_P_M_FUNC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in C_P_M_FUNC.M with the given input arguments.
%
%      C_P_M_FUNC('Property','Value',...) creates a new C_P_M_FUNC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before C_P_M_Func_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to C_P_M_Func_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help C_P_M_Func

% Last Modified by GUIDE v2.5 29-Feb-2016 13:37:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @C_P_M_Func_OpeningFcn, ...
                   'gui_OutputFcn',  @C_P_M_Func_OutputFcn, ...
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


% --- Executes just before C_P_M_Func is made visible.
function C_P_M_Func_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to C_P_M_Func (see VARARGIN)

% Choose default command line output for C_P_M_Func
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes C_P_M_Func wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = C_P_M_Func_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
