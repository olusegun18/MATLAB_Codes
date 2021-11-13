function varargout = NewFaceDetection(varargin)
% NEWFACEDETECTION MATLAB code for NewFaceDetection.fig
%      NEWFACEDETECTION, by itself, creates a new NEWFACEDETECTION or raises the existing
%      singleton*.
%
%      H = NEWFACEDETECTION returns the handle to a new NEWFACEDETECTION or the handle to
%      the existing singleton*.
%
%      NEWFACEDETECTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NEWFACEDETECTION.M with the given input arguments.
%
%      NEWFACEDETECTION('Property','Value',...) creates a new NEWFACEDETECTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before NewFaceDetection_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to NewFaceDetection_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help NewFaceDetection

% Last Modified by GUIDE v2.5 19-Aug-2020 11:05:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @NewFaceDetection_OpeningFcn, ...
                   'gui_OutputFcn',  @NewFaceDetection_OutputFcn, ...
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


% --- Executes just before NewFaceDetection is made visible.
function NewFaceDetection_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to NewFaceDetection (see VARARGIN)

% Choose default command line output for NewFaceDetection
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes NewFaceDetection wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = NewFaceDetection_OutputFcn(hObject, eventdata, handles) 
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
vid=videoinput('winvideo',1,'YUY2_640x480');
preview(vid);

numofpictures=3;
waitTime=2;
mkdir 'FaceData';
classimg=get(handles.classname,'string');

facedetector=vision.CascadeObjectDetector;
i=0;
while i<numofpictures
    snapimg=getsnapshot(vid);
    bboxes=step(facedetector,snapimg);
    for j=1:size(bboxes,1)
        img=imcrop(snapimg,bboxes(j,:));
        axes(handles.axes2);
        imshow(ycbcr2rgb(img));
        imwrite(ycbcr2rgb(img),sprintf('%s.jpg',[classimg,'_',num2str(i+1)]));
       % movefile .*jpg 'FaceData'
    end
    pause(waitTime);
i=i+1;
end
% delete the object`
delete(vid);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
db=dir('*.jpg');
trainfeat=[];
 for k=1:length(db)
     dbimg=db(k).name;
     readimg=imread(dbimg);
     grayimg=rgb2gray(readimg); % Convert the image to gray scale [value 0-255]);
     resizeimg=imresize(grayimg,[128,128]);
     feature=extractLBPFeatures(resizeimg);
     trainfeat=[trainfeat;feature];
 end
 
 save('trainfeatures.mat','trainfeat'); 
 msgbox('Trained Successfully');


function classname_Callback(hObject, eventdata, handles)
% hObject    handle to classname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of classname as text
%        str2double(get(hObject,'String')) returns contents of classname as a double


% --- Executes during object creation, after setting all properties.
function classname_CreateFcn(hObject, eventdata, handles)
% hObject    handle to classname (see GCBO)
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

%% CAPTURE THE IMAGE TO BE RECOGNIZED
vid=videoinput('winvideo',1,'YUY2_640x480');
 triggerconfig(vid,'manual');
 set(vid,'FramesPerTrigger',1);
 set(vid,'TriggerRepeat',inf);
 start(vid);
 numofpictures=1;
 waitTime=2;
 facedetector=vision.CascadeObjectDetector;
 i=0;
 while i<numofpictures
     trigger(vid);
     imgdata=getdata(vid,1);
     axes(handles.axes2);
     imshow(ycbcr2rgb(imgdata))
     snapimg=getsnapshot(vid);
     bboxes=step(facedetector,snapimg);
     for j=1:size(bboxes,1)
         img=imcrop(snapimg,bboxes(j,:));
         axes(handles.axes3);
         imshow(ycbcr2rgb(img));
     end
     pause(waitTime);
 i=i+1;
 end
% % delete the object
 delete(vid);
 %stop(vid);
 
 %% RECOGNIZE AND TEST
 testimg=getimage(handles.axes3);
 grayimg=rgb2gray(testimg);
 % Convert the color image to gray image
 resizeimg=imresize(grayimg,[128,128]);
 feature=extractLBPFeatures(resizeimg);
 
 % LOAD TRAINED FEATURES
 load('trainfeatures.mat')
 TrF=trainfeat; % Train Features
 [row,col]=size(TrF);
 
 score=inf;
 match=-1;
 
 for p=1:length(row)
     D(p,:)=abs(TrF(p,:)-feature);
     s=mean(D(p,:));
     if s<score
         match=p;
         score=s;
     end
 end
 
 
matching_score=score
db=dir('*.jpg');

if matching_score<0.015
    
    img=imread([pwd,'\',db(match).name]);
    axes(handles.axes2);
    imshow(img);
    msgbox('Recognized Successfully');
else
    cla(handles.axes2,'reset');
     cla(handles.axes3,'reset');
    msgbox('Not Recognized');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
