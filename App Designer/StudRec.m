function varargout = StudRec(varargin)
% STUDREC MATLAB code for StudRec.fig
%      STUDREC, by itself, creates a new STUDREC or raises the existing
%      singleton*.
%
%      H = STUDREC returns the handle to a new STUDREC or the handle to
%      the existing singleton*.
%
%      STUDREC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STUDREC.M with the given input arguments.
%
%      STUDREC('Property','Value',...) creates a new STUDREC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before StudRec_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to StudRec_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help StudRec

% Last Modified by GUIDE v2.5 30-Jun-2020 01:02:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @StudRec_OpeningFcn, ...
                   'gui_OutputFcn',  @StudRec_OutputFcn, ...
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


% --- Executes just before StudRec is made visible.
function StudRec_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to StudRec (see VARARGIN)

% Choose default command line output for StudRec
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes StudRec wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = StudRec_OutputFcn(hObject, eventdata, handles) 
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
mg = get(handles.uitable2,'visible')
cname = {'Matric No','Name','Age','Sex','Class','Academic Perf'};
% % isscalar(mg)
if strmatch(mg,'off') == 1
    msgbox('There is no new record to add')
else
%     data = {'0001','Abede Ola','11','Male','JSS1','Average';...
%     '0002','Ibukun Mary','12','Female','JSS1','Above Average';...
%     '0003','Ileri Gideon','12','Male','JSS2','Poor';...
%     '0004','Inioluwa Love','13','Female','JSS2','Average';...
%     '0005','Itara Faith','14','Female','JSS3','Excellent';...
%     '0006','Ola Marvelous','15','Male','JSS3','Good';...
%     '0007','Joseph Precious','16','Male','SSS1','Excellent';...
%     '0008','Kijuke Anu','17','Female','SSS1','Poor';...
%     '0009','Lynda Angela','16','Female','SSS2','Good';...
%     '0010','Pascal Floyd','18','Male','SSS2','Excellent';...
%     '0011','Louis Miracle','18','Female','SSS3','Above Average';...
%     '0012','Vincent Chukwudi','19','Male','SSS3','Good'}

table = get(handles.uitable2,'data')
% record = [data;first_table]
set(handles.uitable1,'data',table,'columnname',cname)
save 'studrecord.mat' table


pp = get(handles.uitable2,'data');
image = getimage(handles.axes1);
imwrite(image, [pwd,'\', num2str(pp{1,1}),'.jpg'])

msgbox('Data Added Successfully!')
set(handles.uitable2,'visible','off')
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    
    
function matricno_Callback(hObject, eventdata, handles)
% hObject    handle to matricno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% set(handles.matricno,'string','')
% Hints: get(hObject,'String') returns contents of matricno as text
%        str2double(get(hObject,'String')) returns contents of matricno as a double


% --- Executes during object creation, after setting all properties.
function matricno_CreateFcn(hObject, eventdata, handles)
% hObject    handle to matricno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uitable2,'visible','on')


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% record = {'0001','Abede Ola','11','Male','JSS1','Average';...
%     '0002','Ibukun Mary','12','Female','JSS1','Above Average';...
%     '0003','Ileri Gideon','12','Male','JSS2','Poor';...
%     '0004','Inioluwa Love','13','Female','JSS2','Average';...
%     '0005','Itara Faith','14','Female','JSS3','Excellent';...
%     '0006','Ola Marvelous','15','Male','JSS3','Good';...
%     '0007','Joseph Precious','16','Male','SSS1','Excellent';...
%     '0008','Kijuke Anu','17','Female','SSS1','Poor';...
%     '0009','Lynda Angela','16','Female','SSS2','Good';...
%     '0010','Pascal Floyd','18','Male','SSS2','Excellent';...
%     '0011','Louis Miracle','18','Female','SSS3','Above Average';...
%     '0012','Vincent Chukwudi','19','Male','SSS3','Good'}
% 
% 
% save stdrecord.mat record

cname = {'Matric No','Name','Age','Sex','Class','Academic Perf'};
lr = load('studrecord.mat')
newrec = lr.table
set(handles.uitable1,'data',newrec,'columnname',cname)

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on button press in delete.
function delete_Callback(hObject, eventdata, handles)
% hObject    handle to delete (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in select.

% hObject    handle to select (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns select contents as cell array
%        contents{get(hObject,'Value')} returns selected item from select


% --- Executes during object creation, after setting all properties.
function select_CreateFcn(hObject, eventdata, handles)
% hObject    handle to select (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in select.
function select_Callback(hObject, eventdata, handles)
% hObject    handle to select (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns select contents as cell array
%        contents{get(hObject,'Value')} returns selected item from select



% cnj = get(handles.select,'String')
% itp = cnj{get(handles.select,'string')}
mnj = get(handles.select,'value')
loadr = load('studrecord.mat');
ll = loadr.table
try
    if mnj == 3
        mng = get(handles.matricno,'String');
        gg = strmatch(mng, ll(:,1))
        jk =ll(gg,:);
        set(handles.uitable1,'data', jk)
        pp = get(handles.matricno,'string')
        img = [pwd, '\', num2str(pp),'.jpg']
        axes(handles.axes1)
        imshow(img)
    elseif mnj == 2
        mng = get(handles.matricno,'String')
        if isempty(mng) 
            msgbox('Input a matric number')
        else
            gg = strmatch(mng, ll(:,1))
            ll(gg,:) = ''
            delete([num2str(mng),'.jpg'])
            set(handles.uitable1,'data',ll)
            table = get(handles.uitable1,'data')
            save studrecord.mat table
            msgbox('Data Deleted')  
        end
    end
catch
    msgbox('Missing in the database')
end


% --- Executes on button press in picture.
function picture_Callback(hObject, eventdata, handles)
% hObject    handle to picture (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uigetfile({'*.jpg';'*.bmp'},'Select Picture','JPEG');
mm = imread([pathname,filename]);
axes(handles.axes1);
imshow(mm)
