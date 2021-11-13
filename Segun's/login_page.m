 function varargout = login_page(varargin)
% LOGIN_PAGE MATLAB code for login_page.fig
%      LOGIN_PAGE, by itself, creates a new LOGIN_PAGE or raises the existing
%      singleton*.
%
%      H = LOGIN_PAGE returns the handle to a new LOGIN_PAGE or the handle to
%      the existing singleton*.
%
%      LOGIN_PAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LOGIN_PAGE.M with the given input arguments.
%
%      LOGIN_PAGE('Property','Value',...) creates a new LOGIN_PAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before login_page_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to login_page_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help login_page

% Last Modified by GUIDE v2.5 18-Aug-2020 17:41:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @login_page_OpeningFcn, ...
                   'gui_OutputFcn',  @login_page_OutputFcn, ...
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


% --- Executes just before login_page is made visible.
function login_page_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to login_page (see VARARGIN)

% Choose default command line output for login_page
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes login_page wait for user response (see UIRESUME)
% uiwait(handles.login_page);


% --- Outputs from this function are returned to the command line.
function varargout = login_page_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function regno_Callback(hObject, eventdata, handles)
% hObject    handle to regno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of regno as text
%        str2double(get(hObject,'String')) returns contents of regno as a double
global regno;
regno = get(handles.regno,'string');
    
% --- Executes during object creation, after setting all properties.
function regno_CreateFcn(hObject, eventdata, handles)
% hObject    handle to regno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function password_Callback(hObject, eventdata, handles)
% hObject    handle to password (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of password as text
%        str2double(get(hObject,'String')) returns contents of password as a double
global password;
password = get(handles.password,'string');

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


% --- Executes on button press in login.
function login_Callback(hObject, eventdata, handles)
% hObject    handle to login (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% if strcmp(regno,) & strcmp(password,)
%    student_page;
% else
%     mssgbox('WRONG REGISTRATION NUMBER OR PASSWORD');
% end;
dr = [pwd '\studentdata.mat'];
lt = load(dr);
dbs = lt.table;
regno = get(handles.regno,'string');
password = get(handles.password,'string');  
value = find(regno == string(dbs(1:end,13)));
if isempty(value)
    errordlg('WRONG REGISTRATION NUMBER OR PASSWORD');
else
    if strcmp (password,dbs(value,12))
        value = find(regno == string(dbs(1:end,13)));
        if strcmp(string(dbs(value,8)),'1')
            category = 'Primary';
        elseif strcmp(string(dbs(value,8)),'2')
            category = 'Junior';
        elseif strcmp(string(dbs(value,8)),'3')
            category = 'Senior';
        elseif strcmp(string(dbs(value,8)),'4')
            category = 'Advance';
        end
        studdetails = {cell2mat(dbs(value,1)),cell2mat(dbs(value,2)),cell2mat(dbs(value,13))...
            ,cell2mat(dbs(value,9)),cell2mat(dbs(value,7)), category};
        setappdata(0, 'studetails', studdetails);
        close;
        studpage;
       
    else
       errordlg('WRONG REGISTRATION NUMBER OR PASSWORD');
    end
end
    
