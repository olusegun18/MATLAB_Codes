function varargout = resultchecker(varargin)
% RESULTCHECKER MATLAB code for resultchecker.fig
%      RESULTCHECKER, by itself, creates a new RESULTCHECKER or raises the existing
%      singleton*.
%
%      H = RESULTCHECKER returns the handle to a new RESULTCHECKER or the handle to
%      the existing singleton*.
%
%      RESULTCHECKER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULTCHECKER.M with the given input arguments.
%
%      RESULTCHECKER('Property','Value',...) creates a new RESULTCHECKER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before resultchecker_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to resultchecker_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help resultchecker

% Last Modified by GUIDE v2.5 13-Dec-2020 14:48:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @resultchecker_OpeningFcn, ...
                   'gui_OutputFcn',  @resultchecker_OutputFcn, ...
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


% --- Executes just before resultchecker is made visible.
function resultchecker_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to resultchecker (see VARARGIN)

% Choose default command line output for resultchecker
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes resultchecker wait for user response (see UIRESUME)
% uiwait(handles.figure1);

h = handles.figure1;
movegui(h,'center')

% load sessions.mat
load(['C:/King''s Delight Records' '/' 'sessions.mat']);
fill= [{'Select Session'}; sessions(3:end,1)]
set(handles.sessiontype,'String',fill)


% --- Outputs from this function are returned to the command line.
function varargout = resultchecker_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in reporttype.
function reporttype_Callback(hObject, eventdata, handles)
% hObject    handle to reporttype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns reporttype contents as cell array
%        contents{get(hObject,'Value')} returns selected item from reporttype
idx5 = get(handles.reporttype,'Value');
items5 = get(handles.reporttype,'String');
ttp = items5{idx5};
file = [{'>>>'}, {'JUNIOR'}, {'SENIOR'}]
filee = [{'>>>'},{'JUNIOR'}, {'NURSERY AND PRIMARY'}, {'SENIOR'}]
if strcmp(ttp,'Termly Report')
    set(handles.termtype,'Enable','On')
    set(handles.sessiontype,'Enable','On')
    set(handles.classtypee,'Enable','On')
    set(handles.cattype,'String',filee)
elseif strcmp(ttp,'Yearly Report')
    set(handles.termtype,'Enable','Off')
    set(handles.sessiontype,'Enable','On')
    set(handles.classtypee,'Enable','On')
    set(handles.cattype,'String',filee)
elseif strcmp(ttp,'Over three sessions')
    set(handles.sessiontype,'Enable','Off')
    set(handles.termtype,'Enable','Off')
    set(handles.classtypee,'Enable','Off') 
    set(handles.cattype,'String',file)
end



% --- Executes during object creation, after setting all properties.
function reporttype_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reporttype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in sessiontype.
function sessiontype_Callback(hObject, eventdata, handles)
% hObject    handle to sessiontype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns sessiontype contents as cell array
%        contents{get(hObject,'Value')} returns selected item from sessiontype


% --- Executes during object creation, after setting all properties.
function sessiontype_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sessiontype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in cattype.
function cattype_Callback(hObject, eventdata, handles)
% hObject    handle to cattype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns cattype contents as cell array
%        contents{get(hObject,'Value')} returns selected item from cattype

idx = get(handles.cattype,'Value');
items = get(handles.cattype,'String');
value = items{idx};

            if strcmp('NURSERY AND PRIMARY',value)
                file = [{'NURSERY 1'},{'NURSERY 2'},{'NURSERY 3'},{'PRIMARY 1'},{'PRIMARY 2'},{'PRIMARY 3'},...
                    {'PRIMARY 4'},{'PRIMARY 5'}];
                set(handles.classtypee,'String',file)
                
            elseif strcmp('JUNIOR',value)
                file = [{'JSS1'},{'JSS2'},{'JSS3'}];
                set(handles.classtypee,'String',file)
                
            elseif strcmp('SENIOR',value)
                file = [{'SSS1'},{'SSS2'},{'SSS3'}];
                set(handles.classtypee,'String',file);
            end
            
            
% --- Executes during object creation, after setting all properties.
function cattype_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cattype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in classtype.
function classtype_Callback(hObject, eventdata, handles)
% hObject    handle to classtype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns classtype contents as cell array
%        contents{get(hObject,'Value')} returns selected item from classtype


% --- Executes during object creation, after setting all properties.
function classtype_CreateFcn(hObject, eventdata, handles)
% hObject    handle to classtype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in termtype.
function termtype_Callback(hObject, eventdata, handles)
% hObject    handle to termtype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns termtype contents as cell array
%        contents{get(hObject,'Value')} returns selected item from termtype


% --- Executes during object creation, after setting all properties.
function termtype_CreateFcn(hObject, eventdata, handles)
% hObject    handle to termtype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in regnotype.
function regnotype_Callback(hObject, eventdata, handles)
% hObject    handle to regnotype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns regnotype contents as cell array
%        contents{get(hObject,'Value')} returns selected item from regnotype


