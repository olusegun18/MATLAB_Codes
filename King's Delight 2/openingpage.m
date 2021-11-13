function varargout = openingpage(varargin)
% OPENINGPAGE MATLAB code for openingpage.fig
%      OPENINGPAGE, by itself, creates a new OPENINGPAGE or raises the existing
%      singleton*.
%
%      H = OPENINGPAGE returns the handle to a new OPENINGPAGE or the handle to
%      the existing singleton*.
%
%      OPENINGPAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OPENINGPAGE.M with the given input arguments.
%
%      OPENINGPAGE('Property','Value',...) creates a new OPENINGPAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before openingpage_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to openingpage_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help openingpage

% Last Modified by GUIDE v2.5 02-Dec-2020 01:05:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @openingpage_OpeningFcn, ...
                   'gui_OutputFcn',  @openingpage_OutputFcn, ...
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


% --- Executes just before openingpage is made visible.
function openingpage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to openingpage (see VARARGIN)

% Choose default command line output for openingpage
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes openingpage wait for user response (see UIRESUME)
% uiwait(handles.figure1);


%mkdir(['C:' '/' 'King''s Delight Records'])
% mjj = dir(pwd);
% jk = {mjj.name};
% list = [];
% for i= 1:length(jk)
%     jj = regexp(jk{i}, '\.mat', 'match');
%     if isempty(jj) == 0
%        %cd(['C:' '/' 'King''s Delight Records'])
%        mm = jk{i}
%        copyfile *.mat 'King''s Delight Records'
%        list = [list, jk(i)];
%     end
% end


% copyfile *.mat 'C:/King''s Delight Records'
% copyfile *.jpg 'C:/King''s Delight Records'
% cd(['C:' '/' 'King''s Delight Records'])

fig = handles.figure1
movegui(fig,'center')

axes(handles.axes2)
matlabImage = imread('kings.jpg');
image(matlabImage)
set(gca,'XTick',[], 'YTick', [])



% --- Outputs from this function are returned to the command line.
function varargout = openingpage_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
dashboard
