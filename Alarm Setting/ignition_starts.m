function varargout = ignition_starts(varargin)
% IGNITION_STARTS MATLAB code for ignition_starts.fig
%      IGNITION_STARTS, by itself, creates a new IGNITION_STARTS or raises the existing
%      singleton*.
%
%      H = IGNITION_STARTS returns the handle to a new IGNITION_STARTS or the handle to
%      the existing singleton*.
%
%      IGNITION_STARTS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IGNITION_STARTS.M with the given input arguments.
%
%      IGNITION_STARTS('Property','Value',...) creates a new IGNITION_STARTS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ignition_starts_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ignition_starts_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ignition_starts

% Last Modified by GUIDE v2.5 22-Jan-2016 01:53:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ignition_starts_OpeningFcn, ...
                   'gui_OutputFcn',  @ignition_starts_OutputFcn, ...
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


% --- Executes just before ignition_starts is made visible.
function ignition_starts_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ignition_starts (see VARARGIN)

% Choose default command line output for ignition_starts
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ignition_starts wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ignition_starts_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function password_Callback(hObject, eventdata, handles)
% hObject    handle to password (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of password as text
%        str2double(get(hObject,'String')) returns contents of password as a double


% --- Executes during object creation, after setting all properties.
function password_CreateFcn(hObject, eventdata, handles)
% hObject    handle to password (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function username_Callback(hObject, eventdata, handles)
% hObject    handle to username (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of username as text
%        str2double(get(hObject,'String')) returns contents of username as a double


% --- Executes during object creation, after setting all properties.
function username_CreateFcn(hObject, eventdata, handles)
% hObject    handle to username (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in startengine.
function startengine_Callback(hObject, eventdata, handles)
% hObject    handle to startengine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
usern = get(handles.username,'string');
pass = get(handles.password,'string');
switch pass
    case {'Feran','Jesus'}
%         [y,Fs,n] =wavread('sound.wav');
%         sound(y,Fs,n);
        hafr = dsp.AudioFileReader('sound.mp3');
       hap = dsp.AudioPlayer('SampleRate',11025);
       while ~isDone(hafr)
           audio = step(hafr);
           step(hap, audio);
       end
              msgbox('Good','Yes');
    otherwise
        hafr = dsp.AudioFileReader('attempt.mp3');
       hap = dsp.AudioPlayer('SampleRate',11025);
       while ~isDone(hafr)
           audio = step(hafr);
           step(hap, audio);
       end
       msgbox('Wrong Password or Username')
end
