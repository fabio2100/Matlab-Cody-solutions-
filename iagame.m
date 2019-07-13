function varargout = iagame(varargin)
% IAGAME MATLAB code for iagame.fig
%      IAGAME, by itself, creates a new IAGAME or raises the existing
%      singleton*.
%
%      H = IAGAME returns the handle to a new IAGAME or the handle to
%      the existing singleton*.
%
%      IAGAME('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IAGAME.M with the given input arguments.
%
%      IAGAME('Property','Value',...) creates a new IAGAME or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before iagame_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to iagame_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help iagame

% Last Modified by GUIDE v2.5 06-Feb-2019 16:35:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @iagame_OpeningFcn, ...
                   'gui_OutputFcn',  @iagame_OutputFcn, ...
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


% --- Executes just before iagame is made visible.
function iagame_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to iagame (see VARARGIN)

% Choose default command line output for iagame
handles.output = hObject;
g=ones(8,8);
g(8,:)=0;
g((4:7),5)=0;
g(7,1)=0;
imshow(g)

set(handles.axes1, 'UserData',g)
% for i=1:10
%     g1=g(2:8,2:8);
%     g1((4:7),8)=0;
%     g1(8,8)=0;
%     imshow(g1)
%     pause(0.2)
% end
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes iagame wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = iagame_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on key press with focus on figure1 and none of its controls.
function figure1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)

% g=get(handles.axes1,'UserData');
% t=get(handles.pushbutton1,'UserData');
% if t<100
%     a=0;
%     imshow(a)
% end
% if (g(7,1)==0)
%     g(7,1)=1;
%     g(2,1)=0;
% end
% 
% imshow(g)
% set(handles.axes1,'UserData',g);



% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
g=get(handles.axes1,'UserData');
%for t=1:1000
    for i=1:7
    g(:,i)=g(:,i+1);
    g(7,1)=0;
    if((g(6,6))==0 || g(6,7)==0 || g(6,5)==0)
        g((4:7),8)=1;
    else
        r=randi(2);
        if r==1
            g((4:7),8)=0;
        else
            g((4:7),8)=1;
        end
    end
    end
    imshow(g)
    pause(0.5)
    %wait(figure1_KeyPressFcn,1);
    
%end

set(handles.axes1,'UserData',g)
%set(handles.pushbutton1,'UserData',t);
pushbutton1_Callback;