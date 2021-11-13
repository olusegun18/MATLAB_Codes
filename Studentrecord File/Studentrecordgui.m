function varargout = Studentrecordgui(varargin)
% STUDENTRECORDGUI MATLAB code for Studentrecordgui.fig
%      STUDENTRECORDGUI, by itself, creates a new STUDENTRECORDGUI or raises the existing
%      singleton*.
%
%      H = STUDENTRECORDGUI returns the handle to a new STUDENTRECORDGUI or the handle to
%      the existing singleton*.
%
%      STUDENTRECORDGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STUDENTRECORDGUI.M with the given input arguments.
%
%      STUDENTRECORDGUI('Property','Value',...) creates a new STUDENTRECORDGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Studentrecordgui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Studentrecordgui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Studentrecordgui

% Last Modified by GUIDE v2.5 27-Jun-2020 13:45:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Studentrecordgui_OpeningFcn, ...
                   'gui_OutputFcn',  @Studentrecordgui_OutputFcn, ...
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


% --- Executes just before Studentrecordgui is made visible.
function Studentrecordgui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Studentrecordgui (see VARARGIN)

% Choose default command line output for Studentrecordgui
handles.output = hObject;
%set(handles.uitable1,'data',{''})

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Studentrecordgui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Studentrecordgui_OutputFcn(hObject, eventdata, handles) 
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


cname={'NAME','CODE NUMBER','SEX','CLASS','CA SCORE','EXAM SCORE','TOTAL SCORE','GRADE','ATTENDANCE','FINAL ASSESSMENT'};
ttk=get(handles.edit4, 'String');
bbe=str2double(get(handles.edit3, 'String'));
% j=get(handles.checkbox1, 'value')
if (get(handles.checkbox1,'Value')==get(handles.checkbox1,'Max'))
     ma='Male';
elseif (get(handles.checkbox2,'Value')==get(handles.checkbox2,'Max'))
      ma='Female';
end
%cac=get(handles.radiobutton7, 'value')
if (get(handles.radiobutton7,'value')==get(handles.radiobutton7, 'Max'))
    mm='Excellent';
elseif (get(handles.radiobutton13,'Value')==get(handles.radiobutton13, 'Max'))
    mm='Very Good';
elseif (get(handles.radiobutton12,'Value')==get(handles.radiobutton12, 'Max'))
    mm='Good';
elseif (get(handles.radiobutton11,'Value')==get(handles.radiobutton11, 'Max'))
    mm='Average';
elseif (get(handles.radiobutton8,'Value')==get(handles.radiobutton8, 'Max'))
    mm='Fair';
elseif (get(handles.radiobutton9,'Value')==get(handles.radiobutton9, 'Max'))
    mm='Poor';
else (get(handles.radiobutton10, 'value')==get(handles.radiobutton10, 'Max'))
    mm='Very Bad'
end
if (get(handles.radiobutton14, 'value')==get(handles.radiobutton14, 'Max'))
    gh='PROMOTED'
elseif (get(handles.radiobutton15, 'value')==get(handles.radiobutton15, 'Max'))
    gh='PROMOTED ON TRIAL'
elseif (get(handles.radiobutton16, 'value')==get(handles.radiobutton16, 'Max'))
    gh='REPEAT'
elseif (get(handles.radiobutton17, 'value')==get(handles.radiobutton17, 'Max'))
    gh='EXPELLED'
end
if (get(handles.radiobutton1, 'value')==get(handles.radiobutton1, 'Max'))
    bk='JSS1'
elseif (get(handles.radiobutton2, 'value')==get(handles.radiobutton2, 'Max'))
    bk='JSS2'
elseif (get(handles.radiobutton3, 'value')==get(handles.radiobutton3, 'Max'))
    bk='JSS3'
elseif (get(handles.radiobutton4, 'value')==get(handles.radiobutton4, 'Max'))
    bk='SSS1'
elseif (get(handles.radiobutton5, 'value')==get(handles.radiobutton5, 'Max'))
    bk='SSS2'
else (get(handles.radiobutton6, 'value')==get(handles.radiobutton6, 'Max'))
    bk='SSS3'
end
ttd=str2double(get(handles.edit1, 'String'));
st=str2double(get(handles.edit2, 'String'));
tsc=ttd+st;
if tsc>90
    tse= ('A*')
elseif tsc<90 &&tsc>=75
    tse= ('A1')
