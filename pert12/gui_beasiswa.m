function varargout = gui_beasiswa(varargin)
% GUI_BEASISWA MATLAB code for gui_beasiswa.fig
%      GUI_BEASISWA, by itself, creates a new GUI_BEASISWA or raises the existing
%      singleton*.
%
%      H = GUI_BEASISWA returns the handle to a new GUI_BEASISWA or the handle to
%      the existing singleton*.
%
%      GUI_BEASISWA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_BEASISWA.M with the given input arguments.
%
%      GUI_BEASISWA('Property','Value',...) creates a new GUI_BEASISWA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_beasiswa_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_beasiswa_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_beasiswa

% Last Modified by GUIDE v2.5 22-Dec-2022 09:09:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_beasiswa_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_beasiswa_OutputFcn, ...
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


% --- Executes just before gui_beasiswa is made visible.
function gui_beasiswa_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_beasiswa (see VARARGIN)

% Choose default command line output for gui_beasiswa
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_beasiswa wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_beasiswa_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ipk_Callback(hObject, eventdata, handles)
% hObject    handle to ipk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ipk = str2double(get(hObject,'String'));
handles.ipk=ipk;
guidata(hObject, handles)
% Hints: get(hObject,'String') returns contents of ipk as text
%        str2double(get(hObject,'String')) returns contents of ipk as a double


% --- Executes during object creation, after setting all properties.
function ipk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ipk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tkk_Callback(hObject, eventdata, handles)
% hObject    handle to tkk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tkk = str2double(get(hObject,'String'));
handles.tkk=tkk;
guidata(hObject, handles)

% Hints: get(hObject,'String') returns contents of tkk as text
%        str2double(get(hObject,'String')) returns contents of tkk as a double


% --- Executes during object creation, after setting all properties.
function tkk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tkk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in hitung.
function hitung_Callback(hObject, eventdata, handles)
% hObject    handle to hitung (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fis = readfis('percobaan.fis');
input = [handles.ipk handles.tkk];
out = evalfis(input, fis);
if out<0.8
    msgbox('Tidak Mendapat Beasiswa')
else
    msgbox('Memperoleh Beasiswa')
end
