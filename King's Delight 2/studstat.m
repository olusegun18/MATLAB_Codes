function varargout = studstat(varargin)
% STUDSTAT MATLAB code for studstat.fig
%      STUDSTAT, by itself, creates a new STUDSTAT or raises the existing
%      singleton*.
%
%      H = STUDSTAT returns the handle to a new STUDSTAT or the handle to
%      the existing singleton*.
%
%      STUDSTAT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STUDSTAT.M with the given input arguments.
%
%      STUDSTAT('Property','Value',...) creates a new STUDSTAT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before studstat_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to studstat_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help studstat

% Last Modified by GUIDE v2.5 02-Jan-2021 11:30:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @studstat_OpeningFcn, ...
                   'gui_OutputFcn',  @studstat_OutputFcn, ...
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


% --- Executes just before studstat is made visible.
function studstat_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to studstat (see VARARGIN)

% Choose default command line output for studstat
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes studstat wait for user response (see UIRESUME)
% uiwait(handles.figure1);


fig = handles.figure1
movegui(fig,'center')

load(['C:/King''s Delight Records' '/' 'sessions.mat']);
fill= [{'Select Session'}; sessions(3:end,1)];
set(handles.session,'String',fill);





% --- Outputs from this function are returned to the command line.
function varargout = studstat_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in session.
function session_Callback(hObject, eventdata, handles)
% hObject    handle to session (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns session contents as cell array
%        contents{get(hObject,'Value')} returns selected item from session


% --- Executes during object creation, after setting all properties.
function session_CreateFcn(hObject, eventdata, handles)
% hObject    handle to session (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in category.
function category_Callback(hObject, eventdata, handles)
% hObject    handle to category (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns category contents as cell array
%        contents{get(hObject,'Value')} returns selected item from category

idx = get(handles.category,'Value');
items = get(handles.category,'String');
value = items{idx};

            if strcmp('NURSERY AND PRIMARY',value)
                file = [{'NURSERY 1'},{'NURSERY 2'},{'NURSERY 3'},{'PRIMARY 1'},{'PRIMARY 2'},{'PRIMARY 3'},...
                    {'PRIMARY 4'},{'PRIMARY 5'}];
                set(handles.class,'String',file)
                load(['C:/King''s Delight Records' '/' 'n&p.mat'])
                set(handles.subject,'String',np(:,1))
                
            elseif strcmp('>>>',value)
                file = {''};
                set(handles.class,'String',file)
                set(handles.subject,'String',file)
                
            elseif strcmp('JUNIOR',value)
                file = [{'JSS1'},{'JSS2'},{'JSS3'}];
                set(handles.class,'String',file)
                load(['C:/King''s Delight Records' '/' 'jss.mat']);
                set(handles.subject,'String',jss(:,1))
                
            elseif strcmp('SENIOR',value)
                file = [{'SSS1'},{'SSS2'},{'SSS3'}];
                set(handles.class,'String',file);
                load(['C:/King''s Delight Records' '/' 'sss.mat']);
                set(handles.subject,'String',sss(:,1));
            end

            
% --- Executes during object creation, after setting all properties.
function category_CreateFcn(hObject, eventdata, handles)
% hObject    handle to category (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

jkk = get(handles.session,'String')
sess = jkk{get(handles.session,'Value')}

jkm = get(handles.category,'String')
cat = jkm{get(handles.category,'Value')}

jkp = get(handles.class,'String')
cls = jkp{get(handles.class,'Value')}

jll = get(handles.subject,'String')
subj = jll{get(handles.subject,'Value')}

if strcmp(sess, 'Select Session')
    msgbox('Pick a session')
    return
elseif strcmp(cat, '>>>')
    msgbox('Pick a category')
    return
elseif strcmp(cls,'>>>')
    msgbox('Pick a class')
    return
elseif strcmp(subj,'>>>')
    msgbox('Pick a subject')
    return
    
else
    sess_split = regexp(sess,'/*', "split");
    date1 = sess_split(1);
    date2 = sess_split(2);
    folder = strcat(string(date1),'_',string(date2));
    folder = str2mat(folder);
    counter = 3;
    sublist1 = [];
    sublist2 = [];
    sublist3 = [];

    
    load(['C:/King''s Delight Records' '/' folder '/' cat '/' cls '/' 'FIRST TERM' '/' subj '.mat']);
    
    if strcmp(cat,'NURSERY AND PRIMARY')
        fgt = string(pdata(2:end,2))
        for i = 1: length(fgt)
            score = pdata(i+1,7)
            
            if ismissing(score) == 1
                score = {'0'}
            end
            sublist1 = [sublist1;score]
        
        end
        
    else
       fgt = string(data(2:end,2))
        for i = 1: length(fgt)
            score = data(i+1,6)
            
            if ismissing(score) == 1
                score = {'0'}
            end
            sublist1 = [sublist1;score]
        
        end  
    end
    
    load(['C:/King''s Delight Records' '/' folder '/' cat '/' cls '/' 'SECOND TERM' '/' subj '.mat']);
    
    if strcmp(cat,'NURSERY AND PRIMARY')
        fgt = string(pdata(2:end,2))
        for i = 1: length(fgt)
            score = pdata(i+1,7)
            
            if ismissing(score) == 1
                score = {'0'}
            end
            sublist2 = [sublist2;score]
        
        end
        
    else
       fgt = string(data(2:end,2))
        for i = 1: length(fgt)
            score = data(i+1,6)
            
            if ismissing(score) == 1
                score = {'0'}
            end
            sublist2 = [sublist2;score]
        
        end  
    end
    
    load(['C:/King''s Delight Records' '/' folder '/' cat '/' cls '/' 'THIRD TERM' '/' subj '.mat']);
    if strcmp(cat,'NURSERY AND PRIMARY')
        fgt = string(pdata(2:end,2))
        for i = 1: length(fgt)
            score = pdata(i+1,7)
            
            if ismissing(score) == 1
                score = {'0'}
            end
            sublist3 = [sublist3;score]
        
        end
        
    else
       fgt = string(data(2:end,2))
        for i = 1: length(fgt)
            score = data(i+1,6)
            
            if ismissing(score) == 1
                score = {'0'}
            end
            sublist3 = [sublist3;score]
        end  
    end
    
    final_sublist = (str2double(string(sublist1)) + str2double(string(sublist2)) + str2double(string(sublist3)))/counter
    final_score = round(final_sublist,0)
    kkk = unique(final_score)
    kkk = rmmissing(kkk)
    scc = sort(kkk,'descend')
    
    load(['C:/King''s Delight Records' '/' folder '/' cat '/' cls '/' 'FIRST TERM' '/' subj '.mat']);
    list = []
         if length(scc) < 4
             l = length(scc)
         else
             l = 4
         end
    
    if strcmp(cat,'NURSERY AND PRIMARY')
        
         
         for i = 1:l
             xtt = find(final_score == scc(i))
             for j = 1:length(xtt)
                 jlk = pdata(xtt(j)+1,1)
                 list = [list; jlk]  
             end
                 set(handles.(strcat('nam',string(i))),'String',list)
                 set(handles.(strcat('sc', string(i))),'String',scc(i))
                 list = [] 
            
         end
         
         
    else
         
         for i = 1:l
             xtt = find(final_score == scc(i))
             for j = 1:length(xtt)
                 jlk = data(xtt(j)+1,1)
                 list = [list; jlk]
             end
             set(handles.(strcat('nam',string(i))),'String',list)
             set(handles.(strcat('sc', string(i))),'String',scc(i))
             list = []
         end
        
    end
end




% --- Executes on selection change in class.
function class_Callback(hObject, eventdata, handles)
% hObject    handle to class (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns class contents as cell array
%        contents{get(hObject,'Value')} returns selected item from class

idx = get(handles.class,'Value');
items = get(handles.class,'String');
value = items{idx};

            


% --- Executes during object creation, after setting all properties.
function class_CreateFcn(hObject, eventdata, handles)
% hObject    handle to class (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in subject.
function subject_Callback(hObject, eventdata, handles)
% hObject    handle to subject (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns subject contents as cell array
%        contents{get(hObject,'Value')} returns selected item from subject


% --- Executes during object creation, after setting all properties.
function subject_CreateFcn(hObject, eventdata, handles)
% hObject    handle to subject (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
adminpage