elseif tsc<75 &&tsc>=70
    tse= ('B2')
elseif tsc<70 &&tsc>=65
    tse= ('B3')
elseif tsc<65 &&tsc>=60
    tse= ('C4')
elseif tsc<60 &&tsc>=55
    tse= ('C5')
elseif tsc<55 &&tsc>=50
    tse= ('C6')
elseif tsc<50 &&tsc>=45
    tse= ('D7')
elseif tsc<45 &&tsc>=40
    tse= ('E8')
elseif tsc<40 &&tsc>=35
    tse= ('F9')
elseif tsc<35 && tsc>=30
    tse= ('Repeat')
else tsc<30
    tse= ('Hopeless')
end 
% ffr=get(handles.checkbox1, 'value');
% if ffr
% set(handles.uitable1, 'value', 'MALE');
% else
%     set(handles.uitable1, 'value','');
% end
table={ttk bbe ma bk ttd st tsc tse mm gh}
set(handles.uitable1,'data',table,'Columnname',cname)%ffr
ff=get(handles.uitable1,'data')
h.ff=ff
save('saveFF.mat','-struct','h')




% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1
set(handles.checkbox2,'Value',0)


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2
set(handles.checkbox1,'Value',0)


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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double



% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
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



% --- Executes on button press in plot.
function plot_Callback(hObject, eventdata, handles)
% hObject    handle to plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% ttd=str2double(get(handles.edit1, 'String'));
% st=str2double(get(handles.edit2, 'String'));
% tsc=ttd+st;
bd=get(handles.uitable2, 'data');
bb=get(handles.uitable2, 'data');
tr=get(handles.uitable2, 'data');
first=cell2mat(bd(:,1))
sec=cell2mat(tr(:,1))
plot(first,sec, '-r*', 'linewidth', 2) 




function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
set(handles.radiobutton2, 'value', 0)
set(handles.radiobutton3, 'value', 0)
set(handles.radiobutton4, 'value', 0)
set(handles.radiobutton5, 'value', 0)
set(handles.radiobutton6, 'value', 0)



% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
set(handles.radiobutton1, 'value', 0)
set(handles.radiobutton3, 'value', 0)
set(handles.radiobutton4, 'value', 0)
set(handles.radiobutton5, 'value', 0)
set(handles.radiobutton6, 'value', 0)


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
set(handles.radiobutton1, 'value', 0)
set(handles.radiobutton2, 'value', 0)
set(handles.radiobutton4, 'value', 0)
set(handles.radiobutton5, 'value', 0)
set(handles.radiobutton6, 'value', 0)


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4
set(handles.radiobutton1, 'value', 0)
set(handles.radiobutton2, 'value', 0)
set(handles.radiobutton3, 'value', 0)
set(handles.radiobutton5, 'value', 0)
set(handles.radiobutton6, 'value', 0)


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5
set(handles.radiobutton1, 'value', 0)
set(handles.radiobutton2, 'value', 0)
set(handles.radiobutton3, 'value', 0)
set(handles.radiobutton4, 'value', 0)
set(handles.radiobutton6, 'value', 0)


% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton6
set(handles.radiobutton1, 'value', 0)
set(handles.radiobutton2, 'value', 0)
set(handles.radiobutton3, 'value', 0)
set(handles.radiobutton4, 'value', 0)
set(handles.radiobutton5, 'value', 0)



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton7.
function radiobutton7_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton7
set(handles.radiobutton13,'Value',0)
set(handles.radiobutton9,'Value',0)
set(handles.radiobutton10,'Value',0)
set(handles.radiobutton12,'Value',0)
set(handles.radiobutton11,'Value',0)
set(handles.radiobutton8,'Value',0)





% --- Executes on button press in radiobutton8.
function radiobutton8_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton8
set(handles.radiobutton9,'Value',0)
set(handles.radiobutton10,'Value',0)
set(handles.radiobutton7,'Value',0)
set(handles.radiobutton13,'Value',0)
set(handles.radiobutton12,'Value',0)
set(handles.radiobutton11,'Value',0)


% --- Executes on button press in radiobutton9.
function radiobutton9_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton9
set(handles.radiobutton8,'Value',0)
set(handles.radiobutton10,'Value',0)
set(handles.radiobutton7,'Value',0)
set(handles.radiobutton13,'Value',0)
set(handles.radiobutton12,'Value',0)
set(handles.radiobutton11,'Value',0)


