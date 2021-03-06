function varargout = ej3(varargin)
% EJ3 MATLAB code for ej3.fig
%      EJ3, by itself, creates a new EJ3 or raises the existing
%      singleton*.
%
%      H = EJ3 returns the handle to a new EJ3 or the handle to
%      the existing singleton*.
%
%      EJ3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EJ3.M with the given input arguments.
%
%      EJ3('Property','Value',...) creates a new EJ3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ej3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ej3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ej3

% Last Modified by GUIDE v2.5 05-Dec-2019 08:24:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ej3_OpeningFcn, ...
                   'gui_OutputFcn',  @ej3_OutputFcn, ...
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


% --- Executes just before ej3 is made visible.
function ej3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ej3 (see VARARGIN)

% Choose default command line output for ej3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ej3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ej3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.angle, 'String', num2str(get(hObject, 'Value')));
a = str2double(get(handles.angle, 'String'));
calculate(hObject, eventdata, handles, a);


% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function v_3_Callback(hObject, eventdata, handles)
% hObject    handle to v_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v_3 as text
%        str2double(get(hObject,'String')) returns contents of v_3 as a double


% --- Executes during object creation, after setting all properties.
function v_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v_1_Callback(hObject, eventdata, handles)
% hObject    handle to v_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v_1 as text
%        str2double(get(hObject,'String')) returns contents of v_1 as a double


% --- Executes during object creation, after setting all properties.
function v_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v_2_Callback(hObject, eventdata, handles)
% hObject    handle to v_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v_2 as text
%        str2double(get(hObject,'String')) returns contents of v_2 as a double


% --- Executes during object creation, after setting all properties.
function v_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function u_2_Callback(hObject, eventdata, handles)
% hObject    handle to u_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of u_2 as text
%        str2double(get(hObject,'String')) returns contents of u_2 as a double


% --- Executes during object creation, after setting all properties.
function u_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to u_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function u_1_Callback(hObject, eventdata, handles)
% hObject    handle to u_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of u_1 as text
%        str2double(get(hObject,'String')) returns contents of u_1 as a double


% --- Executes during object creation, after setting all properties.
function u_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to u_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function u_3_Callback(hObject, eventdata, handles)
% hObject    handle to u_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of u_3 as text
%        str2double(get(hObject,'String')) returns contents of u_3 as a double


% --- Executes during object creation, after setting all properties.
function u_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to u_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function calculate(hObject, eventdata, handles,a)

angle= a;

u = [str2double(get(handles.u_1, 'String'));str2double(get(handles.u_2, 'String'));str2double(get(handles.u_3, 'String'))];
v = [str2double(get(handles.v_1, 'String'));str2double(get(handles.v_2, 'String'));str2double(get(handles.v_3, 'String'))];

origin = [0,0,0];

p1 = [1,0,0];
p2 = [0,1,0];
p3 = [0 0 1];

u_norm = u/norm(u);

u_quaternion = [cosd(angle/ 2); sind(angle / 2) * u_norm];
conj_quaternion = [u_quaternion(1); -u_quaternion(2:4)];

v_quaternion = [0;v];

%q*v
q = u_quaternion;
p = v_quaternion;
q_vec = q(2:4, 1);
p_vec = p(2:4, 1);
qp_0 = q(1, 1) * p(1, 1) - (transpose(q_vec) * p_vec);
qp_vec = (q(1, 1) * p_vec) + (p(1, 1) * q_vec) + (cross(q_vec, p_vec));
qp = [qp_0; qp_vec(1:3, 1)];

%q * v * conj q
q = qp;
p = conj_quaternion;
q_vec = q(2:4, 1);
p_vec = p(2:4, 1);
qp_0 = q(1, 1) * p(1, 1) - (transpose(q_vec) * p_vec);
qp_vec = (q(1, 1) * p_vec) + (p(1, 1) * q_vec) + (cross(q_vec, p_vec));

%Result
R = [qp_0; qp_vec(1:3, 1)];
R = R / norm(R); %Normalize

%Plot
plot3([origin(1) p1(1)],[origin(2) p1(2)],[origin(3) p1(3)],'LineWidth',3);
hold on;
plot3([origin(1) p2(1)],[origin(2) p2(2)],[origin(3) p2(3)],'LineWidth',3);
plot3([origin(1) p3(1)],[origin(2) p3(2)],[origin(3) p3(3)],'LineWidth',3);
plot3([origin(1) R(2)],[origin(2) R(3)],[origin(3) R(4)], 'LineWidth', 3);
daspect([1 1 1]);
%details
set(gca,'CameraPosition',[1 2 1]);
set(gca, 'box', 'off');
set(gca, 'visible', 'off');

hold off;

