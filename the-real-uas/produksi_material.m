function varargout = produksi_material(varargin)
% PRODUKSI_MATERIAL MATLAB code for produksi_material.fig
%      PRODUKSI_MATERIAL, by itself, creates a new PRODUKSI_MATERIAL or raises the existing
%      singleton*.
%
%      H = PRODUKSI_MATERIAL returns the handle to a new PRODUKSI_MATERIAL or the handle to
%      the existing singleton*.
%
%      PRODUKSI_MATERIAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRODUKSI_MATERIAL.M with the given input arguments.
%
%      PRODUKSI_MATERIAL('Property','Value',...) creates a new PRODUKSI_MATERIAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before produksi_material_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to produksi_material_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help produksi_material

% Last Modified by GUIDE v2.5 25-Jan-2023 18:29:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @produksi_material_OpeningFcn, ...
                   'gui_OutputFcn',  @produksi_material_OutputFcn, ...
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


% --- Executes just before produksi_material is made visible.
function produksi_material_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to produksi_material (see VARARGIN)

% Choose default command line output for produksi_material
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes produksi_material wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = produksi_material_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function suhu_Callback(hObject, eventdata, handles)
% hObject    handle to suhu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of suhu as text
%        str2double(get(hObject,'String')) returns contents of suhu as a double


% --- Executes during object creation, after setting all properties.
function suhu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to suhu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in button_push.
function button_push_Callback(hObject, eventdata, handles)
% hObject    handle to button_push (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
suhu=str2double(get(findobj(gcf,'Tag','suhu'),'String'));
kebisingan=str2double(get(findobj(gcf,'Tag','kebisingan'),'String'));
pencahayaan=str2double(get(findobj(gcf,'Tag','pencahayaan'),'String'));
fis = readfis('produksi_material.fis');
output = evalfis([suhu;kebisingan;pencahayaan], fis);
set(findobj(gcf,'Tag','produksi'),'String',output);
disp(output);


function pencahayaan_Callback(hObject, eventdata, handles)
% hObject    handle to pencahayaan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pencahayaan as text
%        str2double(get(hObject,'String')) returns contents of pencahayaan as a double


% --- Executes during object creation, after setting all properties.
function pencahayaan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pencahayaan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kebisingan_Callback(hObject, eventdata, handles)
% hObject    handle to kebisingan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kebisingan as text
%        str2double(get(hObject,'String')) returns contents of kebisingan as a double


% --- Executes during object creation, after setting all properties.
function kebisingan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kebisingan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
