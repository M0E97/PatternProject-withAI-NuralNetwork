function varargout = test(varargin)
% TEST MATLAB code for test.fig
%      TEST, by itself, creates a new TEST or raises the existing
%      singleton*.
%
%      H = TEST returns the handle to a new TEST or the handle to
%      the existing singleton*.
%
%      TEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST.M with the given input arguments.
%
%      TEST('Property','Value',...) creates a new TEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test

% Last Modified by GUIDE v2.5 13-May-2018 03:15:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test_OpeningFcn, ...
                   'gui_OutputFcn',  @test_OutputFcn, ...
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


% --- Executes just before test is made visible.
function test_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test (see VARARGIN)

% Choose default command line output for test
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes test wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test_OutputFcn(hObject, eventdata, handles) 
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
global cont1 homo1 entro1 cont2 homo2 entro2 cont3 homo3 entro3 cont4 homo4 entro4
startingFolder = pwd;

defaultFileName = fullfile(startingFolder, '*.*');
[baseFileName, folder] = uigetfile(defaultFileName, 'Select Image');
if baseFileName == 0
	return;
end
fullFileName = fullfile(folder, baseFileName)
im=imread(fullFileName);
x=rgb2gray(im);
glcm = graycomatrix(x,'Offset',[0,1]);
gray= graycoprops(glcm,{'contrast','homogeneity','Energy'});
cont1=gray.Contrast;
homo1=gray.Homogeneity;
entro1=gray.Energy;
glcm = graycomatrix(x,'Offset',[-1,-1]);
gray= graycoprops(glcm,{'contrast','homogeneity','Energy'});
cont2=gray.Contrast;
homo2=gray.Homogeneity;
entro2=gray.Energy;
glcm = graycomatrix(x,'Offset',[-1,1]);
gray= graycoprops(glcm,{'contrast','homogeneity','Energy'});
cont3=gray.Contrast;
homo3=gray.Homogeneity;
entro3=gray.Energy;
glcm = graycomatrix(x,'Offset',[-1,0]);
gray= graycoprops(glcm,{'contrast','homogeneity','Energy'});
cont4=gray.Contrast;
homo4=gray.Homogeneity;
entro4=gray.Energy;
axes(handles.axes1)
imshow(im);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global cont1 homo1 entro1 cont2 homo2 entro2 cont3 homo3 entro3 cont4 homo4 entro4
box=round(networkFruit([cont1,homo1,entro1,cont2,homo2,entro2,cont3,homo3,entro3,cont4,homo4,entro4]'));
set(handles.text2, 'String', int2str(box));



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global cont1 homo1 entro1 cont2 homo2 entro2 cont3 homo3 entro3 cont4 homo4 entro4
box=round(networkFruits([cont1,homo1,entro1,cont2,homo2,entro2,cont3,homo3,entro3,cont4,homo4,entro4]'));
set(handles.text2, 'String', int2str(box));
