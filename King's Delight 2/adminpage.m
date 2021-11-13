function varargout = adminpage(varargin)
% ADMINPAGE MATLAB code for adminpage.fig
%      ADMINPAGE, by itself, creates a new ADMINPAGE or raises the existing
%      singleton*.
%
%      H = ADMINPAGE returns the handle to a new ADMINPAGE or the handle to
%      the existing singleton*.
%
%      ADMINPAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ADMINPAGE.M with the given input arguments.
%
%      ADMINPAGE('Property','Value',...) creates a new ADMINPAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before adminpage_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to adminpage_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help adminpage

% Last Modified by GUIDE v2.5 23-Dec-2020 12:59:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @adminpage_OpeningFcn, ...
                   'gui_OutputFcn',  @adminpage_OutputFcn, ...
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


% --- Executes just before adminpage is made visible.
function adminpage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to adminpage (see VARARGIN)

% Choose default command line output for adminpage
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes adminpage wait for user response (see UIRESUME)
% uiwait(handles.figure1);
h = handles.figure1
movegui(h,'center')

% load(['C:/King''s Delight Records' '/' 'grade.mat']);
% set(handles.table,'data',grade)

load(['C:/King''s Delight Records' '/' 'database.mat']);
% m2 = string(dbase(2:end,:));
dbase(2:end,:) = cellstr(dbase(2:end,:))
jjl = [{'NAME'},{'REGISTRATION NO'},{'SESSION'},{'CATEGORY'},{'CLASS'}];
set(handles.table,'data',dbase(2:end,:),'Columnname',jjl)


% --- Outputs from this function are returned to the command line.
function varargout = adminpage_OutputFcn(hObject, eventdata, handles) 
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
lalpha = {'a','b','c','d','e','f','g','h','i','j',...
                'k','l','m','n','o','p','q','r','s','t','u',...
                'v','w','x','y','z'};
            ualpha = upper(lalpha);
            character = {'*','#','$','_','%','@','&','=','/'};
            num1 = string(randperm(999,1));
            num2 = string(randperm(99,1));
            lnumo = randperm(26,3);
            cnum= randperm(9,2);
            num1 = str2mat(num1);
            num2 = str2mat(num2);
            p1 = cell2mat(lalpha(lnumo(1)));
            p2 = cell2mat(ualpha(lnumo(2)));
            p3 = cell2mat(ualpha(lnumo(3)));
            p4 = cell2mat(character(cnum(1)));
            p5 = cell2mat(character(cnum(2)));
            
            passwd = [p1,num1,p5,p3,p2,num2,p4];
            
            set(handles.lab,'Visible','On');
            set(handles.lab_2,'Visible','On');
            set(handles.lab,'String',passwd);
            
            load (['C:/King''s Delight Records' '/' 'passwordd.mat'])
            passwrd = passwordd(:,:);
            passwordd = [passwrd;passwd];
            save passwordd.mat passwordd
            save(['C:/King''s Delight Records' '/' 'passwordd.mat'], 'passwordd')

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.keyed,'Visible','On')
set(handles.keylab,'Visible','On')
set(handles.del,'Visible','On')

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
studstat;

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
dashboard

% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in update.
function update_Callback(hObject, eventdata, handles)
% hObject    handle to update (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of update



% --- Executes on button press in ok.
function ok_Callback(hObject, eventdata, handles)
% hObject    handle to ok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

load(['C:/King''s Delight Records' '/' 'sessions.mat'])
            val = get(handles.update,'Value');
            if val == 0
                msgbox('Check the box to update session')
            else
            sess = sessions(:,1);
            last_session = sessions{length(sess),1};
            
            sess_split = regexp(last_session,'/*', "split");
            date1 = str2num(sess_split{1});
            date2 = str2num(sess_split{2});
            new_date1 = date1 + val;
            new_date2 = date2 + val;
            date = strcat(string(new_date1), '/', string(new_date2));
            folder = strcat(string(new_date1),'_',string(new_date2))
%             mkdir(folder);
            folder = str2mat(folder);
            mkdir(['C:/King''s Delight Records' '/' folder])
            data = [{'NAME'},{'REG NO'},{'C.A.1'},{'C.A.2'},{'EXAM SCORE'},...
                {'AGGREGATE'},{'GRADE'}];
            pdata = [{'NAME'},{'REG NO'},{'C.A.1'},{'C.A.2'},{'C.A.3'},{'EXAM SCORE'},...
                {'AGGREGATE'},{'GRADE'}];
            

%             mkdir([pwd '/' folder '/' 'NURSERY AND PRIMARY']);
            mkdir(['C:/King''s Delight Records' '/' folder '/' 'NURSERY AND PRIMARY']);
            
            load(['C:/King''s Delight Records' '/' 'n&p.mat']);
            for i = 1:3
                class1 = ['NURSERY ', num2str(i)];
                class1 = str2mat(class1);
                mkdir(['C:/King''s Delight Records' '/' folder '/' 'NURSERY AND PRIMARY' '/' class1]);
               
                mkdir(['C:/King''s Delight Records' '/' folder '/' 'NURSERY AND PRIMARY' '/' class1 '/' 'FIRST TERM']);
                
                for i=1:length(np(1:end,1));
                    jsd = np{i};
%                     save([pwd '/' folder '/' 'NURSERY AND PRIMARY' '/' class1 '/' 'FIRST TERM' '/' jsd '.mat'],'pdata');
                    save(['C:/King''s Delight Records' '/' folder '/' 'NURSERY AND PRIMARY' '/' class1 '/' 'FIRST TERM' '/' jsd '.mat'],'pdata');
                end
                
                mkdir(['C:/King''s Delight Records' '/' folder '/' 'NURSERY AND PRIMARY' '/' class1 '/' 'SECOND TERM']);
                for i=1:length(np(1:end,1));
                    jsd = np{i};
%                     save([pwd '/' folder '/' 'NURSERY AND PRIMARY' '/' class1 '/' 'SECOND TERM' '/' jsd '.mat'],'pdata');
                    save(['C:/King''s Delight Records' '/' folder '/' 'NURSERY AND PRIMARY' '/' class1 '/' 'SECOND TERM' '/' jsd '.mat'],'pdata');
                end
                
%                mkdir([pwd '/' folder '/' 'NURSERY AND PRIMARY' '/' class1 '/' 'THIRD TERM']);
               mkdir(['C:/King''s Delight Records' '/' folder '/' 'NURSERY AND PRIMARY' '/' class1 '/' 'THIRD TERM']);
                
                for i=1:length(np(1:end,1));
                    jsd = np{i};
%                     save([pwd '/' folder '/' 'NURSERY AND PRIMARY' '/' class1 '/' 'THIRD TERM' '/' jsd '.mat'],'pdata');
                    save(['C:/King''s Delight Records' '/' folder '/' 'NURSERY AND PRIMARY' '/' class1 '/' 'THIRD TERM' '/' jsd '.mat'],'pdata');
                end
            end
            
            for i = 1:5
                class2 = ['PRIMARY ', num2str(i)];
                class2 = str2mat(class2);
%                 mkdir([pwd '/' folder '/' 'NURSERY AND PRIMARY' '/' class2])
                mkdir(['C:/King''s Delight Records' '/' folder '/' 'NURSERY AND PRIMARY' '/' class2]);
                
%                 mkdir([pwd '/' folder '/' 'NURSERY AND PRIMARY' '/' class2 '/' 'FIRST TERM']);
                mkdir(['C:/King''s Delight Records' '/' folder '/' 'NURSERY AND PRIMARY' '/' class2 '/' 'FIRST TERM']);
                
                for i=1:length(np(1:end,1));
                    jsd = np{i};
%                     save([pwd '/' folder '/' 'NURSERY AND PRIMARY' '/' class2 '/' 'FIRST TERM' '/' jsd '.mat'],'pdata');
                    save(['C:/King''s Delight Records' '/' folder '/' 'NURSERY AND PRIMARY' '/' class2 '/' 'FIRST TERM' '/' jsd '.mat'],'pdata');
                end
                
%                 mkdir([pwd '/' folder '/' 'NURSERY AND PRIMARY' '/' class2 '/' 'SECOND TERM']);
                mkdir(['C:/King''s Delight Records' '/' folder '/' 'NURSERY AND PRIMARY' '/' class2 '/' 'SECOND TERM']);
                
                for i=1:length(np(1:end,1));
                    jsd = np{i};
%                     save([pwd '/' folder '/' 'NURSERY AND PRIMARY' '/' class2 '/' 'SECOND TERM' '/' jsd '.mat'],'pdata');
                    save(['C:/King''s Delight Records' '/' folder '/' 'NURSERY AND PRIMARY' '/' class2 '/' 'SECOND TERM' '/' jsd '.mat'],'pdata');
                end
                
                mkdir(['C:/King''s Delight Records' '/' folder '/' 'NURSERY AND PRIMARY' '/' class2 '/' 'THIRD TERM']);
                
                
                for i=1:length(np(1:end,1));
                    jsd = np{i};
%                     save([pwd '/' folder '/' 'NURSERY AND PRIMARY' '/' class2 '/' 'THIRD TERM' '/' jsd '.mat'],'pdata');
                    save(['C:/King''s Delight Records' '/' folder '/' 'NURSERY AND PRIMARY' '/' class2 '/' 'THIRD TERM' '/' jsd '.mat'],'pdata');
                end
            end
            
            
            
%             mkdir([pwd '/' folder '/' 'JUNIOR']);
            mkdir(['C:/King''s Delight Records' '/' folder '/' 'JUNIOR']);
            load(['C:/King''s Delight Records' '/' 'jss.mat']);
            for i = 1:3
                class = strcat('JSS', string(i))
                class = str2mat(class);
%                 mkdir([pwd '/' folder '/' 'JUNIOR' '/' class]);
                mkdir(['C:/King''s Delight Records' '/' folder '/' 'JUNIOR' '/' class]);
%                 mkdir([pwd '/' folder '/' 'JUNIOR' '/' class '/' 'FIRST TERM']);
                mkdir(['C:/King''s Delight Records' '/' folder '/' 'JUNIOR' '/' class '/' 'FIRST TERM']);
                for i=1:length(jss(1:end,1))
                    jsd = jss{i};
%                     save([pwd '/' folder '/' 'JUNIOR' '/' class '/' 'FIRST TERM' '/' jsd '.mat'],'data');
                    save(['C:/King''s Delight Records' '/' folder '/' 'JUNIOR' '/' class '/' 'FIRST TERM' '/' jsd '.mat'],'data');
                end
                
%                 mkdir([pwd '/' folder '/' 'JUNIOR' '/' class '/' 'SECOND TERM']);
                mkdir(['C:/King''s Delight Records' '/' folder '/' 'JUNIOR' '/' class '/' 'SECOND TERM']);
                for i=1:length(jss(1:end,1));
                    jsd = jss{i};
%                     save([pwd '/' folder '/' 'JUNIOR' '/' class '/' 'SECOND TERM' '/' jsd '.mat'],'data');
                    save(['C:/King''s Delight Records' '/' folder '/' 'JUNIOR' '/' class '/' 'SECOND TERM' '/' jsd '.mat'],'data');
                end
                
%                 mkdir([pwd '/' folder '/' 'JUNIOR' '/' class '/' 'THIRD TERM']);
                mkdir(['C:/King''s Delight Records' '/' folder '/' 'JUNIOR' '/' class '/' 'THIRD TERM']);
                for i=1:length(jss(1:end,1))
                    jsd = jss{i};
%                     save([pwd '/' folder '/' 'JUNIOR' '/' class '/' 'THIRD TERM' '/' jsd '.mat'],'data');
                    save(['C:/King''s Delight Records' '/' folder '/' 'JUNIOR' '/' class '/' 'THIRD TERM' '/' jsd '.mat'],'data');
                end
            end
   
            
            
%             mkdir([pwd '/' folder '/' 'SENIOR']);
            mkdir(['C:/King''s Delight Records' '/' folder '/' 'SENIOR']);
%             load sss.mat;
            load(['C:/King''s Delight Records' '/' 'sss.mat']);
            for i = 1:3
                class = strcat('SSS', string(i))
                class = str2mat(class);
%                 mkdir([pwd '/' folder '/' 'SENIOR' '/' class]);
                mkdir(['C:/King''s Delight Records' '/' folder '/' 'SENIOR' '/' class]);
%                 mkdir([pwd '/' folder '/' 'SENIOR' '/' class '/' 'FIRST TERM']);
                mkdir(['C:/King''s Delight Records' '/' folder '/' 'SENIOR' '/' class '/' 'FIRST TERM']);
                for i=1:length(sss(1:end,1))
                    jsd = sss{i};
%                     save([pwd '/' folder '/' 'SENIOR' '/' class '/' 'FIRST TERM' '/' jsd '.mat'],'data');
                    save(['C:/King''s Delight Records' '/' folder '/' 'SENIOR' '/' class '/' 'FIRST TERM' '/' jsd '.mat'],'data');
                end
                
                mkdir(['C:/King''s Delight Records' '/' folder '/' 'SENIOR' '/' class '/' 'SECOND TERM']);
%                 mkdir([pwd '/' folder '/' 'SENIOR' '/' class '/' 'SECOND TERM']);
                for i=1:length(sss(1:end,1))
                    jsd = sss{i};
%                     save([pwd '/' folder '/' 'SENIOR' '/' class '/' 'SECOND TERM' '/' jsd '.mat'],'data');
                    save(['C:/King''s Delight Records' '/' folder '/' 'SENIOR' '/' class '/' 'SECOND TERM' '/' jsd '.mat'],'data');
                end
%                 mkdir([pwd '/' folder '/' 'SENIOR' '/' class '/' 'THIRD TERM']);
                mkdir(['C:/King''s Delight Records' '/' folder '/' 'SENIOR' '/' class '/' 'THIRD TERM']);
                for i=1:length(sss(1:end,1))
                    jsd = sss{i};
%                     save([pwd '/' folder '/' 'SENIOR' '/' class '/' 'THIRD TERM' '/' jsd '.mat'],'data');
                    save(['C:/King''s Delight Records' '/' folder '/' 'SENIOR' '/' class '/' 'THIRD TERM' '/' jsd '.mat'],'data');
                end
            end
            
            
            if length(sessions)>2
            vb = sessions{length(sessions)-1,1};
            sess_split = regexp(vb,'/*', "split");
            date1 = str2num(sess_split{1});
            date2 = str2num(sess_split{2});
            new_date1 = date1 + 1;
            new_date2 = date2 + 1;
            folder = strcat(string(new_date1),'_',string(new_date2));
            folder = str2mat(folder);
            
            vbc = sessions{length(sessions),1};
            sess_split = regexp(vbc,'/*', "split");
            date1 = str2num(sess_split{1});
            date2 = str2num(sess_split{2});
            new_date1 = date1 + 1;
            new_date2 = date2 + 1;
            nfolder = strcat(string(new_date1),'_',string(new_date2));
            nfolder = str2mat(nfolder);
            
            fld1 = [{'NURSERY 1'},{'NURSERY 2'},{'NURSERY 3'}];
            fld2 =  [{'PRIMARY 1'},{'PRIMARY 2'},{'PRIMARY 3'},{'PRIMARY 4'},{'PRIMARY 5'}];
            fld3 = [{'JSS1'},{'JSS2'},{'JSS3'}];
            fld4 = [{'SSS1'},{'SSS2'},{'SSS3'}];
            
            
               for i = 1:2
                for j=1:length(np(1:end,1));
                     jsd = np{j};   
%                      load([pwd '/' folder '/' 'NURSERY AND PRIMARY' '/' fld1{i} '/' 'FIRST TERM' '/' jsd '.mat'])
                     load(['C:/King''s Delight Records' '/' folder '/' 'NURSERY AND PRIMARY' '/' fld1{i} '/' 'FIRST TERM' '/' jsd '.mat']);
                     pdata(:,3)={''};
                     pdata(:,4)={''};
                     pdata(:,5)={''};
                     pdata(:,6)={''};
                     pdata(:,7)={''};
                     pdata(:,8)={''};
                
%                      save([pwd '/' nfolder '/' 'NURSERY AND PRIMARY' '/' fld1{i+1} '/' 'FIRST TERM' '/' jsd '.mat'],'pdata')
                     save(['C:/King''s Delight Records' '/' nfolder '/' 'NURSERY AND PRIMARY' '/' fld1{i+1} '/' 'FIRST TERM' '/' jsd '.mat'],'pdata');
                     save(['C:/King''s Delight Records' '/' nfolder '/' 'NURSERY AND PRIMARY' '/' fld1{i+1} '/' 'SECOND TERM' '/' jsd '.mat'],'pdata');
%                      save([pwd '/' nfolder '/' 'NURSERY AND PRIMARY' '/' fld1{i+1} '/' 'SECOND TERM' '/' jsd '.mat'],'pdata')
%                      save([pwd '/' nfolder '/' 'NURSERY AND PRIMARY' '/' fld1{i+1} '/' 'THIRD TERM' '/' jsd '.mat'],'pdata')
                     save(['C:/King''s Delight Records' '/' nfolder '/' 'NURSERY AND PRIMARY' '/' fld1{i+1} '/' 'THIRD TERM' '/' jsd '.mat'],'pdata');
                 end  
               end
                
                
               for j=1:length(np(1:end,1))
                     jsd = np{j};   
%                      load([pwd '/' folder '/' 'NURSERY AND PRIMARY' '/' 'NURSERY 3' '/' 'FIRST TERM' '/' jsd '.mat'])
                     load(['C:/King''s Delight Records' '/' folder '/' 'NURSERY AND PRIMARY' '/' 'NURSERY 3' '/' 'FIRST TERM' '/' jsd '.mat']);
                     pdata(:,3)={''};
                     pdata(:,4)={''};
                     pdata(:,5)={''};
                     pdata(:,6)={''};
                     pdata(:,7)={''};
                     pdata(:,8)={''};
                
                     save(['C:/King''s Delight Records' '/' nfolder '/' 'NURSERY AND PRIMARY' '/' 'PRIMARY 1' '/' 'FIRST TERM' '/' jsd '.mat'],'pdata');
%                      save([pwd '/' nfolder '/' 'NURSERY AND PRIMARY' '/' 'PRIMARY 1' '/' 'FIRST TERM' '/' jsd '.mat'],'pdata')
%                      save([pwd '/' nfolder '/' 'NURSERY AND PRIMARY' '/' 'PRIMARY 1' '/' 'SECOND TERM' '/' jsd '.mat'],'pdata')
                     save(['C:/King''s Delight Records' '/' nfolder '/' 'NURSERY AND PRIMARY' '/' 'PRIMARY 1' '/' 'SECOND TERM' '/' jsd '.mat'],'pdata');
%                      save([pwd '/' nfolder '/' 'NURSERY AND PRIMARY' '/' 'PRIMARY 1' '/' 'THIRD TERM' '/' jsd '.mat'],'pdata')
                     save(['C:/King''s Delight Records' '/' nfolder '/' 'NURSERY AND PRIMARY' '/' 'PRIMARY 1' '/' 'THIRD TERM' '/' jsd '.mat'],'pdata');
               end  
               
                
                for i = 1:4
                    for j=1:length(np(1:end,1))
                        jsd = np{j};   
%                         load([pwd '/' folder '/' 'NURSERY AND PRIMARY' '/' fld2{i} '/' 'FIRST TERM' '/' jsd '.mat'])
                        load(['C:/King''s Delight Records' '/' folder '/' 'NURSERY AND PRIMARY' '/' fld2{i} '/' 'FIRST TERM' '/' jsd '.mat']);
                        pdata(:,3)={''};
                        pdata(:,4)={''};
                        pdata(:,5)={''};
                        pdata(:,6)={''};
                        pdata(:,7)={''};
                        pdata(:,8)={''};
                
                        save(['C:/King''s Delight Records' '/' nfolder '/' 'NURSERY AND PRIMARY' '/' fld2{i+1} '/' 'FIRST TERM' '/' jsd '.mat'],'pdata');
%                         save([pwd '/' nfolder '/' 'NURSERY AND PRIMARY' '/' fld2{i+1} '/' 'FIRST TERM' '/' jsd '.mat'],'pdata')
%                         save([pwd '/' nfolder '/' 'NURSERY AND PRIMARY' '/' fld2{i+1} '/' 'SECOND TERM' '/' jsd '.mat'],'pdata')
                        save(['C:/King''s Delight Records' '/' nfolder '/' 'NURSERY AND PRIMARY' '/' fld2{i+1} '/' 'SECOND TERM' '/' jsd '.mat'],'pdata');
                        save(['C:/King''s Delight Records' '/' nfolder '/' 'NURSERY AND PRIMARY' '/' fld2{i+1} '/' 'THIRD TERM' '/' jsd '.mat'],'pdata');
%                         save([pwd '/' nfolder '/' 'NURSERY AND PRIMARY' '/' fld2{i+1} '/' 'THIRD TERM' '/' jsd '.mat'],'pdata')
                    end  
                end
                
                
                for i = 1:2
                    for j=1:length(jss(1:end,1))
                        jsd = jss{j};
%                         load([pwd '/' folder '/' 'JUNIOR' '/' fld3{i} '/' 'FIRST TERM' '/' jsd '.mat'])
                        load(['C:/King''s Delight Records' '/' folder '/' 'JUNIOR' '/' fld3{i} '/' 'FIRST TERM' '/' jsd '.mat']);
                        data(:,3)={''};
                        data(:,4)={''};
                        data(:,5)={''};
                        data(:,6)={''};
                        data(:,7)={''};
                        
%                         save([pwd '/' nfolder '/' 'JUNIOR' '/' fld3{i+1} '/' 'FIRST TERM' '/' jsd '.mat'],'data')
                        save(['C:/King''s Delight Records' '/' nfolder '/' 'JUNIOR' '/' fld3{i+1} '/' 'FIRST TERM' '/' jsd '.mat'],'data');
                        save(['C:/King''s Delight Records' '/' nfolder '/' 'JUNIOR' '/' fld3{i+1} '/' 'SECOND TERM' '/' jsd '.mat'],'data');
                        save(['C:/King''s Delight Records' '/' nfolder '/' 'JUNIOR' '/' fld3{i+1} '/' 'THIRD TERM' '/' jsd '.mat'],'data');
%                         save([pwd '/' nfolder '/' 'JUNIOR' '/' fld3{i+1} '/' 'SECOND TERM' '/' jsd '.mat'],'data')
%                         save([pwd '/' nfolder '/' 'JUNIOR' '/' fld3{i+1} '/' 'THIRD TERM' '/' jsd '.mat'],'data')
                    end 
                end
                
                for i = 1:2
                    for j=1:length(sss(1:end,1))
                        jsd = sss{j};
%                         load([pwd '/' folder '/' 'SENIOR' '/' fld4{i} '/' 'FIRST TERM' '/' jsd '.mat'])
                        load(['C:/King''s Delight Records' '/' folder '/' 'SENIOR' '/' fld4{i} '/' 'FIRST TERM' '/' jsd '.mat']);
                        data(:,3)={''};
                        data(:,4)={''};
                        data(:,5)={''};
                        data(:,6)={''};
                        data(:,7)={''};
                
                        save(['C:/King''s Delight Records' '/' nfolder '/' 'SENIOR' '/' fld4{i+1} '/' 'FIRST TERM' '/' jsd '.mat'],'data');
%                         save([pwd '/' nfolder '/' 'SENIOR' '/' fld4{i+1} '/' 'FIRST TERM' '/' jsd '.mat'],'data')
%                         save([pwd '/' nfolder '/' 'SENIOR' '/' fld4{i+1} '/' 'SECOND TERM' '/' jsd '.mat'],'data')
                        save(['C:/King''s Delight Records' '/' nfolder '/' 'SENIOR' '/' fld4{i+1} '/' 'SECOND TERM' '/' jsd '.mat'],'data');
                        save(['C:/King''s Delight Records' '/' nfolder '/' 'SENIOR' '/' fld4{i+1} '/' 'THIRD TERM' '/' jsd '.mat'],'data');
%                         save([pwd '/' nfolder '/' 'SENIOR' '/' fld4{i+1} '/' 'THIRD TERM' '/' jsd '.mat'],'data')
                    end 
                end
                
            end
            
       sessions = [sess; date];
%             save sessions.mat sessions;
       save(['C:/King''s Delight Records' '/' 'sessions.mat'],'sessions');
            
            

msgbox('Session updated successfully');
set(handles.update,'Value',0);

            end



function keyed_Callback(hObject, eventdata, handles)
% hObject    handle to keyed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of keyed as text
%        str2double(get(hObject,'String')) returns contents of keyed as a double


% --- Executes during object creation, after setting all properties.
function keyed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to keyed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in del.
function del_Callback(hObject, eventdata, handles)
% hObject    handle to del (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
valy = get(handles.keyed,'String');
            load(['C:/King''s Delight Records' '/' 'passwordd.mat']);
            passwords = string(passwordd(:,1));
            pass = find(passwords == valy);
            if isempty(pass) == 1
                msgbox('Key not found');
                set(handles.keyed,'String','');
            else
                passwordd{1,pass(1)} = []
%                 save passwordd.mat passwordd
                save(['C:/King''s Delight Records' '/' 'passwordd.mat'],'passwordd')
                msgbox('Key Deleted');
                set(handles.keyed,'String','');
                set(handles.keyed,'Visible','Off');
                set(handles.keylab,'Visible','Off');
                set(handles.del,'Visible','Off');
            end
            


function lab_Callback(hObject, eventdata, handles)
% hObject    handle to lab (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lab as text
%        str2double(get(hObject,'String')) returns contents of lab as a double


% --- Executes during object creation, after setting all properties.
function lab_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lab (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.update,'Visible','On')
set(handles.ok,'Visible','On')



function retrieve_Callback(hObject, eventdata, handles)
% hObject    handle to retrieve (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of retrieve as text
%        str2double(get(hObject,'String')) returns contents of retrieve as a double


% --- Executes during object creation, after setting all properties.
function retrieve_CreateFcn(hObject, eventdata, handles)
% hObject    handle to retrieve (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

ggh = get(handles.retrieve,'String');
if isempty(ggh)
    msgbox('Enter your full name')
    return
end
% load database.mat
load(['C:/King''s Delight Records' '/' 'database.mat']);
files = string(dbase(:,1));
jj = 0;
for i = 1: length(files)
    aa = strcmpi(files{i},ggh)
    if aa == 1
        jj = aa
        v = i
    end
end

if jj == 1 
   regn = dbase{v,2}
   msgbox(['Reg. no is', regn])   
else
   msgbox('Name not found')
end
