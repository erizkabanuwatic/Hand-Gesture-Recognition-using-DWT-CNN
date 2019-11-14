function varargout = GUI_Biyan(varargin)
% GUI_BIYAN MATLAB code for GUI_Biyan.fig
%      GUI_BIYAN, by itself, creates a new GUI_BIYAN or raises the existing
%      singleton*.
%
%      H = GUI_BIYAN returns the handle to a new GUI_BIYAN or the handle to
%      the existing singleton*.
%
%      GUI_BIYAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_BIYAN.M with the given input arguments.
%
%      GUI_BIYAN('Property','Value',...) creates a new GUI_BIYAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_Biyan_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_Biyan_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_Biyan

% Last Modified by GUIDE v2.5 01-Aug-2019 16:42:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_Biyan_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_Biyan_OutputFcn, ...
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


% --- Executes just before GUI_Biyan is made visible.
function GUI_Biyan_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_Biyan (see VARARGIN)

% Choose default command line output for GUI_Biyan
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_Biyan wait for user response (see UIRESUME)
% uiwait(handles.figure1);
movegui('center')
gambar = imread ('telu2.jpg');
axes(handles.axes1); imshow (gambar);
gambar = imread ('pas photo.jpg');
axes(handles.axes3); imshow (gambar);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_Biyan_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global net feature_uji time_dwt50 accuracy time_klasifikasi
tic
UJI = imread('Uji-GUI.bmp')
%% Klasifikasi CNN
prediction = classify(net,UJI);
%% Akurasi
accuracy = num2str(accuracy);
prediction = cellstr(prediction);
time_uji = toc;
time     = time_uji+time_dwt50+time_klasifikasi;
set(handles.edit4,'string',prediction);
set(handles.edit5,'string',accuracy);
set(handles.edit6,'string',time);


function learning_Callback(hObject, eventdata, handles)
% hObject    handle to learning (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of learning as text
%        str2double(get(hObject,'String')) returns contents of learning as a double


% --- Executes during object creation, after setting all properties.
function learning_CreateFcn(hObject, eventdata, handles)
% hObject    handle to learning (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function epoch_Callback(hObject, eventdata, handles)
% hObject    handle to epoch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of epoch as text
%        str2double(get(hObject,'String')) returns contents of epoch as a double


% --- Executes during object creation, after setting all properties.
function epoch_CreateFcn(hObject, eventdata, handles)
% hObject    handle to epoch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global level jenis_subband tipe_prepro mom_wav time_dwt50 accuracy net dataset_name feature_uji time_klasifikasi
[panjang lebar] = size(feature_uji);% ukuran citra dwt
learning_rate  = get(handles.learning,'string');
learning_rate = str2num(learning_rate);
epoch   = get(handles.epoch,'string');
epoch  = str2num (epoch);
tic
fig = DATABASE_DWT(tipe_prepro,level,mom_wav,jenis_subband,dataset_name);
time_dwt = toc/250;
time_dwt50 = time_dwt*50;
[accuracy,net,time_klasifikasi] = CNN_manual(learning_rate,epoch,panjang,lebar);
accuracy = accuracy*100
save('accuracy','net');
tulis = 'Done';

set(handles.edit7,'string',[tulis]);



% --- Executes on selection change in subband.
function subband_Callback(hObject, eventdata, handles)
% hObject    handle to subband (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns subband contents as cell array
%        contents{get(hObject,'Value')} returns selected item from subband


% --- Executes during object creation, after setting all properties.
function subband_CreateFcn(hObject, eventdata, handles)
% hObject    handle to subband (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in level.
function level_Callback(hObject, eventdata, handles)
% hObject    handle to level (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns level contents as cell array
%        contents{get(hObject,'Value')} returns selected item from level


% --- Executes during object creation, after setting all properties.
function level_CreateFcn(hObject, eventdata, handles)
% hObject    handle to level (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in mother.
function mother_Callback(hObject, eventdata, handles)
% hObject    handle to mother (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns mother contents as cell array
%        contents{get(hObject,'Value')} returns selected item from mother


% --- Executes during object creation, after setting all properties.
function mother_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mother (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im2 level jenis_subband im_prepro mom_wav feature_uji
im_prepro      = im2
level          = get(handles.level,'value');
jenis_subband  = get(handles.subband,'value');
mother_wavelet = get(handles.mother,'value');
switch mother_wavelet
        case 1
            mom_wav='haar';
        case 2
            mom_wav='db3';
        case 3
            mom_wav='db5';
        case 4 
            mom_wav='db7';
     end
for ilevel = 1:level
    [LL,LH,HL,HH]=dwt2(im_prepro,mom_wav);
    switch jenis_subband
        case 1
            im_prepro=LL;
        case 2
            im_prepro=LH;
        case 3
            im_prepro=HL;
        case 4 
            im_prepro=HH;
    end
end
feature_uji = im_prepro
baru = 'Uji-GUI.bmp';
imwrite(feature_uji,baru)
axes(handles.axes6); imshow(im_prepro,[]);


% --- Executes on selection change in type_prepro.
function type_prepro_Callback(hObject, eventdata, handles)
% hObject    handle to type_prepro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns type_prepro contents as cell array
%        contents{get(hObject,'Value')} returns selected item from type_prepro


% --- Executes during object creation, after setting all properties.
function type_prepro_CreateFcn(hObject, eventdata, handles)
% hObject    handle to type_prepro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im_uji im2 tipe_prepro dataset_name
tipe_prepro = get(handles.type_prepro,'value');
im2 = prepro(im_uji,tipe_prepro,dataset_name);
axes(handles.axes5); imshow (im2);



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
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
global im im_uji dataset_name
im = uigetfile('*.bmp','Select a .bmp file');
im_uji = imread (im);
dataset_name = get(handles.pilihan_dataset,'value');
set(handles.edit1,'string',im);
axes(handles.axes4); imshow (im);



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pilihan_dataset.
function pilihan_dataset_Callback(hObject, eventdata, handles)
% hObject    handle to pilihan_dataset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pilihan_dataset contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pilihan_dataset


% --- Executes during object creation, after setting all properties.
function pilihan_dataset_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pilihan_dataset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
