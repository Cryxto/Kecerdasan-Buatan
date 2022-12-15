function varargout = gui_penjualan(varargin)
% GUI_PENJUALAN MATLAB code for gui_penjualan.fig
%      GUI_PENJUALAN, by itself, creates a new GUI_PENJUALAN or raises the existing
%      singleton*.
%
%      H = GUI_PENJUALAN returns the handle to a new GUI_PENJUALAN or the handle to
%      the existing singleton*.
%
%      GUI_PENJUALAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_PENJUALAN.M with the given input arguments.
%
%      GUI_PENJUALAN('Property','Value',...) creates a new GUI_PENJUALAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_penjualan_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_penjualan_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_penjualan

% Last Modified by GUIDE v2.5 15-Dec-2022 09:09:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_penjualan_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_penjualan_OutputFcn, ...
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


% --- Executes just before gui_penjualan is made visible.
function gui_penjualan_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_penjualan (see VARARGIN)

% Choose default command line output for gui_penjualan
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_penjualan wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_penjualan_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txtPermintaan_Callback(hObject, eventdata, handles)
% hObject    handle to txtPermintaan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtPermintaan as text
%        str2double(get(hObject,'String')) returns contents of txtPermintaan as a double


% --- Executes during object creation, after setting all properties.
function txtPermintaan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtPermintaan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtPersediaan_Callback(hObject, eventdata, handles)
% hObject    handle to txtPersediaan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtPersediaan as text
%        str2double(get(hObject,'String')) returns contents of txtPersediaan as a double


% --- Executes during object creation, after setting all properties.
function txtPersediaan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtPersediaan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtProduksi_Callback(hObject, eventdata, handles)
% hObject    handle to txtProduksi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtProduksi as text
%        str2double(get(hObject,'String')) returns contents of txtProduksi as a double


% --- Executes during object creation, after setting all properties.
function txtProduksi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtProduksi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnProses.
function btnProses_Callback(hObject, eventdata, handles)
% hObject    handle to btnProses (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fis = readfis('penjualan'); % fis = readfis('penjualan.fis'); u can specified more for the fis file
permintaan=str2double(get(findobj(gcf,'Tag','txtPermintaan'),'String'));
persediaan=str2double(get(findobj(gcf,'Tag','txtPersediaan'),'String'));

output = evalfis([permintaan;persediaan], fis);
set(findobj(gcf,'Tag','txtProduksi'),'String',output);
disp(output);