% --- Executes during object creation, after setting all properties.
function regnotype_CreateFcn(hObject, eventdata, handles)
% hObject    handle to regnotype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
idx1 = get(handles.reporttype,'Value');
items1 = get(handles.reporttype,'String');
rtp = items1{idx1};

idx2 = get(handles.sessiontype,'Value');
items2 = get(handles.sessiontype,'String');
stp = items2{idx2};

idx3 = get(handles.cattype,'Value');
items3 = get(handles.cattype,'String');
ctp = items3{idx3};
setappdata(0,'cat',ctp)

idx4 = get(handles.classtypee,'Value');
items4 = get(handles.classtypee,'String');
clp = items4{idx4}

idx5 = get(handles.termtype,'Value');
items5 = get(handles.termtype,'String');
ttp = items5{idx5};     
          
rgp = get(handles.regnotype,'String');  


if isempty(rgp)
    msgbox('Enter Reg. No')
    return
end


            if strcmp(rtp,'Termly Report')
                   
%                 load database.mat
            load(['C:/King''s Delight Records' '/' 'database.mat']);
            dtb = string(dbase(:,2));
            gty = find(dtb == rgp);
            if strcmp(stp,'Select Session')
                msgbox('You must select a session')
                return
            elseif strcmp(ctp,'>>>')
                   msgbox('You must select a category') 
                   return
            elseif isempty(gty)
                   msgbox('Student not registered','Error','error')
                   return   
            else
                name = dbase{gty,1}
                filer = [{name},{stp},{ttp},{rtp},{rgp},{clp}]
                setappdata(0,'file',filer);
                
               sess_split = regexp(stp,'/*', "split");
               date1 = sess_split(1);
               date2 = sess_split(2);
               folder = strcat(string(date1),'_',string(date2));
               folder = str2mat(folder);
               
