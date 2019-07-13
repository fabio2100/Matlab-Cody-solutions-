function varargout = reloj7segs(varargin)
% RELOJ7SEGS MATLAB code for reloj7segs.fig
%      RELOJ7SEGS, by itself, creates a new RELOJ7SEGS or raises the existing
%      singleton*.
%
%      H = RELOJ7SEGS returns the handle to a new RELOJ7SEGS or the handle to
%      the existing singleton*.
%
%      RELOJ7SEGS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RELOJ7SEGS.M with the given input arguments.
%
%      RELOJ7SEGS('Property','Value',...) creates a new RELOJ7SEGS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before reloj7segs_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to reloj7segs_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help reloj7segs

% Last Modified by GUIDE v2.5 11-Feb-2019 16:26:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @reloj7segs_OpeningFcn, ...
                   'gui_OutputFcn',  @reloj7segs_OutputFcn, ...
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


% --- Executes just before reloj7segs is made visible.
function reloj7segs_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to reloj7segs (see VARARGIN)

% Choose default command line output for reloj7segs
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
z=zeros(9,5);
axes(handles.axes1)
imshow(z)
axes(handles.axes2)
imshow(z)
axes(handles.axes3)
imshow(z)
axes(handles.axes4)
imshow(z)


cero=traductor7segs(1,1,1,0,1,1,1);
uno=traductor7segs(0,0,1,0,0,1,0);
dos=traductor7segs(1,0,1,1,1,0,1);
tres=traductor7segs(1,0,1,1,0,1,1);
cuatro=traductor7segs(0,1,1,1,0,1,0);
cinco=traductor7segs(1,1,0,1,0,1,1);
seis=traductor7segs(1,1,0,1,1,1,1);
siete=traductor7segs(1,0,1,0,0,1,0);
ocho=traductor7segs(1,1,1,1,1,1,1);
nueve=traductor7segs(1,1,1,1,0,1,1);
save nros cero uno dos tres cuatro cinco seis siete ocho nueve
 


% UIWAIT makes reloj7segs wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = reloj7segs_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
load nros
for i=1:Inf
    dt = datestr(now,'mmmm dd, yyyy HH:MM:SS.FFF AM');
    hour1=hour(dt);
    unihora=mod(hour1,10);
    dechora=mod((hour1-unihora)/10,10);
    minute1=minute(dt);
    uniminute=mod(minute1,10);
    decminute=mod((minute1-uniminute)/10,10);
    second1=floor(second(dt));
    
    %%
    axes(handles.axes1)
    if dechora == 0
        z=traductor7segs(1,1,1,0,1,1,1);
        imshow(z)
    end
    if dechora == 1
        z=traductor7segs(0,0,1,0,0,1,0);
        imshow(z)
    end
    if dechora == 2
        z=traductor7segs(1,0,1,1,1,0,1);
        imshow(z)
    end
    if dechora == 3
        z=traductor7segs(1,0,1,1,0,1,1);
        imshow(z)
    end
    if dechora == 4
        z=traductor7segs(0,1,1,1,0,1,0);
        imshow(z)
    end
    if dechora == 5
        z=traductor7segs(1,1,0,1,0,1,1);
        imshow(z)
    end
    if dechora == 6
        z=traductor7segs(1,1,0,1,1,1,1);
        imshow(z)
    end
    if dechora == 7
        z=traductor7segs(1,0,1,0,0,1,0);
        imshow(z)
    end
    if dechora == 8
        z=traductor7segs(1,1,1,1,1,1,1);
        imshow(z)
    end
    if dechora == 9
        z=traductor7segs(1,1,1,1,0,1,1);
        imshow(z)
    end
    
    
    axes(handles.axes2)
    if unihora == 0
        z=traductor7segs(1,1,1,0,1,1,1);
        imshow(z)
    end
    if unihora == 1
        z=traductor7segs(0,0,1,0,0,1,0);
        imshow(z)
    end
    if unihora == 2
        z=traductor7segs(1,0,1,1,1,0,1);
        imshow(z)
    end
    if unihora == 3
        z=traductor7segs(1,0,1,1,0,1,1);
        imshow(z)
    end
    if unihora == 4
        z=traductor7segs(0,1,1,1,0,1,0);
        imshow(z)
    end
    if unihora == 5
        z=traductor7segs(1,1,0,1,0,1,1);
        imshow(z)
    end
    if unihora == 6
        z=traductor7segs(1,1,0,1,1,1,1);
        imshow(z)
    end
    if unihora == 7
        z=traductor7segs(1,0,1,0,0,1,0);
        imshow(z)
    end
    if unihora == 8
        z=traductor7segs(1,1,1,1,1,1,1);
        imshow(z)
    end
    if unihora == 9
        z=traductor7segs(1,1,1,1,0,1,1);
        imshow(z)
    end
    
    axes(handles.axes3)
    if decminute == 0
        z=traductor7segs(1,1,1,0,1,1,1);
        imshow(z)
    end
    if decminute == 1
        z=traductor7segs(0,0,1,0,0,1,0);
        imshow(z)
    end
    if decminute == 2
        z=traductor7segs(1,0,1,1,1,0,1);
        imshow(z)
    end
    if decminute == 3
        z=traductor7segs(1,0,1,1,0,1,1);
        imshow(z)
    end
    if decminute == 4
        z=traductor7segs(0,1,1,1,0,1,0);
        imshow(z)
    end
    if decminute == 5
        z=traductor7segs(1,1,0,1,0,1,1);
        imshow(z)
    end
    if decminute == 6
        z=traductor7segs(1,1,0,1,1,1,1);
        imshow(z)
    end
    if decminute == 7
        z=traductor7segs(1,0,1,0,0,1,0);
        imshow(z)
    end
    if decminute == 8
        z=traductor7segs(1,1,1,1,1,1,1);
        imshow(z)
    end
    if decminute == 9
        z=traductor7segs(1,1,1,1,0,1,1);
        imshow(z)
    end
    
    
    axes(handles.axes4)
    if uniminute == 0
        z=traductor7segs(1,1,1,0,1,1,1);
        imshow(z)
    end
    if uniminute == 1
        z=traductor7segs(0,0,1,0,0,1,0);
        imshow(z)
    end
    if uniminute == 2
        z=traductor7segs(1,0,1,1,1,0,1);
        imshow(z)
    end
    if uniminute == 3
        z=traductor7segs(1,0,1,1,0,1,1);
        imshow(z)
    end
    if uniminute == 4
        z=traductor7segs(0,1,1,1,0,1,0);
        imshow(z)
    end
    if uniminute == 5
        z=traductor7segs(1,1,0,1,0,1,1);
        imshow(z)
    end
    if uniminute == 6
        z=traductor7segs(1,1,0,1,1,1,1);
        imshow(z)
    end
    if uniminute == 7
        z=traductor7segs(1,0,1,0,0,1,0);
        imshow(z)
    end
    if uniminute == 8
        z=traductor7segs(1,1,1,1,1,1,1);
        imshow(z)
    end
    if uniminute == 9
        z=traductor7segs(1,1,1,1,0,1,1);
        imshow(z)
    end
    %%
    pause(20)
end
