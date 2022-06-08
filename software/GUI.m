function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 08-Jun-2022 22:40:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;

gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
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


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])
axes(handles.axes1)
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])
axes(handles.axes3)
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])
axes(handles.axes4)
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])
%a = ['Start' newline 'Compress'];
handles.pushbutton2.String = 'Start Compress';
handles.pushbutton2.FontSize = 13.0;
set(handles.pushbutton2,'Enable','off');

% Update handles structure
guidata(hObject, handles);
% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, filepath] = uigetfile({'*.*';'*.jpg';'*.png';'*.bmp'},'Search image to be displayed');
 fullname = [filepath filename];
 ImageFile = imread(fullname);
 axes(handles.axes5)
 imagesc(ImageFile)
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])
handles.pushbutton2.String = 'Start Compress';
handles.text10.String = 'STATUS: READY!';
set(handles.pushbutton2,'Enable','on');
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%% Read input image
handles.text10.String = 'STATUS: COMPRESSING...';
set(handles.pushbutton2,'Enable','off');
set(handles.pushbutton1,'Enable','off');
IM=getimage(handles.axes5);
imwrite(IM, 'inputImage.jpg');
img_org = imread('inputImage.jpg');
axes(handles.axes1)
imagesc(img_org)
imwrite(img_org, 'input.jpg');
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])
s = dir('input.jpg');         
filesize = s.bytes;
chr = int2str(filesize);
Join = {chr,' Byte'};
chr = strjoin(Join);
set(handles.textByte1,'String',chr);
set(handles.textByte1,'ForegroundColor',[1 0 0]);
drawnow;
%convert ycbcr
img_YCbCr = rgb2ycbcr(img_org);
img_Y = img_YCbCr(:,:, 1);
img_Cb = img_YCbCr(:,:, 2);
img_Cr = img_YCbCr(:,:, 3);
[img_Height, img_Width] = size(img_Y);
rows_num = img_Height/8;
cols_num = img_Width/8;
img_Decompress_padding = zeros(img_Height,img_Width);
% DCT transform coeffeciences
q50 = [16 11 10 16 24 40 51 61;
    12 12 14 19 26 58 60 55;
    14 13 16 24 40 57 69 56;
    14 17 22 29 51 87 80 62;
    18 22 37 56 68 109 103 77;
    24 35 55 64 81 104 113 92;
    49 64 78 87 103 121 120 101;
    72 92 95 98 112 100 103 99];
%Encompress
img_bitstream = Encompress(img_Y,rows_num,cols_num,q50);
set(handles.uitable3,'data',img_bitstream);
%Decompress
img_bitstream_decompress = Decompress(q50,rows_num,cols_num,img_bitstream);

set(handles.uitable2,'data',img_bitstream_decompress);

%Padding
[x_img_bitstream_decompress,y_img_bitstream_decompress] = size(img_bitstream_decompress);
img_Decompress_padding(1:x_img_bitstream_decompress,1:y_img_bitstream_decompress) = img_bitstream_decompress;


set(handles.uitable4,'data',img_Decompress_padding);

%Convert rgb
img_compress = cat(3,uint8(img_Decompress_padding),img_Cb,img_Cr);
img_compress = ycbcr2rgb(img_compress);

imwrite(uint8(img_compress), 'output.jpg');
Image3 = imread('output.jpg');
axes(handles.axes3)
imagesc(Image3)
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])
s = dir('output.jpg');         
filesize = s.bytes;
chr = int2str(filesize);
Join = {chr,' Byte'};
chr = strjoin(Join);
set(handles.textByte3,'String',chr);
set(handles.textByte3,'ForegroundColor',[1 0 0]);
drawnow;




compare = abs(img_compress-img_org);
imwrite(compare, 'output_compare.jpg');
%subplot(2,2,4);
%imshow(uint8(compare));
Image4 = imread('output_compare.jpg');
axes(handles.axes4)
imagesc(Image4)
 set (gca, 'xtick' , [])
set (gca, 'ytick' , [])
s = dir('output_compare.jpg');         
filesize = s.bytes;
chr = int2str(filesize);
Join = {chr,' Byte'};
chr = strjoin(Join);
set(handles.textByte4,'String',chr);
set(handles.textByte4,'ForegroundColor',[1 0 0]);
drawnow;
handles.text10.String = 'STATUS: FINISH!';
set(handles.pushbutton2,'Enable','on');
set(handles.pushbutton1,'Enable','on');
return;


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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



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


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

