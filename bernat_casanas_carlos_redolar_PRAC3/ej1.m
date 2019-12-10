function varargout = ej1(varargin)
% EJ1 MATLAB code for ej1.fig
%      EJ1, by itself, creates a new EJ1 or raises the existing
%      singleton*.
%
%      H = EJ1 returns the handle to a new EJ1 or the handle to
%      the existing singleton*.
%
%      EJ1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EJ1.M with the given input arguments.
%
%      EJ1('Property','Value',...) creates a new EJ1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ej1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ej1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ej1

% Last Modified by GUIDE v2.5 26-Nov-2019 18:54:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ej1_OpeningFcn, ...
                   'gui_OutputFcn',  @ej1_OutputFcn, ...
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


% --- Executes just before ej1 is made visible.
function ej1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ej1 (see VARARGIN)

% Choose default command line output for ej1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ej1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ej1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in button.
function button_Callback(hObject, eventdata, handles)
% hObject    handle to button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

q0=str2double(get(handles.q0_b,'String'));
q1=str2double(get(handles.q1_b,'String'));
q2=str2double(get(handles.q2_b(1),'String'));
q3=str2double(get(handles.q3_b,'String'));
q=[q1;q2;q3];

p0=str2double(get(handles.q0_a,'String'));
p1=str2double(get(handles.q1_a,'String'));
p2=str2double(get(handles.q2_a,'String'));
p3=str2double(get(handles.q3_a,'String'));
p=[p1;p2;p3];

qp=zeros(4,1);

qp = [q0*p0-q'*p;
      q0*p+p0*q+cross(q,p)];



qp0=qp(1);
qp1=qp(2);
qp2=qp(3);
qp3=qp(4);

set(handles.q0_r,'String',num2str(qp0));
set(handles.q1_r,'String',num2str(qp1));
set(handles.q2_r,'String',num2str(qp2));
set(handles.q3_r,'String',num2str(qp3));





function q0_a_Callback(hObject, eventdata, handles)
% hObject    handle to q0_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q0_a as text
%        str2double(get(hObject,'String')) returns contents of q0_a as a double


% --- Executes during object creation, after setting all properties.
function q0_a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q0_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q1_a_Callback(hObject, eventdata, handles)
% hObject    handle to q1_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q1_a as text
%        str2double(get(hObject,'String')) returns contents of q1_a as a double


% --- Executes during object creation, after setting all properties.
function q1_a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q1_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q2_a_Callback(hObject, eventdata, handles)
% hObject    handle to q2_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q2_a as text
%        str2double(get(hObject,'String')) returns contents of q2_a as a double


% --- Executes during object creation, after setting all properties.
function q2_a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q2_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q3_a_Callback(hObject, eventdata, handles)
% hObject    handle to q3_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q3_a as text
%        str2double(get(hObject,'String')) returns contents of q3_a as a double


% --- Executes during object creation, after setting all properties.
function q3_a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q3_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q0_b_Callback(hObject, eventdata, handles)
% hObject    handle to q0_b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q0_b as text
%        str2double(get(hObject,'String')) returns contents of q0_b as a double


% --- Executes during object creation, after setting all properties.
function q0_b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q0_b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q1_b_Callback(hObject, eventdata, handles)
% hObject    handle to q1_b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q1_b as text
%        str2double(get(hObject,'String')) returns contents of q1_b as a double


% --- Executes during object creation, after setting all properties.
function q1_b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q1_b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q2_b_Callback(hObject, eventdata, handles)
% hObject    handle to q2_b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q2_b as text
%        str2double(get(hObject,'String')) returns contents of q2_b as a double


% --- Executes during object creation, after setting all properties.
function q2_b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q2_b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q3_b_Callback(hObject, eventdata, handles)
% hObject    handle to q3_b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q3_b as text
%        str2double(get(hObject,'String')) returns contents of q3_b as a double


% --- Executes during object creation, after setting all properties.
function q3_b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q3_b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q0_r_Callback(hObject, eventdata, handles)
% hObject    handle to q0_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q0_r as text
%        str2double(get(hObject,'String')) returns contents of q0_r as a double


% --- Executes during object creation, after setting all properties.
function q0_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q0_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q1_r_Callback(hObject, eventdata, handles)
% hObject    handle to q1_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q1_r as text
%        str2double(get(hObject,'String')) returns contents of q1_r as a double


% --- Executes during object creation, after setting all properties.
function q1_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q1_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q3_r_Callback(hObject, eventdata, handles)
% hObject    handle to q3_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q3_r as text
%        str2double(get(hObject,'String')) returns contents of q3_r as a double


% --- Executes during object creation, after setting all properties.
function q3_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q3_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q2_r_Callback(hObject, eventdata, handles)
% hObject    handle to q2_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q2_r as text
%        str2double(get(hObject,'String')) returns contents of q2_r as a double


% --- Executes during object creation, after setting all properties.
function q2_r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q2_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
