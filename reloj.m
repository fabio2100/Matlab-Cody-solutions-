function varargout = reloj(varargin)
% RELOJ MATLAB code for reloj.fig
%      RELOJ, by itself, creates a new RELOJ or raises the existing
%      singleton*.
%
%      H = RELOJ returns the handle to a new RELOJ or the handle to
%      the existing singleton*.
%
%      RELOJ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RELOJ.M with the given input arguments.
%
%      RELOJ('Property','Value',...) creates a new RELOJ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before reloj_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to reloj_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help reloj

% Last Modified by GUIDE v2.5 26-Jul-2018 01:49:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @reloj_OpeningFcn, ...
                   'gui_OutputFcn',  @reloj_OutputFcn, ...
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


% --- Executes just before reloj is made visible.
function reloj_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to reloj (see VARARGIN)

% Choose default command line output for reloj
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes reloj wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = reloj_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
for i=1:Inf
    dt = datestr(now,'mmmm dd, yyyy HH:MM:SS.FFF AM');
    set(handles.rel,'String',dt);
    pause(0.001)
end