%                mjj = dir([pwd '/' folder '/' ctp '/' clp '/' ttp '/']);
               mjj = dir(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' ttp '/']);
               jk = {mjj.name};
               list = [];
                for i= 1:length(jk)
                    jj = regexp(jk{i}, '\.mat', 'match');
                    if isempty(jj) == 0
                        list = [list, jk(i)]
                    end
                end
                
            end
                
                
                
            if strcmp(ctp,'NURSERY AND PRIMARY')
                  
%              load([pwd '/' folder '/' ctp '/' clp '/' ttp '/' 'ENGLISH LANGUAGE.mat']);
               load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' ttp '/' 'ENGLISH LANGUAGE.mat']);
               
               fgt = string(pdata(:,2));
               mko = find(fgt == rgp);
             if isempty(mko)
                msgbox('Results not available','Session or Class Error')
                return
             else
              
                sublist = []
                for i= 1:length(list)
%                     load([pwd '/' folder '/' ctp '/' clp '/' ttp '/' list{i}]);
                    load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' ttp '/' list{i}]); 
                    fgt = string(pdata(:,2));
                    mko = find(fgt == rgp);
                    jj = regexp(list{i}, '\.mat', 'split');
                    if isempty(mko)== 0
                        all_scores = pdata(2:end,7);
                    %all_score = string(all_scores);
                        all_scorrr = []
                        for i = 1:length(all_scores)
                            if isempty(all_scores{i}) == 0
                               all_scorrr = [all_scorrr,{all_scores{i}}]
                            end
                        end
                        all_scorrr = string(all_scorrr)
                        all_scorr = str2double(all_scorrr)
                            if length(all_scorrr) == 1
                                msgbox('Add at least one more result')
                                return
                            end
                            
                            all_sc = sort(all_scorr,'descend')
                            class_avg = sum(all_scorr)/length(all_scorr);
                            class_avg = round(class_avg,0);
                            mtt = str2num(pdata{mko,7})
                            vb = find(all_sc == mtt)
                            if length(vb) == 1
                               if vb == 1
                                  pos = ['1','st']
                               elseif vb == 2
                                  pos = ['2','nd']
                               elseif vb == 3
                                  pos = ['3','rd']
                               else
                                  pos = [num2str(vb),'th']
                               end
                            else
                                vb = vb(1)
                                if vb == 1
                                   pos = ['1','st']
                                elseif vb == 2
                                   pos = ['2','nd']
                                elseif vb == 3
                                   pos = ['3','rd']
                                else
                                   pos = [num2str(vb),'th']
                                end
                            end
                            
                            
                            if mtt >= 70
                                rem = 'Excellent'
                            elseif mtt >= 50 & mtt < 70
                                rem = 'Good'
                            elseif mtt >= 40 & mtt < 50
                                rem = 'Pass'
                            else
                                rem = 'Failed'
                            end
                            
                            sublist = [sublist;jj(1), pdata(mko,3), pdata(mko,4), pdata(mko,5), pdata(mko,6), pdata(mko,7),pdata(mko,8)...
                                      {num2str(max(all_scorr))},{num2str(min(all_scorr))},{num2str(class_avg)},{pos},{rem}];
                                   
                          totn = length(pdata(2:end,1));
                          setappdata(0,'tot',totn)
                    end
                end
                
%                 load treport.mat
                load(['C:/King''s Delight Records' '/' 'treport.mat']);
                nprep = treport(1,1:end)
                treport = [nprep;sublist]
%                 save treport.mat treport 
                save(['C:/King''s Delight Records' '/' 'treport.mat']);
             end
              
               
                        
                        
                        
                        
               else
                
%                load([pwd '/' folder '/' ctp '/' clp '/' ttp '/' 'ENGLISH LANGUAGE.mat']);
               load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' ttp '/' 'ENGLISH LANGUAGE.mat']);
               
               fgt = string(data(:,2));
               mko = find(fgt == rgp);
               
               
             if isempty(mko)
                msgbox('Results not available','Session or Class Error')
                return
             else
              
                sublist = []
                for i= 1:length(list)
%                     load([pwd '/' folder '/' ctp '/' clp '/' ttp '/' list{i}]);
                    load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' ttp '/' list{i}]);
                     
                    fgt = string(data(:,2));
                    mko = find(fgt == rgp);
                    jj = regexp(list{i}, '\.mat', 'split');
                    if isempty(mko)== 0
                        all_scores = data(2:end,6)
                    %all_score = string(all_scores);
                        all_scorrr = []
                        for i = 1:length(all_scores)
                            if isempty(all_scores{i}) == 0
                               all_scorrr = [all_scorrr,{all_scores{i}}]
                            end
                        end
                        all_scorrr = string(all_scorrr)
                        all_scorr = str2double(all_scorrr)
                            if length(all_scorrr) == 1
                                msgbox('Add at least one more result')
                                return
                            end
                            all_sc = sort(all_scorr,'descend')
                            class_avg = sum(all_scorr)/length(all_scorr)
                            class_avg = round(class_avg,0)
                            mtt = str2num(data{mko,6})
                            vb = find(all_sc == mtt)
                            if length(vb) == 1
                               if vb == 1
                                  pos = ['1','st']
                               elseif vb == 2
                                  pos = ['2','nd']
                               elseif vb == 3
                                  pos = ['3','rd']
                               else
                                  pos = [num2str(vb),'th']
                               end
                            else
                                vb = vb(1)
                                if vb == 1
                                   pos = ['1','st']
                                elseif vb == 2
                                   pos = ['2','nd']
                                elseif vb == 3
                                   pos = ['3','rd']
                                else
                                   pos = [num2str(vb),'th']
                                end
                            end
                            
                            
                            if mtt >= 70
                                rem = 'Excellent'
                            elseif mtt >= 50 & mtt < 70
                                rem = 'Good'
                            elseif mtt >= 40 & mtt < 50
                                rem = 'Pass'
                            else
                                rem = 'Failed'
                            end
                            
                            sublist = [sublist;jj(1),data(mko,3),data(mko,4),data(mko,5), data(mko,6), data(mko,7),...
                                       {num2str(max(all_scorr))},{num2str(min(all_scorr))},{num2str(class_avg)},{pos},{rem}];
                                   
                          totn = length(data(2:end,1));
                          setappdata(0,'tot',totn)
                    end
                end
                
%                 load report.mat
                load(['C:/King''s Delight Records' '/' 'report.mat']);
                rep = reportt(1,1:end)
                reportt = [rep;sublist]
%                 save report.mat reportt
                save(['C:/King''s Delight Records' '/' 'report.mat'],'reportt');   
                    
             end      
            end
           
            
            
                
            elseif strcmp(rtp,'Yearly Report')
                
                
%              load database.mat
             load(['C:/King''s Delight Records' '/' 'database.mat']);
            dtb = string(dbase(:,2));
            gty = find(dtb == rgp);
            if strcmp(stp,'Select Session')
                msgbox('You must select a session')
                return
            elseif strcmp(ctp,'>>>')
                   msgbox('You must select a category') 
                   return
            elseif isempty(gty)
                   msgbox('Student not registered','Error','error')
                   return   
            else
                name = dbase{gty,1}
                filer = [{name},{stp},{ttp},{rtp},{rgp},{clp}]
                setappdata(0,'file',filer);
                
               sess_split = regexp(stp,'/*', "split");
               date1 = sess_split(1);
               date2 = sess_split(2);
               folder = strcat(string(date1),'_',string(date2));
               folder = str2mat(folder);
               ttp = 'FIRST TERM'
               
%                mjj = dir([pwd '/' folder '/' ctp '/' clp '/' ttp '/']);
               mjj = dir(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' ttp '/']);
               jk = {mjj.name};
               list = [];
                for i= 1:length(jk)
                    jj = regexp(jk{i}, '\.mat', 'match');
                    if isempty(jj) == 0
                        list = [list, jk(i)]
                    end
                end
                
            end
                sublist1 = [];
                sublist2 = [];
                sublist3 = [];
                counter = 3
                
                
             if strcmp(ctp,'NURSERY AND PRIMARY')
                    
%                 load([pwd '/' folder '/' ctp '/' clp '/' 'FIRST TERM' '/' 'ENGLISH LANGUAGE.mat']);
                load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'FIRST TERM' '/' 'ENGLISH LANGUAGE.mat']);
                fgt = string(pdata(:,2));
                mko = find(fgt == rgp)
                nkv1 = pdata(mko,3)
                nkv2 = pdata(mko,4)
                nkv3 = pdata(mko,5)
                nkv4 = pdata(mko,6)
                if isempty(mko)
                    msgbox('Student not registered')
                    return
                end
                if ismissing(nkv1) | ismissing(nkv2) | ismissing(nkv3) | ismissing(nkv4) 
                    counter = counter - 1
                    for i= 1:length(list)
