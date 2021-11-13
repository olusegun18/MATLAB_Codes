function varargout = resultprintout(varargin)
% RESULTPRINTOUT MATLAB code for resultprintout.fig
%      RESULTPRINTOUT, by itself, creates a new RESULTPRINTOUT or raises the existing
%      singleton*.
%
%      H = RESULTPRINTOUT returns the handle to a new RESULTPRINTOUT or the handle to
%      the existing singleton*.
%
%      RESULTPRINTOUT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULTPRINTOUT.M with the given input arguments.
%
%      RESULTPRINTOUT('Property','Value',...) creates a new RESULTPRINTOUT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before resultprintout_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to resultprintout_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help resultprintout

% Last Modified by GUIDE v2.5 02-Dec-2020 00:34:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @resultprintout_OpeningFcn, ...
                   'gui_OutputFcn',  @resultprintout_OutputFcn, ...
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


% --- Executes just before resultprintout is made visible.
function resultprintout_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to resultprintout (see VARARGIN)

% Choose default command line output for resultprintout
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes resultprintout wait for user response (see UIRESUME)
% uiwait(handles.figure1);

global rtp

fig = handles.figure1
movegui(fig,'center')

axes(handles.axes2)
matlabImage = imread('kings.jpg');
image(matlabImage)
set(gca,'XTick',[], 'YTick', [])
set(handles.datet,'String',date)
toty = getappdata(0,'tot')
set(handles.number,'String',toty)
cat = getappdata(0,'cat')


            filer = getappdata(0,'file')
            set(handles.namerep,'String',filer{1})
            
            rtp = filer{4}
            if strcmp(rtp,'Termly Report')
                set(handles.sessrep,'String',filer{2})
                set(handles.termrep,'String',filer{3})
                set(handles.regnorep,'String',filer{5})
                set(handles.classrep,'String',filer{6})
                
                if strcmp(cat,'NURSERY AND PRIMARY')
                    
%                 load treport.mat
                load(['C:/King''s Delight Records' '/' 'treport.mat']);
                jjl = [{'SUBJECT'},{'C.A.1'},{'C.A.2'},{'C.A.3'},{'EXAM'},...
                {'TOTAL'},{'GRADE'},{'HIGHEST'},...
                {'LOWEST'},{'AVG'},{'POS'},{'REMARK'}]
           % 
                set(handles.table,'data',treport,'Columnname',jjl)
                set(handles.table,'ColumnWidth',{125, 47, 48, 55, 53, 55, 55, 56, 55, 32, 35, 50});
                
                ts = str2double(string(treport(2:end,6)))
                tss = sum(ts)
                set(handles.totscore,'String',tss)
                jmk = 100 * length(ts)
                ps = (tss/jmk)*100
                set(handles.perscore,'String',strcat(string(round(ps,1)),'%'))
                
                
                else
                
%                 load report.mat
                load(['C:/King''s Delight Records' '/' 'report.mat']);
                jjl = [{'SUBJECT'},{'C.A.1'},{'C.A.2'},{'EXAM'},...
                {'TOTAL'},{'GRADE'},{'HIGHEST'},...
                {'LOWEST'},{'AVG'},{'POS'},{'REMARK'}]
           % 
                set(handles.table,'data',reportt,'Columnname',jjl)
                
                ts = str2double(string(reportt(2:end,5)))
                tss = sum(ts)
                set(handles.totscore,'String',tss)
                jmk = 100 * length(ts)
                ps = (tss/jmk)*100
                set(handles.perscore,'String',strcat(string(round(ps,1)),'%'))
                
                end
                
            elseif strcmp(rtp,'Yearly Report')
                lol = [filer{2} ' ' 'Report'];
                set(handles.sessrep,'String',lol)
                set(handles.termrep,'String','-------')
                set(handles.regnorep,'String',filer{5})
                set(handles.classrep,'String',filer{6})
                
             if strcmp(cat,'NURSERY AND PRIMARY')
                 
%                 load npreport.mat
                load(['C:/King''s Delight Records' '/' 'npreport.mat']);
                jjl = [{'SUBJECT'},{'C.A.1'},{'C.A.2'},{'C.A.3'},{'EXAM'},...
                {'TOTAL'},{'GRADE'},{'REMARK'}]
                set(handles.table,'ColumnWidth',{140, 75, 75, 75, 75, 75, 75});
                set(handles.table,'data',npreportt,'Columnname',jjl)
                 
                ts = str2double(string(npreportt(2:end,6)))
                tss = sum(ts)
                set(handles.totscore,'String',tss)
                jmk = 100 * length(ts)
                ps = (tss/jmk)*100
                set(handles.perscore,'String',strcat(string(round(ps,1)),'%'))
             else
%                 load yearreport.mat
                load(['C:/King''s Delight Records' '/' 'yearreport.mat']);
                jjl = [{'SUBJECT'},{'C.A.1'},{'C.A.2'},{'EXAM'},...
                {'TOTAL'},{'GRADE'},{'REMARK'}]
                set(handles.table,'ColumnWidth',{140, 90, 90,  90, 90, 90});
                set(handles.table,'data',yearreportt,'Columnname',jjl)
                
                ts = str2double(string(yearreportt(2:end,5)))
                tss = sum(ts)
                set(handles.totscore,'String',tss)
                jmk = 100 * length(ts)
                ps = (tss/jmk)*100
                set(handles.perscore,'String',strcat(string(round(ps,1)),'%'))
                
            end
                
            elseif strcmp(rtp,'Over three sessions')   
                set(handles.regnorep,'String',filer{3})
                set(handles.termrep,'String','-------')
                set(handles.classrep,'String',filer{2})
                
                
%                 load yearreport.mat
                load(['C:/King''s Delight Records' '/' 'yearreport.mat']);
                jjl = [{'SUBJECT'},{'C.A.1'},{'C.A.2'},{'EXAM'},...
                {'TOTAL'},{'GRADE'},{'REMARK'}]
                set(handles.table,'ColumnWidth',{140, 90, 90,  90, 90, 90});
                set(handles.table,'data',yearreportt,'Columnname',jjl)
                
                ts = str2double(string(yearreportt(2:end,5)))
                tss = sum(ts)
                set(handles.totscore,'String',tss)
                jmk = 100 * length(ts)
                ps = (tss/jmk)*100
                set(handles.perscore,'String',strcat(string(round(ps,1)),'%'))
            end
            
            
            
                    



% --- Outputs from this function are returned to the command line.
function varargout = resultprintout_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global rtp

h = handles.figure1
printpreview(h)
% set(h,'PaperPositionMode','auto')
print(h,'filenamer','-dpdf','-r0')

if strcmp(rtp,'Termly Report')
    print2
end


% --- Executes during object creation, after setting all properties.
function uipanel2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
