function varargout = resultsupload(varargin)
% RESULTSUPLOAD MATLAB code for resultsupload.fig
%      RESULTSUPLOAD, by itself, creates a new RESULTSUPLOAD or raises the existing
%      singleton*.
%
%      H = RESULTSUPLOAD returns the handle to a new RESULTSUPLOAD or the handle to
%      the existing singleton*.
%
%      RESULTSUPLOAD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULTSUPLOAD.M with the given input arguments.
%
%      RESULTSUPLOAD('Property','Value',...) creates a new RESULTSUPLOAD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before resultsupload_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to resultsupload_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help resultsupload

% Last Modified by GUIDE v2.5 07-Dec-2020 16:15:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @resultsupload_OpeningFcn, ...
                   'gui_OutputFcn',  @resultsupload_OutputFcn, ...
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


% --- Executes just before resultsupload is made visible.
function resultsupload_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to resultsupload (see VARARGIN)

% Choose default command line output for resultsupload
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes resultsupload wait for user response (see UIRESUME)
% uiwait(handles.figure1);

h = handles.figure1;
movegui(h,'center')

% load sessions.mat
load(['C:/King''s Delight Records' '/' 'sessions.mat']);
fill= [{'Select Session'}; sessions(3:end,1)]
set(handles.entsession,'String',fill)


% --- Outputs from this function are returned to the command line.
function varargout = resultsupload_OutputFcn(hObject, eventdata, handles) 
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

jkk = get(handles.entsession,'String')
sess = jkk{get(handles.entsession,'Value')}

if strcmp(sess, 'Select Session')
    msgbox('Pick a session')
else

regist = get(handles.registno,'String');

jkm = get(handles.entcat,'String')
encat = jkm{get(handles.entcat,'Value')}

jkp = get(handles.entclass,'String')
enclass = jkp{get(handles.entclass,'Value')}
      
jkr = get(handles.entterm,'String')
enterm = jkr{get(handles.entterm,'Value')}    

sess_split = regexp(sess,'/*', "split");
date1 = sess_split(1);
date2 = sess_split(2);
folder = strcat(string(date1),'_',string(date2));
folder = str2mat(folder);
            
            if isempty(regist) | isempty(sess) | isempty(encat) | isempty(enclass)
                msgbox('Enter all inputs','error');
                return
            end
            
            if strcmp(encat,'NURSERY AND PRIMARY')
                mjj = dir(['C:/King''s Delight Records' '/' folder '/' encat '/' enclass '/' enterm '/']);
                jk = {mjj.name};
                list = [];
                for i= 1:length(jk)
                    jj = regexp(jk{i}, '\.mat', 'match');
                    if isempty(jj) == 0
                        load(['C:/King''s Delight Records' '/' folder '/' encat '/' enclass '/' enterm '/' jk{i}])
                        jjo = string(data(:,2));
                        mlm = find(jjo == regist);
                        if isempty(mlm) == 0
                           list = [list, jk(i)];
                        end
                    end
                end
                
                sublist = [];
                for i= 1:length(list)
                    
                    load(['C:/King''s Delight Records' '/' folder '/' encat '/' enclass '/' enterm '/' list{i}]);
                    fgt = string(pdata(:,2));
                    mko = find(fgt == regist);
                    jj = regexp(list{i}, '\.mat', 'split');
                    if isempty(mko)== 0
                       sublist = [sublist;jj(1),pdata(mko,3),pdata(mko,4),pdata(mko,5),pdata(mko,6)];
                    end
                end
                
                
                    table = sublist
                    save(['C:/King''s Delight Records' '/' 'table.mat'],'table');
                    load(['C:/King''s Delight Records' '/' 'table.mat']);
                    if isempty(table)
                       msgbox('Student not found','Invalid Key','error')
                    else
                        jjlm = [{'SUBJECT'},{'C.A.1'},{'C.A.2'},{'C.A.3'},{'EXAM'}];
                        set(handles.table,'data',table,'Columnname',jjlm)
                    end
                
                
            else
                mjj = dir(['C:/King''s Delight Records' '/' folder '/' encat '/' enclass '/' enterm '/']);
                jk = {mjj.name};
                list = [];
                for i= 1:length(jk)
                    jj = regexp(jk{i}, '\.mat', 'match');
                    if isempty(jj) == 0
                        load(['C:/King''s Delight Records' '/' folder '/' encat '/' enclass '/' enterm '/' jk{i}])
                        jjo = string(data(:,2));
                        mlm = find(jjo == regist);
                        if isempty(mlm) == 0
                           list = [list, jk(i)];
                        end
                    end
                end
                
                
                sublist = [];
                
                if strcmp(encat,'JUNIOR')
                    listed = string(list);
                    yy = find(listed == 'BASIC SCIENCE AND TECH.mat')
                    zz = find(listed == 'NATIONAL VALUES.mat')
                    list(yy) = ''
                    list(zz-1) = ''
                end
                
                
                for i= 1:length(list)
                    load(['C:/King''s Delight Records' '/' folder '/' encat '/' enclass '/' enterm '/' list{i}]);
                    fgt = string(data(:,2));
                    mko = find(fgt == regist);
                    jj = regexp(list{i}, '\.mat', 'split');
                    if isempty(mko)== 0
                       sublist = [sublist;jj(1),data(mko,3),data(mko,4),data(mko,5)];
                    end
                end
                
                
                    table = sublist
                    save(['C:/King''s Delight Records' '/' 'table.mat'],'table');
                    load(['C:/King''s Delight Records' '/' 'table.mat']);
                    if isempty(table)
                       msgbox('Student not found','Invalid Key','error')
                    else
                        jjlm = [{'SUBJECT'},{'C.A. 1'},{'C.A. 2'},{'EXAM'}];
                        set(handles.table,'data',table,'Columnname',jjlm);
                    end
            end