%                     load([pwd '/' folder '/' ctp '/' clp '/' 'FIRST TERM' '/' list{i}])
                    load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'FIRST TERM' '/' list{i}]);
                    pdata(mko,3) = {'0'}
                    pdata(mko,4) = {'0'}
                    pdata(mko,5) = {'0'}
                    pdata(mko,6) = {'0'}
                    pdata(mko,7) = {'0'}
%                     save([pwd '/' folder '/' ctp '/' clp '/' 'FIRST TERM' '/' list{i}],'pdata')
                    save(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'FIRST TERM' '/' list{i}],'pdata');
                    end
                end
                
                
%                 load([pwd '/' folder '/' ctp '/' clp '/' 'SECOND TERM' '/' 'ENGLISH LANGUAGE.mat']);
                load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'SECOND TERM' '/' 'ENGLISH LANGUAGE.mat']);
                fgt = string(pdata(:,2))
                mko = find(fgt == rgp)
                nkv1 = pdata(mko,3)
                nkv2 = pdata(mko,4)
                nkv3 = pdata(mko,5)
                nkv4 = pdata(mko,6)
                if ismissing(nkv1) | ismissing(nkv2) | ismissing(nkv3)| ismissing(nkv4)
                    counter = counter - 1
                    for i= 1:length(list)
%                     load([pwd '/' folder '/' ctp '/' clp '/' 'SECOND TERM' '/' list{i}])
                    load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'SECOND TERM' '/' list{i}]);
                    pdata(mko,3) = {'0'}
                    pdata(mko,4) = {'0'}
                    pdata(mko,5) = {'0'}
                    pdata(mko,6) = {'0'}
                    pdata(mko,7) = {'0'}
%                     save([pwd '/' folder '/' ctp '/' clp '/' 'SECOND TERM' '/' list{i}],'pdata');
                    save(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'SECOND TERM' '/' list{i}],'pdata');
                    end
                end
                
                
%                 load([pwd '/' folder '/' ctp '/' clp '/' 'THIRD TERM' '/' 'ENGLISH LANGUAGE.mat']);
                load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'THIRD TERM' '/' 'ENGLISH LANGUAGE.mat']);
                fgt = string(pdata(:,2));
                mko = find(fgt == rgp);
                nkv1 = pdata(mko,3);
                nkv2 = pdata(mko,4);
                nkv3 = pdata(mko,5);
                nkv4 = pdata(mko,6);
                if ismissing(nkv1) | ismissing(nkv2) | ismissing(nkv3)| ismissing(nkv4)
                    counter = counter -1
                    for i= 1:length(list)
%                     load([pwd '/' folder '/' ctp '/' clp '/' 'THIRD TERM' '/' list{i}])
                    load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'THIRD TERM' '/' list{i}]);
                    pdata(mko,3) = {'0'}
                    pdata(mko,4) = {'0'}
                    pdata(mko,5) = {'0'}
                    pdata(mko,6) = {'0'}
                    pdata(mko,7) = {'0'}
%                     save([pwd '/' folder '/' ctp '/' clp '/' 'THIRD TERM' '/' list{i}],'pdata');
                    save(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'THIRD TERM' '/' list{i}],'pdata');
                    end
                end
                
                
                
                for i= 1:length(list)
%                     load([pwd '/' folder '/' ctp '/' clp '/' 'FIRST TERM' '/' list{i}]);
                    load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'FIRST TERM' '/' list{i}]);
                    fgt = string(pdata(:,2));
                    mko = find(fgt == rgp);
                    if isempty(mko)== 0
                        all_score1 = pdata(mko,1:7);
                        sublist1 = [sublist1;all_score1];
                    end
                end
                
                for i= 1:length(list)
%                     load([pwd '/' folder '/' ctp '/' clp '/' 'SECOND TERM' '/' list{i}]);
                    load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'SECOND TERM' '/' list{i}]);
                    fgt = string(pdata(:,2));
                    mko = find(fgt == rgp);
                    if isempty(mko)== 0
                        all_score2 = pdata(mko,1:7);
                        sublist2 = [sublist2;all_score2];
                    end
                end
            
               listt = []
               for i= 1:length(list)
