function varargout = iris(varargin)
% IRIS MATLAB code for iris.fig
%      IRIS, by itself, creates a new IRIS or raises the existing
%      singleton*.
%
%      H = IRIS returns the handle to a new IRIS or the handle to
%      the existing singleton*.
%
%      IRIS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IRIS.M with the given input arguments.
%
%      IRIS('Property','Value',...) creates a new IRIS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before iris_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to iris_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help iris

% Last Modified by GUIDE v2.5 12-Jan-2023 08:43:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @iris_OpeningFcn, ...
                   'gui_OutputFcn',  @iris_OutputFcn, ...
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


% --- Executes just before iris is made visible.
function iris_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to iris (see VARARGIN)

% Choose default command line output for iris
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes iris wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = iris_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function sepal_length_Callback(hObject, eventdata, handles)
% hObject    handle to sepal_length (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sepal_length = str2double(get(hObject,'String'));
handles.sepal_length=sepal_length;
guidata(hObject, handles)
% Hints: get(hObject,'String') returns contents of sepal_length as text
%        str2double(get(hObject,'String')) returns contents of sepal_length as a double


% --- Executes during object creation, after setting all properties.
function sepal_length_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sepal_length (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sepal_width_Callback(hObject, eventdata, handles)
% hObject    handle to sepal_width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sepal_width = str2double(get(hObject,'String'));
handles.sepal_width=sepal_width;
guidata(hObject, handles)
% Hints: get(hObject,'String') returns contents of sepal_width as text
%        str2double(get(hObject,'String')) returns contents of sepal_width as a double


% --- Executes during object creation, after setting all properties.
function sepal_width_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sepal_width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function petal_length_Callback(hObject, eventdata, handles)
% hObject    handle to petal_length (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
petal_length = str2double(get(hObject,'String'));
handles.petal_length=petal_length;
guidata(hObject, handles)
% Hints: get(hObject,'String') returns contents of petal_length as text
%        str2double(get(hObject,'String')) returns contents of petal_length as a double


% --- Executes during object creation, after setting all properties.
function petal_length_CreateFcn(hObject, eventdata, handles)
% hObject    handle to petal_length (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function petal_width_Callback(hObject, eventdata, handles)
% hObject    handle to petal_width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
petal_width = str2double(get(hObject,'String'));
handles.petal_width=petal_width;
guidata(hObject, handles)
% Hints: get(hObject,'String') returns contents of petal_width as text
%        str2double(get(hObject,'String')) returns contents of petal_width as a double


% --- Executes during object creation, after setting all properties.
function petal_width_CreateFcn(hObject, eventdata, handles)
% hObject    handle to petal_width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in submit.
function submit_Callback(hObject, eventdata, handles)
% hObject    handle to submit (see GCBO)
fis = readfis('iris.fis');
input = [handles.sepal_length handles.sepal_width handles.petal_length handles.petal_width];
out = round(evalfis(input, fis));

if out==1
    msgbox('Iris Setosa');
elseif out==2
    msgbox('Iris Versicolour');
elseif out==3
    msgbox('Iris Virginica');
else
    msgbox('Not Valid');
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