end



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
studentregister

% --- Executes on selection change in entsession.
function entsession_Callback(hObject, eventdata, handles)
% hObject    handle to entsession (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns entsession contents as cell array
%        contents{get(hObject,'Value')} returns selected item from entsession
list = [{'FIRST TERM'}, {'SECOND TERM'}, {'THIRD TERM'}]
set(handles.entterm,'String',list);


% --- Executes during object creation, after setting all properties.
function entsession_CreateFcn(hObject, eventdata, handles)
% hObject    handle to entsession (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in entterm.
function entterm_Callback(hObject, eventdata, handles)
% hObject    handle to entterm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns entterm contents as cell array
%        contents{get(hObject,'Value')} returns selected item from entterm


% --- Executes during object creation, after setting all properties.
function entterm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to entterm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function registno_Callback(hObject, eventdata, handles)
% hObject    handle to registno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of registno as text
%        str2double(get(hObject,'String')) returns contents of registno as a double


% --- Executes during object creation, after setting all properties.
function registno_CreateFcn(hObject, eventdata, handles)
% hObject    handle to registno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in entcat.
function entcat_Callback(hObject, eventdata, handles)
% hObject    handle to entcat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns entcat contents as cell array
%        contents{get(hObject,'Value')} returns selected item from entcat
jkk = get(handles.entcat,'String')
value = jkk{get(handles.entcat,'Value')};
if strcmp('NURSERY AND PRIMARY', value)
   file = [{'NURSERY 1'},{'NURSERY 2'},{'NURSERY 3'},{'PRIMARY 1'},{'PRIMARY 2'},{'PRIMARY 3'},...
                    {'PRIMARY 4'},{'PRIMARY 5'}];
   set(handles.entclass,'String',file) 
elseif strcmp('JUNIOR',value)
       file = [{'JSS1'},{'JSS2'},{'JSS3'}];
       set(handles.entclass,'String',file) 
elseif strcmp('SENIOR', value)
       file = [{'SSS1'},{'SSS2'},{'SSS3'}];
       set(handles.entclass,'String',file)
end
            
            
% --- Executes during object creation, after setting all properties.
function entcat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to entcat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in entclass.
function entclass_Callback(hObject, eventdata, handles)
% hObject    handle to entclass (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns entclass contents as cell array
%        contents{get(hObject,'Value')} returns selected item from entclass


% --- Executes during object creation, after setting all properties.
function entclass_CreateFcn(hObject, eventdata, handles)
% hObject    handle to entclass (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try

jkk = get(handles.entsession,'String')
upsession = jkk{get(handles.entsession,'Value')}

upregno = get(handles.registno,'String');

jkm = get(handles.entcat,'String');
upcat = jkm{get(handles.entcat,'Value')};

jkp = get(handles.entclass,'String')
upclass = jkp{get(handles.entclass,'Value')}
      
jkr = get(handles.entterm,'String')
upterm = jkr{get(handles.entterm,'Value')} 

            load(['C:/King''s Delight Records' '/' 'table.mat']);
            table = get(handles.table,'data');
%             save table.mat table
            save(['C:/King''s Delight Records' '/' 'table.mat'],'table');
            
            sess_split = regexp(upsession,'/*', "split");
            date1 = sess_split(1);
            date2 = sess_split(2);
            folder = strcat(string(date1),'_',string(date2));
            folder = str2mat(folder);
            
            
            if strcmp(upcat,'NURSERY AND PRIMARY')
                
%                 load table.mat
                load(['C:/King''s Delight Records' '/' 'table.mat']);
                ltt = table(:,1);
                for i= 1:length(ltt)
                    load(['C:/King''s Delight Records' '/' folder '/' upcat '/' upclass '/' upterm '/' ltt{i} '.mat']);
                    fgt = string(pdata(:,2));
                    ghy = find(fgt == upregno);
                    pdata{ghy,3} = table{i,2};
                    pdata{ghy,4} = table{i,3};
                    pdata{ghy,5} = table{i,4};
                    pdata{ghy,6} = table{i,5};
                    fin_score = str2double(table{i,2}) + str2double(table{i,3}) + str2double(table{i,4}) + str2double(table{i,5});
                    pdata{ghy,7} = num2str(fin_score);
                    gradd = pdata{ghy,7};
                    grad = str2num(gradd);
                    if grad >= 70
                        g = 'A'
                    elseif grad >=60 & grad < 70
                        g = 'B'
                    elseif grad >=50 & grad < 60
                        g = 'C'
                    elseif grad >=45 & grad < 50
                        g = 'D'
                    elseif grad >=40 & grad < 45
                        g = 'E'
                    else
                        g = 'F'    
                    end
                    pdata{ghy,8} = g
                    save (['C:/King''s Delight Records' '/' folder '/' upcat '/' upclass '/' upterm '/' ltt{i} '.mat'], 'pdata');
                end
                
                
            else
            
                load(['C:/King''s Delight Records' '/' 'table.mat'])
                ltt = table(:,1);
                for i= 1:length(ltt)
                    load(['C:/King''s Delight Records' '/' folder '/' upcat '/' upclass '/' upterm '/' ltt{i} '.mat']);
                    fgt = string(data(:,2));
                    ghy = find(fgt == upregno);
                    data{ghy,3} = table{i,2};
                    data{ghy,4} = table{i,3};
                    data{ghy,5} = table{i,4};
                    fin_score = str2double(table{i,2}) + str2double(table{i,3}) + str2double(table{i,4});
                    data{ghy,6} = num2str(fin_score);
                    gradd = data{ghy,6};
                    grad = str2num(gradd);
                    if grad >= 70
                        g = 'A'
                    elseif grad >=60 & grad < 70
                        g = 'B'
                    elseif grad >=50 & grad < 60
                        g = 'C'
                    elseif grad >=45 & grad < 50
                        g = 'D'
                    elseif grad >=40 & grad < 45
                        g = 'E'
                    else
                        g = 'F'    
                    end
                    data{ghy,7} = g;
                    save (['C:/King''s Delight Records' '/' folder '/' upcat '/' upclass '/' upterm '/' ltt{i} '.mat'], 'data');
                end
            end
                
            if strcmp(upcat,'JUNIOR')
                tab = string(table(:,1))
                guy = find(tab == 'SOCIAL STUDIES') 
                yug = find(tab == 'CIVIC EDUCATION')
                
                meg = find(tab == 'BASIC SCIENCE')
                mag = find(tab == 'BASIC TECHNOLOGY')
                mug = find(tab == 'P.H.E')
                mig = find(tab == 'COMPUTER SCIENCE')
                
                ca1 = (str2double(table(guy,2)) + str2double(table(yug,2)))/2;
                ca2 = (str2double(table(guy,3)) + str2double(table(yug,3)))/2;
                exam = (str2double(table(guy,4)) + str2double(table(yug,4)))/2;
                totl = round(ca1,0) + round(ca2,0) + round(exam,0);
                
                
                load(['C:/King''s Delight Records' '/' folder '/' upcat '/' upclass '/' upterm '/' 'NATIONAL VALUES.mat']);
                
                fgt = string(data(:,2));
                ghy = find(fgt == upregno)
                data{ghy,3} = num2str(round(ca1,0));
                data{ghy,4} = num2str(round(ca2,0));
                data{ghy,5} = num2str(round(exam,0));
                data{ghy,6} = num2str(totl);
                gradd = data{ghy,6};
                grad = str2num(gradd)
                    if grad >= 70
                        g = 'A'
                    elseif grad >=60 & grad < 70
                        g = 'B'
                    elseif grad >=50 & grad < 60
                        g = 'C'
                    elseif grad >=45 & grad < 50
                        g = 'D'
                    elseif grad >=40 & grad < 45
                        g = 'E'
                    else
                        g = 'F'    
                    end
                 data{ghy,7} = g
                 save(['C:/King''s Delight Records' '/' folder '/' upcat '/' upclass '/' upterm '/' 'NATIONAL VALUES.mat'], 'data');
                
                 
               ca12 = (str2double(table(meg,2)) + str2double(table(mag,2)) + str2double(table(mug,2)) + str2double(table(mig,2)))/4
               ca22 = (str2double(table(meg,3)) + str2double(table(mag,3)) + str2double(table(mug,3)) + str2double(table(mig,3)))/4
               exam2 = (str2double(table(meg,4)) + str2double(table(mag,4)) + str2double(table(mug,4)) + str2double(table(mig,4)))/4
               totl2 = round(ca12,0) + round(ca22,0) + round(exam2,0)
                 
                load(['C:/King''s Delight Records' '/' folder '/' upcat '/' upclass '/' upterm '/' 'BASIC SCIENCE AND TECH.mat']);
                fgt = string(data(:,2));
                ghy = find(fgt == upregno)
                data{ghy,3} = num2str(round(ca12,0));
                data{ghy,4} = num2str(round(ca22,0));
                data{ghy,5} = num2str(round(exam2,0));
                data{ghy,6} = num2str(totl2);
                gradd = data{ghy,6}
                grad = str2num(gradd)
                    if grad >= 70
                        g = 'A'
                    elseif grad >=60 & grad < 70
                        g = 'B'
                    elseif grad >=50 & grad < 60
                        g = 'C'
                    elseif grad >=45 & grad < 50
                        g = 'D'
                    elseif grad >=40 & grad < 45
                        g = 'E'
                    else
                        g = 'F'    
                    end
                 data{ghy,7} = g
                 save(['C:/King''s Delight Records' '/' folder '/' upcat '/' upclass '/' upterm '/' 'BASIC SCIENCE AND TECH.mat'], 'data');
%                 datt = 
            end   
                msgbox('Record update succesful!')
catch
    msgbox('Request not possible')
end