%                     load([pwd '/' folder '/' ctp '/' clp '/' 'THIRD TERM' '/' list{i}]);
                    load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'THIRD TERM' '/' list{i}]);
                    fgt = string(pdata(:,2));
                    mko = find(fgt == rgp);
                    jj = regexp(list{i}, '\.mat', 'split');
                    if isempty(mko)== 0
                        all_score3 = pdata(mko,1:7);
                        sublist3 = [sublist3;all_score3];
                        listt = [listt; jj(1)]
                    end
               end
               
                ca1_sublist = (str2double(string(sublist1(1:end,3))) + str2double(string(sublist2(1:end,3))) + str2double(string(sublist3(1:end,3))))/counter
                ca2_sublist = (str2double(string(sublist1(1:end,4))) + str2double(string(sublist2(1:end,4))) + str2double(string(sublist3(1:end,4))))/counter
                ca3_sublist = (str2double(string(sublist1(1:end,5))) + str2double(string(sublist2(1:end,5))) + str2double(string(sublist3(1:end,5))))/counter
                exam_sublist = (str2double(string(sublist1(1:end,6))) + str2double(string(sublist2(1:end,6))) + str2double(string(sublist3(1:end,6))))/counter
              
                Tota =  round(ca1_sublist,0) + round(ca2_sublist,0) + round(ca3_sublist,0) + round(exam_sublist,0)
                Total = Tota
                Total(:,1) = Total
                T_grade = []
                remark = []
                grade = []
                ca1=[]
                ca2 =[]
                ca3 =[]
                exam = []
                for i = 1: length(Total)
                if Total(i,1) >= 70
                        g = 'A'
                elseif Total(i,1) >=60 & Total(i,1) < 70
                        g = 'B'
                elseif Total(i,1) >=50 & Total(i,1) < 60
                        g = 'C'
                elseif Total(i,1) >=45 & Total(i,1) < 50
                        g = 'D'
                elseif Total(i,1) >=40 & Total(i,1) < 45
                        g = 'E'
                elseif Total(i,1) < 40
                        g = 'F'    
                end
                
                if Total(i,1) >= 70
                   rem = 'Excellent'
                elseif Total(i,1) >= 50 & Total(i,1) < 70
                       rem = 'Good'
                elseif Total(i,1) >= 40 & Total(i,1) < 50
                       rem = 'Pass'
                else
                    rem = 'Failed'
                end
                
                grade = [grade;{g}]
                ca1 = [ca1; {num2str(round(ca1_sublist(i),0))}]
                ca2 = [ca2; {num2str(round(ca2_sublist(i),0))}]
                ca3 = [ca3; {num2str(round(ca3_sublist(i),0))}]
                exam = [exam; {num2str(round(exam_sublist(i),0))}]
                T_grade = [T_grade; {num2str(Total(i,1))}]
                remark = [remark;{rem}]
                end
                Res(:,1) = listt
%                 Res(:,2) = sublist1(1:end,1)
%                 Res(:,3) = sublist1(1:end,2)
                Res(:,2) = ca1
                Res(:,3) = ca2
                Res(:,4) = ca3
                Res(:,5) = exam
                Res(:,6) = T_grade
                Res(:,7) = grade
                Res(:,8) = remark
             
                totn = length(pdata(2:end,1));
                setappdata(0,'tot',totn)
                
%                 load npreport.mat
                load(['C:/King''s Delight Records' '/' 'npreport.mat']);
                rep = npreportt(1,1:8)
                npreportt = [rep;Res]
%                 save npreport.mat npreportt
                save(['C:/King''s Delight Records' '/' 'npreport.mat'],'npreportt');
                    
                    
                    
                else
                
%                 load([pwd '/' folder '/' ctp '/' clp '/' 'FIRST TERM' '/' 'ENGLISH LANGUAGE.mat']);
                load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'FIRST TERM' '/' 'ENGLISH LANGUAGE.mat']);
                fgt = string(data(:,2));
                mko = find(fgt == rgp)
                nkv1 = data(mko,3)
                nkv2 = data(mko,4)
                nkv3 = data(mko,5)
                
                if isempty(mko)
                    msgbox('Student not registered')
                    return
                end
                
                if ismissing(nkv1) | ismissing(nkv2) | ismissing(nkv3)
                    counter = counter -1
                    for i= 1:length(list)
%                     load([pwd '/' folder '/' ctp '/' clp '/' 'FIRST TERM' '/' list{i}])
                        load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'FIRST TERM' '/' list{i}]);
                        data(mko,3) = {'0'}
                        data(mko,4) = {'0'}
                        data(mko,5) = {'0'}
%                     save([pwd '/' folder '/' ctp '/' clp '/' 'FIRST TERM' '/' list{i}],'data')
                        save(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'FIRST TERM' '/' list{i}],'data');
                    end
                end
                
                
