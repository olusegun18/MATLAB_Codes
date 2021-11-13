function varargout = Adminprofilecreation(varargin)
% ADMINPROFILECREATION MATLAB code for Adminprofilecreation.fig
%      ADMINPROFILECREATION, by itself, creates a new ADMINPROFILECREATION or raises the existing
%      singleton*.
%
%      H = ADMINPROFILECREATION returns the handle to a new ADMINPROFILECREATION or the handle to
%      the existing singleton*.
%
%      ADMINPROFILECREATION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ADMINPROFILECREATION.M with the given input arguments.
%
%      ADMINPROFILECREATION('Property','Value',...) creates a new ADMINPROFILECREATION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Adminprofilecreation_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Adminprofilecreation_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Adminprofilecreation

% Last Modified by GUIDE v2.5 30-Aug-2020 17:31:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Adminprofilecreation_OpeningFcn, ...
                   'gui_OutputFcn',  @Adminprofilecreation_OutputFcn, ...
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


% --- Executes just before Adminprofilecreation is made visible.
function Adminprofilecreation_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Adminprofilecreation (see VARARGIN)

% Choose default command line output for Adminprofilecreation
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Adminprofilecreation wait for user response (see UIRESUME)
% uiwait(handles.Adminprofilecreation);


% --- Outputs from this function are returned to the command line.
function varargout = Adminprofilecreation_OutputFcn(hObject, eventdata, handles) 
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
firstname = get(handles.firstname, 'string');
lastname = get(handles.secondname, 'string');
profilename = get(handles.profilename, 'string');
password = get(handles.password, 'string');
confirmpassword = get(handles.confirmpassword, 'string');


if isempty(firstname)|| isempty(lastname)|| isempty(profilename)|| isempty(password)|| isempty(confirmpassword)
    errordlg('You have not filled in a field');
else
    if isempty(password) 
         errordlg('You have not entered a Password');
    else
        if strcmp(password,confirmpassword) 
            dr = [pwd,'\admindbs'];
            lt = load(dr);

            heading={'FIRSTNAME','LASTNAME','PROFILENAME','PASSWORD'};
            kk = lt.hey;
            set(handles.table,'data',kk,'columnname',heading);
            table=get(handles.table,'data');
            gettable = {firstname lastname profilename password};
            
            if  strcmp("",table(1,1))
                 ButtonName = questdlg('ARE YOU SURE THE VALUES ARE CORRECT? ', ...
                             '', ...
                             'EDIT', 'OK','EDIT');
                   switch ButtonName,
                     case 'EDIT',
                     case 'OK',
                        set(handles.table,'data',gettable,'columnname',heading)
                        setappdata(0,'admindba','geattable')
                        hey = get(handles.table,'data');
                        save (dr,'hey')
                        close;
                        adminsuc;
                   end % switch
                
            else
                if ~isempty(find(profilename == string(table(:,3))))
                    errordlg('Profilename already taken');
                    set(handles.profilename,'string','');
                    
                else
                    ButtonName = questdlg('ARE YOU SURE THE VALUES ARE CORRECT? ', ...
                             '', ...
                             'EDIT', 'OK','EDIT');
                       switch ButtonName,
                         case 'EDIT',
                         case 'OK',
                            table=get(handles.table,'data');
                            studentdata=[table;gettable];
                            set(handles.table,'data',studentdata,'columnname',heading)
                            admindba = gettable;
                            setappdata(0,'admindba',admindba);
                            hey = get(handles.table,'data');
                            save (dr,'hey')
                            close;
                       end % switch
                end
            end
                setappdata(0, 'record2table', gettable);
                
        else
            msgbox('Password and confirm password do not match');
        end
    end
end


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



function confirmpassword_Callback(hObject, eventdata, handles)
% hObject    handle to confirmpassword (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of confirmpassword as text
%        str2double(get(hObject,'String')) returns contents of confirmpassword as a double


% --- Executes during object creation, after setting all properties.
function confirmpassword_CreateFcn(hObject, eventdata, handles)
% hObject    handle to confirmpassword (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function firstname_Callback(hObject, eventdata, handles)
% hObject    handle to firstname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of firstname as text
%        str2double(get(hObject,'String')) returns contents of firstname as a double


% --- Executes during object creation, after setting all properties.
function firstname_CreateFcn(hObject, eventdata, handles)
% hObject    handle to firstname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function secondname_Callback(hObject, eventdata, handles)
% hObject    handle to secondname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of secondname as text
%        str2double(get(hObject,'String')) returns contents of secondname as a double


% --- Executes during object creation, after setting all properties.
function secondname_CreateFcn(hObject, eventdata, handles)
% hObject    handle to secondname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function profilename_Callback(hObject, eventdata, handles)
% hObject    handle to profilename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of profilename as text
%        str2double(get(hObject,'String')) returns contents of profilename as a double


% --- Executes during object creation, after setting all properties.
function profilename_CreateFcn(hObject, eventdata, handles)
% hObject    handle to profilename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