% --- Executes on button press in radiobutton10.
function radiobutton10_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton10
set(handles.radiobutton9,'Value',0)
set(handles.radiobutton8,'Value',0)
set(handles.radiobutton7,'Value',0)
set(handles.radiobutton13,'Value',0)
set(handles.radiobutton12,'Value',0)
set(handles.radiobutton11,'Value',0)


% --- Executes on button press in radiobutton11.
function radiobutton11_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton11
set(handles.radiobutton8,'Value',0)
set(handles.radiobutton9,'Value',0)
set(handles.radiobutton10,'Value',0)
set(handles.radiobutton7,'Value',0)
set(handles.radiobutton13,'Value',0)
set(handles.radiobutton12,'Value',0)


% --- Executes on button press in radiobutton12.
function radiobutton12_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton12
set(handles.radiobutton11,'Value',0)
set(handles.radiobutton9,'Value',0)
set(handles.radiobutton10,'Value',0)
set(handles.radiobutton7,'Value',0)
set(handles.radiobutton13,'Value',0)
set(handles.radiobutton8,'Value',0)


% --- Executes on button press in radiobutton13.
function radiobutton13_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton13
set(handles.radiobutton12,'Value',0)
set(handles.radiobutton9,'Value',0)
set(handles.radiobutton10,'Value',0)
set(handles.radiobutton7,'Value',0)
set(handles.radiobutton8,'Value',0)
set(handles.radiobutton11,'Value',0)


% --- Executes on button press in radiobutton14.
function radiobutton14_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton14
set(handles.radiobutton15, 'value',0)
set(handles.radiobutton16, 'value',0)
set(handles.radiobutton17, 'value',0)


% --- Executes on button press in radiobutton15.
function radiobutton15_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton15
set(handles.radiobutton14, 'value',0)
set(handles.radiobutton16, 'value',0)
set(handles.radiobutton17, 'value',0)


% --- Executes on button press in radiobutton16.
function radiobutton16_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton16
set(handles.radiobutton14, 'value',0)
set(handles.radiobutton15, 'value',0)
set(handles.radiobutton17, 'value',0)


% --- Executes on button press in radiobutton17.
function radiobutton17_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton17
set(handles.radiobutton14, 'value',0)
set(handles.radiobutton15, 'value',0)
set(handles.radiobutton16, 'value',0)


