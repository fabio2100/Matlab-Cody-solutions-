function varargout = disp7segs(varargin)
% DISP7SEGS MATLAB code for disp7segs.fig
%      DISP7SEGS, by itself, creates a new DISP7SEGS or raises the existing
%      singleton*.
%
%      H = DISP7SEGS returns the handle to a new DISP7SEGS or the handle to
%      the existing singleton*.
%
%      DISP7SEGS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DISP7SEGS.M with the given input arguments.
%
%      DISP7SEGS('Property','Value',...) creates a new DISP7SEGS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before disp7segs_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to disp7segs_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help disp7segs

% Last Modified by GUIDE v2.5 11-Feb-2019 15:35:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @disp7segs_OpeningFcn, ...
                   'gui_OutputFcn',  @disp7segs_OutputFcn, ...
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


% --- Executes just before disp7segs is made visible.
function disp7segs_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to disp7segs (see VARARGIN)

% Choose default command line output for disp7segs
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
z=zeros(9,5);
imshow(z),title 'Display 7 segmentos original'
set(handles.axes1,'UserData',z);
pause(3)



% UIWAIT makes disp7segs wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = disp7segs_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in sup.
function sup_Callback(hObject, eventdata, handles)
% hObject    handle to sup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sup
z=get(handles.axes1,'UserData');
stat=get(hObject,'Value');
if stat == 1 
    z(1,2:4)=1;
else
    z(1,2:4)=0;
end
imshow(z), title 'Display 7 segmentos original'
set(handles.axes1,'UserData',z);


% --- Executes on button press in supizq.
function supizq_Callback(hObject, eventdata, handles)
% hObject    handle to supizq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of supizq
z=get(handles.axes1,'UserData');
stat=get(hObject,'Value');
if stat == 1 
    z(2:4,1)=1;
else
    z(2:4,1)=0;
end
imshow(z), title 'Display 7 segmentos original'
set(handles.axes1,'UserData',z);

