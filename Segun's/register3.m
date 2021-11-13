function varargout = register3(varargin)
% REGISTER3 MATLAB code for register3.fig
%      REGISTER3, by itself, creates a new REGISTER3 or raises the existing
%      singleton*.
%
%      H = REGISTER3 returns the handle to a new REGISTER3 or the handle to
%      the existing singleton*.
%
%      REGISTER3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in REGISTER3.M with the given input arguments.
%
%      REGISTER3('Property','Value',...) creates a new REGISTER3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before register3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to register3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help register3

% Last Modified by GUIDE v2.5 06-Sep-2020 21:43:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @register3_OpeningFcn, ...
                   'gui_OutputFcn',  @register3_OutputFcn, ...
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


% --- Executes just before register3 is made visible.
function register3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to register3 (see VARARGIN)

% Choose default command line output for register3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

lt = load('studentdata.mat');
heading={'SURNAME','OTHER NAMES','GENDER','COUNTRY','STATE','LGA','SCHOOL NAME','CATEGORY','CLASS','DATE OF BIRTH','RELIGION','PASSWORD'};
kk = lt.table;
set(handles.table,'data',kk,'columnname',heading);

% UIWAIT makes register3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = register3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in register.
function register_Callback(hObject, eventdata, handles)
% hObject    handle to register (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gettable = getappdata(0,'record2table');
heading={'SURNAME','OTHER NAMES','GENDER','COUNTRY','STATE','LGA','SCHOOL NAME','CATEGORY','CLASS','DATE OF BIRTH','RELIGION','PASSWORD','REGISTRATION NUMBER'};


table=get(handles.table,'data');

if  isempty(table(1,1))
    set(handles.table,'data',gettable,'columnname',heading)
else
    table=get(handles.table,'data');
    studentdata=[table;gettable];
    set(handles.table,'data',studentdata,'columnname',heading)   
end
table=get(handles.table,'data');
save 'studentdata.mat' table
img=getimage(handles.axes1);
imwrite(img,[pwd,'\Profilepic\',char(gettable(13)),'.jpg']);
save 'studentdata.mat' table
close;



db=dir( [pwd, '\FaceData\' ,'*.jpg']);
trainfeat=[];
 for k=1:length(db)     
     dbimg=[pwd, '\FaceData\' ,db(k).name];
     readimg=imread(dbimg);
     grayimg=rgb2gray(readimg); % Convert the image to gray scale [value 0-255]);
     resizeimg=imresize(grayimg,[128,128]);
     feature=extractLBPFeatures(resizeimg);
     trainfeat=[trainfeat;feature];
 end
 
 save([pwd,'\studentfeatures\',char(gettable(13)),'trainfeatures.mat'],'trainfeat'); 
 table = {'' '' '' ''};
 save([pwd,'\Prechalval\',char(gettable(13)),'.mat'],'table'); 
 studdetail = {'SUBJECT' 'MODE' 'MODE NUMBER' 'SCORE'};
 save([pwd,'\Studentscore\',char(gettable(13)),'.mat'],'studdetail'); 
 
msgbox('REGISTERED SUCESSFULLY');
for k=1:length(db)     
     dbimg=[pwd, '\FaceData\' ,db(k).name];
     delete(dbimg);
     
 end
congratulationpage;

% --- Executes on button press in takepicture.
function takepicture_Callback(hObject, eventdata, handles)
% hObject    handle to takepicture (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vid im2
db=dir( [pwd, '\FaceData\' ,'*.jpg'])
db.name
% --- Executes on button press in uploadpicture.
function uploadpicture_Callback(hObject, eventdata, handles)
% hObject    handle to uploadpicture (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname]= uigetfile({'*.jpg';'*.bmp'},'SELECT PICTURE','JPEG');
mm=imread([pathname,filename]);
axes(handles.axes1);
imshow(mm);


% --- Executes on button press in startcamera.
function startcamera_Callback(hObject, eventdata, handles)
% hObject    handle to startcamera (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vid im2
%imaqhwinfo - Check available webcam adaptor attached to the system
gettable = getappdata(0,'record2table');

vid=videoinput('winvideo',1,'YUY2_640x480');


numofpictures=3;
waitTime=2;
mkdir 'FaceData';


facedetector=vision.CascadeObjectDetector;
i=0;
while i<numofpictures
    snapimg=getsnapshot(vid);
    bboxes=step(facedetector,snapimg); 
    for j=1:size(bboxes,1)
        img=imcrop(snapimg,bboxes(j,:));        
        imwrite(ycbcr2rgb(img),sprintf('%s.jpg',[pwd, '\FaceData\' ,char(gettable(13)),'_',num2str(i+1)]));
       % movefile .*jpg 'FaceData'
    end
    axes(handles.axes1);
    imshow(ycbcr2rgb(snapimg));
    pause(waitTime);
i=i+1;
end

% delete the object
delete(vid);