% --- Executes when entered data in editable cell(s) in uitable2.
function uitable2_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable2 (see GCBO)
% eventdata  structure with the following fields (see UITABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when selected cell(s) is changed in uitable2.
function uitable2_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to uitable2 (see GCBO)
% eventdata  structure with the following fields (see UITABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB 
% handles    structure with handles and user data (see GUIDATA)
tyc={'CA SCORE','EXAM SCORE','TOTAL SCORE','GRADE'};
%cd=get(handles.popupmenu1, 'String');
bd=str2double(get(handles.edit12, 'String'));
bb=str2double(get(handles.edit11, 'String'));
tr=bd+bb
set(handles.uitable2,'data',{bb bd tr} ,'Columnname',tyc)
ts=get(handles.uitable2,'data');
b.ts=ts;
save('saveTS.mat','-struct','b');



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, ~)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1



% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function activex1_Click(hObject, eventdata, handles)
% hObject    handle to activex1 (see GCBO)
% eventdata  structure with parameters passed to COM event listener
% handles    structure with handles and user data (see GUIDATA)
hObject.radius = floor(.9*hObject.radius); 
hObject.circle = ['Radius = ' num2str(hObject.radius)]; 
refresh(handles.figure1); 


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cname={'NAME','CODE NUMBER','SEX','CLASS','CA SCORE','EXAM SCORE','TOTAL SCORE','GRADE','ATTENDANCE','FINAL ASSESSMENT'};
ttk=get(handles.edit4, 'String');
bbe=str2double(get(handles.edit3, 'String'));
% j=get(handles.checkbox1, 'value')
if (get(handles.checkbox1,'Value')==get(handles.checkbox1,'Max'))
     ma='Male';
elseif (get(handles.checkbox2,'Value')==get(handles.checkbox2,'Max'))
      ma='Female';
end
%cac=get(handles.radiobutton7, 'value')
if (get(handles.radiobutton7,'value')==get(handles.radiobutton7, 'Max'))
    mm='Excellent';
elseif (get(handles.radiobutton13,'Value')==get(handles.radiobutton13, 'Max'))
    mm='Very Good';
elseif (get(handles.radiobutton12,'Value')==get(handles.radiobutton12, 'Max'))
    mm='Good';
elseif (get(handles.radiobutton11,'Value')==get(handles.radiobutton11, 'Max'))
    mm='Average';
elseif (get(handles.radiobutton8,'Value')==get(handles.radiobutton8, 'Max'))
    mm='Fair';
elseif (get(handles.radiobutton9,'Value')==get(handles.radiobutton9, 'Max'))
    mm='Poor';
else (get(handles.radiobutton10, 'value')==get(handles.radiobutton10, 'Max'))
    mm='Very Bad'
end
if (get(handles.radiobutton14, 'value')==get(handles.radiobutton14, 'Max'))
    gh='PROMOTED'
elseif (get(handles.radiobutton15, 'value')==get(handles.radiobutton15, 'Max'))
    gh='PROMOTED ON TRIAL'
elseif (get(handles.radiobutton16, 'value')==get(handles.radiobutton16, 'Max'))
    gh='REPEAT'
elseif (get(handles.radiobutton17, 'value')==get(handles.radiobutton17, 'Max'))
    gh='EXPELLED'
end
if (get(handles.radiobutton1, 'value')==get(handles.radiobutton1, 'Max'))
    bk='JSS1'
elseif (get(handles.radiobutton2, 'value')==get(handles.radiobutton2, 'Max'))
    bk='JSS2'
elseif (get(handles.radiobutton3, 'value')==get(handles.radiobutton3, 'Max'))
    bk='JSS3'
elseif (get(handles.radiobutton4, 'value')==get(handles.radiobutton4, 'Max'))
    bk='SSS1'
elseif (get(handles.radiobutton5, 'value')==get(handles.radiobutton5, 'Max'))
    bk='SSS2'
else (get(handles.radiobutton6, 'value')==get(handles.radiobutton6, 'Max'))
    bk='SSS3'
end
ttd=str2double(get(handles.edit1, 'String'));
st=str2double(get(handles.edit2, 'String'));
tsc=ttd+st;
if tsc>90
    tse= ('A*')
elseif tsc<90 &&tsc>=75
    tse= ('A1')
elseif tsc<75 &&tsc>=70
    tse= ('B2')
elseif tsc<70 &&tsc>=65
    tse= ('B3')
elseif tsc<65 &&tsc>=60
    tse= ('C4')
elseif tsc<60 &&tsc>=55
    tse= ('C5')
elseif tsc<55 &&tsc>=50
    tse= ('C6')
elseif tsc<50 &&tsc>=45
    tse= ('D7')
elseif tsc<45 &&tsc>=40
    tse= ('E8')
elseif tsc<40 &&tsc>=35
    tse= ('F9')
elseif tsc<35 && tsc>=30
    tse= ('Repeat')
else tsc<30
    tse= ('Hopeless')
end 
% ffr=get(handles.checkbox1, 'value');
% if ffr
% set(handles.uitable1, 'value', 'MALE');
% else
%     set(handles.uitable1, 'value','');

gett=get(handles.uitable1,'data')
if ~isempty(gett(1,:))

table={ttk bbe ma bk ttd st tsc tse mm gh}
tbe=[gett;table]

set(handles.uitable1,'data',tbe,'Columnname',cname)%ffr
% mm=get(handles.uitable1,'data')

ff=get(handles.uitable1,'data');
h.ff=ff;
save('saveFF.mat','-struct','h');

end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tyc={'CA SCORE','EXAM SCORE','TOTAL SCORE','GRADE'};
%cd=get(handles.popupmenu1, 'String');
bd=str2double(get(handles.edit12, 'String'));
bb=str2double(get(handles.edit11, 'String'));
tr=bd+bb

dea=get(handles.uitable2,'data')
if ~isempty(dea(1,:))

table={bb bd tr}
tle=[dea;table]

set(handles.uitable2,'data',tle,'Columnname',tyc)%ffr
gt=get(handles.uitable2,'data');
b.fm=gt;
save('saveTS.mat','-struct','b');
end


% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when selected cell(s) is changed in uitable1.
function uitable1_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when entered data in editable cell(s) in uitable1.
function uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)