% --- Executes on button press in supder.
function supder_Callback(hObject, eventdata, handles)
% hObject    handle to supder (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of supder
z=get(handles.axes1,'UserData');
stat=get(hObject,'Value');
if stat == 1 
    z(2:4,5)=1;
else
    z(2:4,5)=0;
end
imshow(z), title 'Display 7 segmentos original'
set(handles.axes1,'UserData',z);

% --- Executes on button press in medio.
function medio_Callback(hObject, eventdata, handles)
% hObject    handle to medio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of medio
z=get(handles.axes1,'UserData');
stat=get(hObject,'Value');
if stat == 1 
    z(5,2:4)=1;
else
    z(5,2:4)=0;
end
imshow(z), title 'Display 7 segmentos original'
set(handles.axes1,'UserData',z);

% --- Executes on button press in infizq.
function infizq_Callback(hObject, eventdata, handles)
% hObject    handle to infizq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of infizq
z=get(handles.axes1,'UserData');
stat=get(hObject,'Value');
if stat == 1 
    z(6:8,1)=1;
else
    z(6:8,1)=0;
end
imshow(z), title 'Display 7 segmentos original'
set(handles.axes1,'UserData',z);

% --- Executes on button press in inf.
function inf_Callback(hObject, eventdata, handles)
% hObject    handle to inf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of inf
z=get(handles.axes1,'UserData');
stat=get(hObject,'Value');
if stat == 1 
    z(9,2:4)=1;
else
    z(9,2:4)=0;
end


imshow(z), title 'Display 7 segmentos original'
set(handles.axes1,'UserData',z);

% --- Executes on button press in infder.
function infder_Callback(hObject, eventdata, handles)
% hObject    handle to infder (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of infder
z=get(handles.axes1,'UserData');
stat=get(hObject,'Value');
if stat == 1 
    z(6:8,5)=1;
else
    z(6:8,5)=0;
end
imshow(z), title 'Display 7 segmentos original'
set(handles.axes1,'UserData',z);


% --- Executes when selected object is changed in uibuttongroup2.
function uibuttongroup2_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup2 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global op;

if hObject == handles.cero
    op=0;
    z=traductor7segs(1,1,1,0,1,1,1);
    handles.sup.Value=1;
    handles.supder.Value=1;
    handles.supizq.Value=1;
    handles.medio.Value=0;
    handles.infder.Value=1;
    handles.infizq.Value=1;
    handles.inf.Value=1;
end
if hObject == handles.uno
    op=1;
    z=traductor7segs(0,0,1,0,0,1,0);
    handles.sup.Value=0;
    handles.supder.Value=1;
    handles.supizq.Value=0;
    handles.medio.Value=0;
    handles.infder.Value=1;
    handles.infizq.Value=0;
    handles.inf.Value=0;
end
if hObject == handles.dos
    op=2;
    z=traductor7segs(1,0,1,1,1,0,1);
    handles.sup.Value=1;
    handles.supizq.Value=0;
    handles.supder.Value=1;
    handles.medio.Value=1;
    handles.infizq.Value=1;
    handles.infder.Value=0;
    handles.inf.Value=1;
end
if hObject == handles.tres
    op=3;
    z=traductor7segs(1,0,1,1,0,1,1);
    handles.sup.Value=1;
    handles.supizq.Value=0;
    handles.supder.Value=1;
    handles.medio.Value=1;
    handles.infizq.Value=0;
    handles.infder.Value=1;
    handles.inf.Value=1;
end
if hObject == handles.cuatro
    op=4;
    z=traductor7segs(0,1,1,1,0,1,0);
    handles.sup.Value=0;
    handles.supder.Value=1;
    handles.supizq.Value=1;
    handles.medio.Value=1;
    handles.infder.Value=0;
    handles.infizq.Value=1;
    handles.inf.Value=0;
end
if hObject == handles.cinco
    op=5;
    z=traductor7segs(1,1,0,1,0,1,1);
    handles.sup.Value=1;
    handles.supder.Value=1;
    handles.supizq.Value=0;
    handles.medio.Value=1;
    handles.infder.Value=0;
    handles.infizq.Value=1;
    handles.inf.Value=1;
end
if hObject == handles.seis
    op=6;
    z=traductor7segs(1,1,0,1,1,1,1);
    handles.sup.Value=1;
    handles.supder.Value=0;
    handles.supizq.Value=1;
    handles.medio.Value=1;
    handles.infder.Value=1;
    handles.infizq.Value=1;
    handles.inf.Value=1;
end
if hObject == handles.siete
    op=7;
    z=traductor7segs(1,0,1,0,0,1,0);
    handles.sup.Value=1;
    handles.supder.Value=1;
    handles.supizq.Value=0;
    handles.medio.Value=0;
    handles.infder.Value=1;
    handles.infizq.Value=0;
    handles.inf.Value=0;
end
if hObject == handles.ocho
    op=8;
    z=traductor7segs(1,1,1,1,1,1,1);
    handles.sup.Value=1;
    handles.supder.Value=1;
    handles.supizq.Value=1;
    handles.medio.Value=1;
    handles.infder.Value=1;
    handles.infizq.Value=1;
    handles.inf.Value=1;
end
if hObject == handles.nueve
    op=9;
    z=traductor7segs(1,1,1,1,0,1,1);
    handles.sup.Value=1;
    handles.supder.Value=1;
    handles.supizq.Value=1;
    handles.medio.Value=1;
    handles.infder.Value=1;
    handles.infizq.Value=0;
    handles.inf.Value=1;
end
if hObject == handles.letraa
    op=10;
    z=traductor7segs(1,1,1,1,1,1,0);
    handles.sup.Value=1;
    handles.supder.Value=1;
    handles.supizq.Value=1;
    handles.medio.Value=1;
    handles.infder.Value=1;
    handles.infizq.Value=1;
    handles.inf.Value=0;
end
if hObject == handles.letrab
    op=11;
    z=traductor7segs(0,1,0,1,1,1,1);
    handles.sup.Value=0;
    handles.supder.Value=0;
    handles.supizq.Value=1;
    handles.medio.Value=1;
    handles.infder.Value=1;
    handles.infizq.Value=1;
    handles.inf.Value=1;
end
if hObject == handles.letrac
    op=12;
    z=traductor7segs(0,0,0,1,1,0,1);
    handles.sup.Value=0;
    handles.supder.Value=0;
    handles.supizq.Value=0;
    handles.medio.Value=1;
    handles.infder.Value=0;
    handles.infizq.Value=1;
    handles.inf.Value=1;
end
if hObject == handles.letrad
    op=13;
    z=traductor7segs(0,0,1,1,1,1,1);
    handles.sup.Value=0;
    handles.supder.Value=1;
    handles.supizq.Value=0;
    handles.medio.Value=1;
    handles.infder.Value=1;
    handles.infizq.Value=1;
    handles.inf.Value=1;
end
if hObject == handles.letrae
    op=14;
    z=traductor7segs(1,1,0,1,1,0,1);
    handles.sup.Value=1;
    handles.supder.Value=0;
    handles.supizq.Value=1;
    handles.medio.Value=1;
    handles.infder.Value=0;
    handles.infizq.Value=1;
    handles.inf.Value=1;
end
if hObject == handles.letraf
    op=15;
    z=traductor7segs(1,1,0,1,1,0,0);
    handles.sup.Value=1;
    handles.supder.Value=0;
    handles.supizq.Value=1;
    handles.medio.Value=1;
    handles.infder.Value=0;
    handles.infizq.Value=1;
    handles.inf.Value=0;
end


% --- Executes on button press in ite.
function ite_Callback(hObject, eventdata, handles)
% hObject    handle to ite (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
for i1=1:2
    for i2=1:2
        for i3=1:2
            for i4=1:2
                for i5=1:2
                    for i6=1:2
                        for i7=1:2
                            z=traductor7segs(i7,i6,i5,i4,i3,i2,i1);
                            if i1==1
                                handles.inf.Value=1;
                            else
                                handles.inf.Value=0;
                            end
                            
                            if i2==1
                                handles.infder.Value=1;
                            else
                                handles.infder.Value=0;
                            end
                            
                            if i3==1
                                handles.infizq.Value=1;
                            else
                                handles.infizq.Value=0;
                            end
                            
                            if i4==1
                                handles.medio.Value=1;
                            else
                                handles.medio.Value=0;
                            end
                            
                            if i5==1
                                handles.supder.Value=1;
                            else
                                handles.supder.Value=0;
                            end
                            
                            if i6==1
                                handles.supizq.Value=1;
                            else
                                handles.supizq.Value=0;
                            end
                            
                            if i7==1
                                handles.sup.Value=1;
                            else
                                handles.sup.Value=0;
                            end
                            pause(0.1)
                        end
                    end
                end
            end
        end
    end
end