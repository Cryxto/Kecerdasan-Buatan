function varargout = caesarian(varargin)
% CAESARIAN MATLAB code for caesarian.fig
%      CAESARIAN, by itself, creates a new CAESARIAN or raises the existing
%      singleton*.
%
%      H = CAESARIAN returns the handle to a new CAESARIAN or the handle to
%      the existing singleton*.
%
%      CAESARIAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CAESARIAN.M with the given input arguments.
%
%      CAESARIAN('Property','Value',...) creates a new CAESARIAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before caesarian_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to caesarian_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help caesarian

% Last Modified by GUIDE v2.5 17-Jan-2023 19:53:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @caesarian_OpeningFcn, ...
                   'gui_OutputFcn',  @caesarian_OutputFcn, ...
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


% --- Executes just before caesarian is made visible.
function caesarian_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to caesarian (see VARARGIN)

% Choose default command line output for caesarian
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes caesarian wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = caesarian_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in submit_button.
function submit_button_Callback(hObject, eventdata, handles)
% hObject    handle to submit_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fis = readfis('caesarian.fis');
input = [handles.age handles.delivery_number handles.delivery_time handles.blood_of_pressure handles.heart_problem];
out = round(evalfis(input, fis));
if out==1
    msgbox('Yes, Do The Caesarean Section')
else
    msgbox('No, Dont Do The Caesarean Section')
end


function age_Callback(hObject, eventdata, handles)
% hObject    handle to age (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
age = str2double(get(hObject,'String'));
handles.age=age;
guidata(hObject, handles)
% Hints: get(hObject,'String') returns contents of age as text
%        str2double(get(hObject,'String')) returns contents of age as a double


% --- Executes during object creation, after setting all properties.
function age_CreateFcn(hObject, eventdata, handles)
% hObject    handle to age (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function delivery_number_Callback(hObject, eventdata, handles)
% hObject    handle to delivery_number (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delivery_number = str2double(get(hObject,'String'));
handles.delivery_number=delivery_number;
guidata(hObject, handles)
% Hints: get(hObject,'String') returns contents of delivery_number as text
%        str2double(get(hObject,'String')) returns contents of delivery_number as a double


% --- Executes during object creation, after setting all properties.
function delivery_number_CreateFcn(hObject, eventdata, handles)
% hObject    handle to delivery_number (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function delivery_time_Callback(hObject, eventdata, handles)
% hObject    handle to delivery_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delivery_time = str2double(get(hObject,'String'));
handles.delivery_time=delivery_time;
guidata(hObject, handles)
% Hints: get(hObject,'String') returns contents of delivery_time as text
%        str2double(get(hObject,'String')) returns contents of delivery_time as a double


% --- Executes during object creation, after setting all properties.
function delivery_time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to delivery_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function blood_of_pressure_Callback(hObject, eventdata, handles)
% hObject    handle to blood_of_pressure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
blood_of_pressure = str2double(get(hObject,'String'));
handles.blood_of_pressure=blood_of_pressure;
guidata(hObject, handles)
% Hints: get(hObject,'String') returns contents of blood_of_pressure as text
%        str2double(get(hObject,'String')) returns contents of blood_of_pressure as a double


% --- Executes during object creation, after setting all properties.
function blood_of_pressure_CreateFcn(hObject, eventdata, handles)
% hObject    handle to blood_of_pressure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function heart_problem_Callback(hObject, eventdata, handles)
% hObject    handle to heart_problem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
heart_problem = str2double(get(hObject,'String'));
handles.heart_problem=heart_problem;
guidata(hObject, handles)
% Hints: get(hObject,'String') returns contents of heart_problem as text
%        str2double(get(hObject,'String')) returns contents of heart_problem as a double


% --- Executes during object creation, after setting all properties.
function heart_problem_CreateFcn(hObject, eventdata, handles)
% hObject    handle to heart_problem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