%                 load([pwd '/' folder '/' ctp '/' clp '/' 'SECOND TERM' '/' 'ENGLISH LANGUAGE.mat']);
                load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'SECOND TERM' '/' 'ENGLISH LANGUAGE.mat']);
                fgt = string(data(:,2))
                mko = find(fgt == rgp)
                nkv1 = data(mko,3)
                nkv2 = data(mko,4)
                nkv3 = data(mko,5)
                if ismissing(nkv1) | ismissing(nkv2) | ismissing(nkv3)
                    counter = counter -1
                    for i= 1:length(list)
%                     load([pwd '/' folder '/' ctp '/' clp '/' 'SECOND TERM' '/' list{i}])
                    load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'SECOND TERM' '/' list{i}]);
                    data(mko,3) = {'0'}
                    data(mko,4) = {'0'}
                    data(mko,5) = {'0'}
%                     save([pwd '/' folder '/' ctp '/' clp '/' 'SECOND TERM' '/' list{i}],'data');
                    save(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'SECOND TERM' '/' list{i}],'data');
                    end
                end
                
                
%                 load([pwd '/' folder '/' ctp '/' clp '/' 'THIRD TERM' '/' 'ENGLISH LANGUAGE.mat']);
                load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'THIRD TERM' '/' 'ENGLISH LANGUAGE.mat']);
                fgt = string(data(:,2));
                mko = find(fgt == rgp);
                nkv1 = data(mko,3);
                nkv2 = data(mko,4);
                nkv3 = data(mko,5);
                if ismissing(nkv1) | ismissing(nkv2) | ismissing(nkv3)
                    counter = counter -1
                    for i= 1:length(list)
%                     load([pwd '/' folder '/' ctp '/' clp '/' 'THIRD TERM' '/' list{i}])
                    load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'THIRD TERM' '/' list{i}]);
                    data(mko,3) = {'0'}
                    data(mko,4) = {'0'}
                    data(mko,5) = {'0'}
%                     save([pwd '/' folder '/' ctp '/' clp '/' 'THIRD TERM' '/' list{i}],'data');
                    save(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'THIRD TERM' '/' list{i}],'data');
                    end
                end
                
                
                
                for i= 1:length(list)
%                     load([pwd '/' folder '/' ctp '/' clp '/' 'FIRST TERM' '/' list{i}]);
                    load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'FIRST TERM' '/' list{i}]);
                    fgt = string(data(:,2));
                    mko = find(fgt == rgp);
                    if isempty(mko)== 0
                        all_score1 = data(mko,1:6);
                        sublist1 = [sublist1;all_score1];
                    end
                end
                
                for i= 1:length(list)
%                     load([pwd '/' folder '/' ctp '/' clp '/' 'SECOND TERM' '/' list{i}]);
                    load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'SECOND TERM' '/' list{i}]);
                    fgt = string(data(:,2));
                    mko = find(fgt == rgp);
                    if isempty(mko)== 0
                        all_score2 = data(mko,1:6);
                        sublist2 = [sublist2;all_score2];
                    end
                end
            
               listt = []
               for i= 1:length(list)
%                     load([pwd '/' folder '/' ctp '/' clp '/' 'THIRD TERM' '/' list{i}]);
                    load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'THIRD TERM' '/' list{i}]);
                    fgt = string(data(:,2));
                    mko = find(fgt == rgp);
                    jj = regexp(list{i}, '\.mat', 'split');
                    if isempty(mko)== 0
                        all_score3 = data(mko,1:6);
                        sublist3 = [sublist3;all_score3];
                        listt = [listt; jj(1)]
                    end
               end
               
                ca1_sublist = (str2double(string(sublist1(1:end,3))) + str2double(string(sublist2(1:end,3))) + str2double(string(sublist3(1:end,3))))/counter
                ca2_sublist = (str2double(string(sublist1(1:end,4))) + str2double(string(sublist2(1:end,4))) + str2double(string(sublist3(1:end,4))))/counter
                exam_sublist = (str2double(string(sublist1(1:end,5))) + str2double(string(sublist2(1:end,5))) + str2double(string(sublist3(1:end,5))))/counter
              
                Tota =  round(ca1_sublist,0) + round(ca2_sublist,0) + round(exam_sublist,0)
                Total = Tota
                Total(:,1) = Total
                T_grade = []
                remark = []
                grade = []
                ca1=[]
                ca2 =[]
                exam = []
                for i = 1: length(Total)
                if Total(i,1) >= 70
                        g = 'A'
                elseif Total(i,1) >=60 & Total(i,1) < 70
                        g = 'B'
                elseif Total(i,1) >=50 & Total(i,1) < 60
                        g = 'C'
                elseif Total(i,1) >=45 & Total(i,1) < 50
                        g = 'D'
                elseif Total(i,1) >=40 & Total(i,1) < 45
                        g = 'E'
                elseif Total(i,1) < 40
                        g = 'F'    
                end
                
                if Total(i,1) >= 70
                   rem = 'Excellent'
                elseif Total(i,1) >= 50 & Total(i,1) < 70
                       rem = 'Good'
                elseif Total(i,1) >= 40 & Total(i,1) < 50
                       rem = 'Pass'
                else
                    rem = 'Failed'
                end
                
                grade = [grade;{g}]
                ca1 = [ca1; {num2str(round(ca1_sublist(i),0))}]
                ca2 = [ca2; {num2str(round(ca2_sublist(i),0))}]
                exam = [exam; {num2str(round(exam_sublist(i),0))}]
                T_grade = [T_grade; {num2str(Total(i,1))}]
                remark = [remark;{rem}]
                end
                
                Res(:,1) = listt
