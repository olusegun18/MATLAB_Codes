function varargout = confirm(varargin)
% CONFIRM MATLAB code for confirm.fig
%      CONFIRM, by itself, creates a new CONFIRM or raises the existing
%      singleton*.
%
%      H = CONFIRM returns the handle to a new CONFIRM or the handle to
%      the existing singleton*.
%
%      CONFIRM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONFIRM.M with the given input arguments.
%
%      CONFIRM('Property','Value',...) creates a new CONFIRM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before confirm_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to confirm_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help confirm

% Last Modified by GUIDE v2.5 30-Dec-2020 19:42:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @confirm_OpeningFcn, ...
                   'gui_OutputFcn',  @confirm_OutputFcn, ...
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


% --- Executes just before confirm is made visible.
function confirm_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to confirm (see VARARGIN)

% Choose default command line output for confirm
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes confirm wait for user response (see UIRESUME)
% uiwait(handles.figure1);
h = handles.figure1;
movegui(h,'center')


global var reg
var = getappdata(0,'lister');
subj = getappdata(0,'list')
subj = string(subj)
reg = var{2}
cat = var{4}
           
set(handles.name,'String',upper(var{1}))
set(handles.class,'String',var{5})
set(handles.reglabel,'String',reg)           
           for i = 1:length(subj)
               j = string(i);
               jj = strcat('c',j);
               set(handles.(jj),'String',subj(i))
               set(handles.(jj),'Visible','On')
           end
if strcmp(cat,'JUNIOR')
    set(handles.c17,'Visible','Off')
    set(handles.c18,'Visible','Off')
end  

% --- Outputs from this function are returned to the command line.
function varargout = confirm_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in confirm.
function confirm_Callback(hObject, eventdata, handles)
% hObject    handle to confirm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global var reg 

listt = getappdata(0,'lister');
% load database.mat
load(['C:/King''s Delight Records' '/' 'database.mat']);
dtb = string(dbase(:,2));
ghhr = find(dtb == reg);
if isempty(ghhr)
   dbase = [dbase;listt];
%    save database.mat dbase
   save(['C:/King''s Delight Records' '/' 'database.mat'],'dbase');
end
            
class = var{5}
cat = var{4}
folder = var{3}
sub = []


for i = 1:18
    butt=strcat('c',string(i))
    subreg=get(handles.(butt),'String')
%                kk = isempty(subreg)
    if isempty(subreg)== 0
       sub = [sub {subreg}]
    end
end


        
      
      
      for i = 1: length(sub) 
          subject = sub{i}
%           load([pwd '/' folder '/' cat '/' class '/' 'FIRST TERM' '/' subject '.mat'])
          load(['C:/King''s Delight Records' '/' folder '/' cat '/' class '/' 'FIRST TERM' '/' subject '.mat']);
          stdlist = [upper(var(1)),{reg},{''},{''},{''},{''},{''}]
          stdlist2 = [upper(var(1)),{reg},{''},{''},{''},{''},{''},{''}]
          
          if strcmp(cat,'NURSERY AND PRIMARY')
             datr = string(pdata(:,2))
             namer = string(pdata(:,1));
          else
             datr = string(data(:,2))
             namer = string(data(:,1));
          end
          
          ghy = find(datr==reg);
          namm = get(handles.name,'String')
          hjj = find(namer == namm)
          
              if isempty(ghy) == 0
              elseif isempty(hjj) == 0
              else
                  
                  
                  
                  if strcmp(cat,'NURSERY AND PRIMARY')
                     pdata = [pdata;stdlist2];
%                      save([pwd '/' folder '/' cat '/' class '/' 'FIRST TERM' '/' subject '.mat'],'pdata')
                     save(['C:/King''s Delight Records' '/' folder '/' cat '/' class '/' 'FIRST TERM' '/' subject '.mat'],'pdata');
%                      save([pwd '/' folder '/' cat '/' class '/' 'SECOND TERM' '/' subject '.mat'],'pdata')
                     save(['C:/King''s Delight Records' '/' folder '/' cat '/' class '/' 'SECOND TERM' '/' subject '.mat'],'pdata');
%                      save([pwd '/' folder '/' cat '/' class '/' 'THIRD TERM' '/' subject '.mat'],'pdata')
                     save(['C:/King''s Delight Records' '/' folder '/' cat '/' class '/' 'THIRD TERM' '/' subject '.mat'],'pdata');
                  else
                      data =[data;stdlist];
%                       save([pwd '/' folder '/' cat '/' class '/' 'FIRST TERM' '/' subject '.mat'],'data')
                      save(['C:/King''s Delight Records' '/' folder '/' cat '/' class '/' 'FIRST TERM' '/' subject '.mat'],'data');
%                       save([pwd '/' folder '/' cat '/' class '/' 'SECOND TERM' '/' subject '.mat'],'data')
                      save(['C:/King''s Delight Records' '/' folder '/' cat '/' class '/' 'SECOND TERM' '/' subject '.mat'],'data');
%                       save([pwd '/' folder '/' cat '/' class '/' 'THIRD TERM' '/' subject '.mat'],'data')
                      save(['C:/King''s Delight Records' '/' folder '/' cat '/' class '/' 'THIRD TERM' '/' subject '.mat'],'data');
                  end
              end
              
              if strcmp(cat,'JUNIOR')
%                   save([pwd '/' folder '/' cat '/' class '/' 'FIRST TERM' '/' 'NATIONAL VALUES.mat'],'data')
                  save(['C:/King''s Delight Records' '/' folder '/' cat '/' class '/' 'FIRST TERM' '/' 'NATIONAL VALUES.mat'],'data');
%                   save([pwd '/' folder '/' cat '/' class '/' 'FIRST TERM' '/' 'BASIC SCIENCE AND TECH.mat'],'data')
                  save(['C:/King''s Delight Records' '/' folder '/' cat '/' class '/' 'FIRST TERM' '/' 'BASIC SCIENCE AND TECH.mat'],'data');
%                   save([pwd '/' folder '/' cat '/' class '/' 'SECOND TERM' '/' 'NATIONAL VALUES.mat'],'data')
%                   save([pwd '/' folder '/' cat '/' class '/' 'SECOND TERM' '/' 'BASIC SCIENCE AND TECH.mat'],'data')
                  save(['C:/King''s Delight Records' '/' folder '/' cat '/' class '/' 'SECOND TERM' '/' 'NATIONAL VALUES.mat'],'data');
                  save(['C:/King''s Delight Records' '/' folder '/' cat '/' class '/' 'SECOND TERM' '/' 'BASIC SCIENCE AND TECH.mat'],'data');
%                   save([pwd '/' folder '/' cat '/' class '/' 'THIRD TERM' '/' 'NATIONAL VALUES.mat'],'data')
%                   save([pwd '/' folder '/' cat '/' class '/' 'THIRD TERM' '/' 'BASIC SCIENCE AND TECH.mat'],'data')
                  save(['C:/King''s Delight Records' '/' folder '/' cat '/' class '/' 'THIRD TERM' '/' 'NATIONAL VALUES.mat'],'data');
                  save(['C:/King''s Delight Records' '/' folder '/' cat '/' class '/' 'THIRD TERM' '/' 'BASIC SCIENCE AND TECH.mat'],'data');
              end
       end 
          msgbox('Registeration successful!')




% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
jj = getappdata(0,'fig');
mkj = isappdata(0,'fig');
            if mkj== 1
               close;
               jj.Visible = 'On'; 
            end
