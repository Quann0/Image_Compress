function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by i  self, creates a new GUI or raises the existing
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

% Last Modified by GUIDE v2.5 11-Jun-2022 00:44:10

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

global varargin1
% Choose default command line output for GUI
handles.output = hObject;

varargin1 = varargin;
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])
axes(handles.axes1)
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])
axes(handles.axes3)
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])

%a = ['Start' newline 'Compress'];
handles.pushbutton2.String = 'Start Compress';
handles.pushbutton2.FontSize = 13.0;
set(handles.pushbutton2,'Enable','off');
set(handles.pushbutton4,'Enable','off');
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
global img_org_input
global img_YCbCr_input
global img_Y_input
global img_Cb_input
global img_Cr_input
global img_quantized_bitstream
global img_Encoded_bitstream
global img_bitstream_encode_input
global img_64Decoded_bitstream
global img_izizagDecoded_bitstream
global img_bitstream_decode_input
global img_Decompress_padding_input
global img_YCbCr_output
global img_rgb_output
global psnr1;
handles.text10.String = 'STATUS: COMPRESSING...';
set(handles.pushbutton4,'Enable','off');
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
imwrite(img_YCbCr, 'YCbCr.jpg');
imwrite(img_Y, 'img_Y.jpg');

img_org_input = img_org;
img_YCbCr_input = img_YCbCr;
img_Y_input = img_Y;
img_Cb_input = img_Cb;
img_Cr_input = img_Cr;

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
[img_bitstream,block_quantized_bitstream,block_Encoded_bitstream] = Encompress(img_Y,rows_num,cols_num,q50);
% [img_X_bitstream,img_Y_bitstream] = size(img_bitstream);
img_bitstream_encode_input = img_bitstream;
img_quantized_bitstream = block_quantized_bitstream;
img_Encoded_bitstream = block_Encoded_bitstream;


%Decompress
[img_bitstream_decompress,img_64bitstream,block_bitstream] = Decompress(q50,rows_num,cols_num,img_bitstream);
% [img_X_bitstream_decompress, img_Y_bitstream_decompress] = size(img_bitstream_decompress);
img_bitstream_decode_input = img_bitstream_decompress;
img_64Decoded_bitstream = img_64bitstream;
img_izizagDecoded_bitstream = block_bitstream;

%Padding
[x_img_bitstream_decompress,y_img_bitstream_decompress] = size(img_bitstream_decompress);
img_Decompress_padding(1:x_img_bitstream_decompress,1:y_img_bitstream_decompress) = img_bitstream_decompress;
% [img_X_Decompress_padding, img_Y_Decompress_padding] = size(img_Decompress_padding);
img_Decompress_padding_input = img_Decompress_padding;

%Convert rgb
img_compress = cat(3,uint8(img_Decompress_padding),img_Cb,img_Cr);
img_YCbCr_output = img_compress;
img_compress = ycbcr2rgb(img_compress);
img_rgb_output = img_compress;


%psnr
peaksnr = psnr(uint8(img_Decompress_padding),img_Y);
psnr1 = peaksnr;

%imwrite(uint8(img_compress), 'output.jpg');
imwrite(img_compress, 'output.jpg');

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

handles.text10.String = 'STATUS: FINISH!';
set(handles.pushbutton4,'Enable','on');
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



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global varargin1
global img_org_input
global img_YCbCr_input
global img_Y_input
global img_Cb_input
global img_Cr_input
global img_quantized_bitstream
global img_Encoded_bitstream
global img_bitstream_encode_input
global img_64Decoded_bitstream
global img_izizagDecoded_bitstream
global img_bitstream_decode_input
global img_Decompress_padding_input
global img_YCbCr_output
global img_rgb_output
global psnr1;
setappdata(0,'avalue',img_org_input);
setappdata(0,'bvalue',img_YCbCr_input);
setappdata(0,'cvalue',img_Y_input);
setappdata(0,'dvalue',img_Cb_input);
setappdata(0,'evalue',img_Cr_input);
setappdata(0,'fvalue',img_quantized_bitstream);
setappdata(0,'gvalue',img_Encoded_bitstream);
setappdata(0,'hvalue',img_bitstream_encode_input);
setappdata(0,'ivalue',img_64Decoded_bitstream);
setappdata(0,'jvalue',img_izizagDecoded_bitstream);
setappdata(0,'kvalue',img_bitstream_decode_input);
setappdata(0,'lvalue',img_Decompress_padding_input);
setappdata(0,'mvalue',img_YCbCr_output);
setappdata(0,'nvalue',img_rgb_output);
setappdata(0,'ovalue',psnr1);


untitled(varargin1);