%                 Res(:,2) = sublist1(1:end,1)
%                 Res(:,3) = sublist1(1:end,2)
                Res(:,2) = ca1
                Res(:,3) = ca2
                Res(:,4) = exam
                Res(:,5) = T_grade
                Res(:,6) = grade
                Res(:,7) = remark
             
                totn = length(data(2:end,1));
                setappdata(0,'tot',totn)
                
%                 load report.mat
                load(['C:/King''s Delight Records' '/' 'report.mat']);
                rep = reportt(1,1:7)
                yearreportt = [rep;Res]
%                 save yearreport.mat yearreportt
                load(['C:/King''s Delight Records' '/' 'yearreport.mat'],'yearreportt');
                
             end
                
            
            elseif strcmp(rtp,'Over three sessions')
                
                
                if strcmp(ctp,'JUNIOR')
                    classes = [{'JSS1'},{'JSS2'},{'JSS3'}]
                elseif strcmp(ctp,'SENIOR')
                    classes = [{'SSS1'},{'SSS2'},{'SSS3'}]
                end
                
%             load database.mat
            load(['C:/King''s Delight Records' '/' 'database.mat']);
            dtb = string(dbase(:,2));
            gty = find(dtb == rgp);
            if strcmp('>>>','Select Session')
                msgbox('You must select a category')
                return
            elseif isempty(gty)
                   msgbox('Student not registered','Error','error')
                   return   
            else
                
                name = dbase{gty,1}
                filer = [{name},{ctp},{rgp},{rtp}]
                setappdata(0,'file',filer);
                              
                
%                 load database.mat
                load(['C:/King''s Delight Records' '/' 'database.mat']);
               
                db = string(dbase(:,2));
                jjj = find(db == rgp);
                sessm = [];
                sublist = []
                
       
                for i = 1: length(jjj)
                    nkk = dbase{jjj(i),4};
                    mth = dbase(jjj,3)
                    clss = dbase{jjj,5};
                    name = dbase{jjj,1};
                  if strcmp(rgp, dbase{jjj(1),2}) & strcmp(nkk,ctp)
                     sessm = [sessm,{mth},{clss}]
                  else
                    msgbox('Not found')
                    return
                  end
                end
                
                folder = string(sessm{1})
                clp = string(sessm{2})
                clp = str2mat(clp);
                lul = clp;
                folder = str2mat(folder);
                fff = folder;
                
                 
