function varargout = produksi_produk(varargin)
% PRODUKSI_PRODUK MATLAB code for produksi_produk.fig
%      PRODUKSI_PRODUK, by itself, creates a new PRODUKSI_PRODUK or raises the existing
%      singleton*.
%
%      H = PRODUKSI_PRODUK returns the handle to a new PRODUKSI_PRODUK or the handle to
%      the existing singleton*.
%
%      PRODUKSI_PRODUK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRODUKSI_PRODUK.M with the given input arguments.
%
%      PRODUKSI_PRODUK('Property','Value',...) creates a new PRODUKSI_PRODUK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before produksi_produk_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to produksi_produk_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help produksi_produk

% Last Modified by GUIDE v2.5 19-Dec-2022 15:36:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @produksi_produk_OpeningFcn, ...
                   'gui_OutputFcn',  @produksi_produk_OutputFcn, ...
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


% --- Executes just before produksi_produk is made visible.
function produksi_produk_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to produksi_produk (see VARARGIN)

% Choose default command line output for produksi_produk
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes produksi_produk wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = produksi_produk_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fis = readfis('produksi.fis'); % fis = readfis('penjualan.fis'); u can specified more for the fis file
permintaan=str2double(get(findobj(gcf,'Tag','txtPermintaan'),'String'));
persediaan=str2double(get(findobj(gcf,'Tag','txtPersediaan'),'String'));
disp(permintaan);

output = evalfis([permintaan;persediaan], fis);
% output = permintaan;
set(findobj(gcf,'Tag','txtProduksi'),'String',output);
disp(output);
