function varargout = rata_rata_bonus(varargin)
% RATA_RATA_BONUS MATLAB code for rata_rata_bonus.fig
%      RATA_RATA_BONUS, by itself, creates a new RATA_RATA_BONUS or raises the existing
%      singleton*.
%
%      H = RATA_RATA_BONUS returns the handle to a new RATA_RATA_BONUS or the handle to
%      the existing singleton*.
%
%      RATA_RATA_BONUS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RATA_RATA_BONUS.M with the given input arguments.
%
%      RATA_RATA_BONUS('Property','Value',...) creates a new RATA_RATA_BONUS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before rata_rata_bonus_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to rata_rata_bonus_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help rata_rata_bonus

% Last Modified by GUIDE v2.5 25-Jan-2023 22:51:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @rata_rata_bonus_OpeningFcn, ...
                   'gui_OutputFcn',  @rata_rata_bonus_OutputFcn, ...
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


% --- Executes just before rata_rata_bonus is made visible.
function rata_rata_bonus_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to rata_rata_bonus (see VARARGIN)

% Choose default command line output for rata_rata_bonus
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes rata_rata_bonus wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = rata_rata_bonus_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function pelayanan_Callback(hObject, eventdata, handles)
% hObject    handle to pelayanan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pelayanan = str2double(get(hObject,'String'));
handles.pelayanan=pelayanan;
guidata(hObject, handles)
% Hints: get(hObject,'String') returns contents of pelayanan as text
%        str2double(get(hObject,'String')) returns contents of pelayanan as a double


% --- Executes during object creation, after setting all properties.
function pelayanan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pelayanan (see GCBO)
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
fis = readfis('rata_rata_bonus.fis');
input = [handles.pelayanan handles.masakan];
out = round(evalfis(input, fis));
disp(out)
if out<0 || out>10
    res = 'invalid';
else
    res = append("Harapan (Bonus) atau Rating : ",num2str(out)," dari 10");
end
disp(res)
msgbox(res);


function masakan_Callback(hObject, eventdata, handles)
% hObject    handle to masakan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
masakan = str2double(get(hObject,'String'));
handles.masakan=masakan;
guidata(hObject, handles)
% Hints: get(hObject,'String') returns contents of masakan as text
%        str2double(get(hObject,'String')) returns contents of masakan as a double


% --- Executes during object creation, after setting all properties.
function masakan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to masakan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