%                mjj = dir([pwd '/' folder '/' ctp '/' clp '/' 'FIRST TERM' '/']);
               mjj = dir(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' 'FIRST TERM' '/']);
               jk = {mjj.name};
               list = [];
                for i= 1:length(jk)
                    jj = regexp(jk{i}, '\.mat', 'match');
                    if isempty(jj) == 0
                        list = [list, jk(i)]
                    end
                end
                
            end
            
            no = str2double(clp(4))
            
            terms = [{'FIRST TERM'},{'SECOND TERM'},{'THIRD TERM'}]
            w = 0
            
            for i = 1:4-no
                for j = 1:3
                    for k = 1:length(list)
%                         load([pwd '/' folder '/' ctp '/' clp '/' terms{j} '/' list{k}]);
                        load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' terms{j} '/' list{k}]);
                        fgt = string(data(:,2))
                        mko = find(fgt == rgp)
                           if isempty(mko) == 0
                              w = w+1
                              nkv1 = data(mko,3)
                              nkv2 = data(mko,4)
                              nkv3 = data(mko,5)
                              nkv4 = data(mko,6)
                    
                              if ismissing(nkv1) | ismissing(nkv2) | ismissing(nkv3)| ismissing(nkv4)
                                  data(mko,3) = {'0'}
                                  data(mko,4) = {'0'}
                                  data(mko,5) = {'0'}
                                  data(mko,6) = {'0'}
%                                   save([pwd '/' folder '/' ctp '/' clp '/' terms{j} '/' list{k}],'data');
                                  save(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' terms{j} '/' list{k}],'data');
                               end
                         
%                             load([pwd '/' folder '/' ctp '/' clp '/' terms{j} '/' list{k}])
                            load(['C:/King''s Delight Records' '/' folder '/' ctp '/' clp '/' terms{j} '/' list{k}]);
                            all_score = data(mko,1:6);
                            sublist = [sublist;all_score];
                           end
                     end
                end
                sess_split = regexp(folder,'_*', "split");
                date1 = str2double(sess_split{1}) + 1;
                date2 = str2double(sess_split{2}) + 1;
                folder = strcat(string(date1),'_',string(date2));
                folder = str2mat(folder)
                
                no = no+1
                clp = strcat('JSS',string(no))  
                clp = str2mat(clp)
%                 clp = str2mat(clp)
            end
            z = 3*i
            slt = (length(sublist))/z
            
            
            n = 1;
            fj = slt;
            
            rest = sublist(n:slt,1:3)
%             save thress.mat rest  
            save(['C:/King''s Delight Records' '/' 'thress.mat'],'rest');
%             load thress.mat
            load(['C:/King''s Delight Records' '/' 'thress.mat']);
            rest(:,:) = {'0'}
%             save thress.mat rest
            save(['C:/King''s Delight Records' '/' 'thress.mat'],'rest');
          
          
            
            for f = 1:z
                mtu = sublist(n:slt,3:5)
%                 load thress.mat
                load(['C:/King''s Delight Records' '/' 'thress.mat']);
                rest = str2double(string(rest(:,:)))
                rest = rest + str2double(string(mtu))
%                 save thress.mat rest
                save(['C:/King''s Delight Records' '/' 'thress.mat'],'rest');
                
                n = n+fj
                slt = slt+fj
            end
         
             
%             load thress.mat
            load(['C:/King''s Delight Records' '/' 'thress.mat']);
            jktu = str2double(string(rest));
            ca1_sub = jktu(:,1)/z
            ca2_sub = jktu(:,2)/z
            exam_sub = jktu(:,3)/z
            
           
            Tota = round(ca1_sub,0)+ round(ca2_sub,0) + round(exam_sub,0)
            Total = Tota
            Total(:,1) = Total
            T_grade = []
            remark = []
            grade = []
            ca1=[]
            ca2 =[]
            exam = []
           for i = 1: length(Total)
                if Total(i,1) >= 70
                        g = 'A'
                elseif Total(i,1) >=60 & Total(i,1) < 70
                        g = 'B'
                elseif Total(i,1) >=50 & Total(i,1) < 60
                        g = 'C'
                elseif Total(i,1) >=45 & Total(i,1) < 50
                        g = 'D'
                elseif Total(i,1) >=40 & Total(i,1) < 45
                        g = 'E'
                elseif Total(i,1) < 40
                        g = 'F'    
                end
                
                if Total(i,1) >= 70
                   rem = 'Excellent'
                elseif Total(i,1) >= 50 & Total(i,1) < 70
                       rem = 'Good'
                elseif Total(i,1) >= 40 & Total(i,1) < 50
                       rem = 'Pass'
                else
                    rem = 'Failed'
                end
           
                
                grade = [grade;{g}]
                ca1 = [ca1; {num2str(round(ca1_sub(i),0))}]
                ca2 = [ca2; {num2str(round(ca2_sub(i),0))}]
                exam = [exam; {num2str(round(exam_sub(i),0))}]
                T_grade = [T_grade; {num2str(Total(i,1))}]
                remark = [remark;{rem}]
           end
                
           listt = [];

                for i= 1:length(list)
%                     load([pwd '/' fff '/' ctp '/' lul '/' 'FIRST TERM' '/' list{i}]);
                    load(['C:/King''s Delight Records' '/' fff '/' ctp '/' lul '/' 'FIRST TERM' '/' list{i}]);
                    fgt = string(data(:,2));
                    mko = find(fgt == rgp);
                    jj = regexp(list{i}, '\.mat', 'split');
                    if isempty(mko)== 0
                        listt = [listt; jj(1)]
                    end
               end
                
                
                Res(:,1) = listt
                Res(:,2) = ca1
                Res(:,3) = ca2
                Res(:,4) = exam
                Res(:,5) = T_grade
                Res(:,6) = grade
                Res(:,7) = remark
             
                totn = length(data(2:end,1));
                setappdata(0,'tot',totn)
                
%                 load report.mat
                load(['C:/King''s Delight Records' '/' 'report.mat']);
                rep = reportt(1,1:7)
                yearreportt = [rep;Res]
%                 save yearreport.mat yearreportt
                save(['C:/King''s Delight Records' '/' 'yearreport.mat'],'yearreportt');
            end


            close;
            resultprintout;




% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
studentregister


% --- Executes on selection change in classtypee.
function classtypee_Callback(hObject, eventdata, handles)
% hObject    handle to classtypee (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns classtypee contents as cell array
%        contents{get(hObject,'Value')} returns selected item from classtypee


% --- Executes during object creation, after setting all properties.
function classtypee_CreateFcn(hObject, eventdata, handles)
% hObject    handle to classtypee (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to regnotype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of regnotype as text
%        str2double(get(hObject,'String')) returns contents of regnotype as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to regnotype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
