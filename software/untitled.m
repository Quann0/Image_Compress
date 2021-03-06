function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 10-Jul-2022 23:56:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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



% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

axes(handles.axes1)
arrow_p1 = [0 0.5]; % Startpunkt x1,y1
arrow_p2 = [1 0]; % Breite des Pfeils = 0 und L?nge des Pfeils mit Richtung -1 (nach unten)
h=annotation('textarrow','String',[]); % arrow, doublearrow, textarrow
 set(h,'parent', gca, 'position', [arrow_p1,arrow_p2], ... 
'HeadLength', 5, 'HeadWidth', 15, 'HeadStyle', 'vback2', ...
'Color', [0 0 0], 'LineWidth', 0.5);
set(handles.axes1,'Color',[0.93 0.84 0.84]);
set(gca,'xcolor',[0.93 0.84 0.84]);
set(gca,'ycolor',[0.93 0.84 0.84]);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])

axes(handles.axes2)
arrow_p1 = [0 0.5]; % Startpunkt x1,y1
arrow_p2 = [1 0]; % Breite des Pfeils = 0 und L?nge des Pfeils mit Richtung -1 (nach unten)
h=annotation('textarrow','String',[]); % arrow, doublearrow, textarrow
 set(h,'parent', gca, 'position', [arrow_p1,arrow_p2], ... 
'HeadLength', 5, 'HeadWidth', 15, 'HeadStyle', 'vback2', ...
'Color', [0 0 0], 'LineWidth', 0.5);
set(handles.axes2,'Color',[0.93 0.84 0.84]);
set(gca,'xcolor',[0.93 0.84 0.84]);
set(gca,'ycolor',[0.93 0.84 0.84]);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])

axes(handles.axes3)
arrow_p1 = [0 -1]; % Startpunkt x1,y1
arrow_p2 = [1 1]; % Breite des Pfeils = 0 und L?nge des Pfeils mit Richtung -1 (nach unten)
h=annotation('textarrow','String',[]); % arrow, doublearrow, textarrow
 set(h,'parent', gca, 'position', [arrow_p1,arrow_p2], ...
'HeadLength', 5, 'HeadWidth', 15, 'HeadStyle', 'vback2', ...
'Color', [0 0 0], 'LineWidth', 0.5);
set(handles.axes3,'Color',[0.93 0.84 0.84]);
set(gca,'xcolor',[0.93 0.84 0.84]);
set(gca,'ycolor',[0.93 0.84 0.84]);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])

axes(handles.axes4)
arrow_p1 = [0 2]; % Startpunkt x1,y1
arrow_p2 = [1 -1]; % Breite des Pfeils = 0 und L?nge des Pfeils mit Richtung -1 (nach unten)
h=annotation('textarrow','String',[]); % arrow, doublearrow, textarrow
 set(h,'parent', gca, 'position', [arrow_p1,arrow_p2], ...
'HeadLength', 5, 'HeadWidth', 15, 'HeadStyle', 'vback2', ...
'Color', [0 0 0], 'LineWidth', 0.5);
set(handles.axes4,'Color',[0.93 0.84 0.84]);
set(gca,'xcolor',[0.93 0.84 0.84]);
set(gca,'ycolor',[0.93 0.84 0.84]);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])

axes(handles.axes5)
arrow_p1 = [0 0.5]; % Startpunkt x1,y1
arrow_p2 = [1 0]; % Breite des Pfeils = 0 und L?nge des Pfeils mit Richtung -1 (nach unten)
h=annotation('textarrow','String',[]); % arrow, doublearrow, textarrow
 set(h,'parent', gca, 'position', [arrow_p1,arrow_p2], ... 
'HeadLength', 5, 'HeadWidth', 15, 'HeadStyle', 'vback2', ...
'Color', [0 0 0], 'LineWidth', 0.5);
set(handles.axes5,'Color',[0.93 0.84 0.84]);
set(gca,'xcolor',[0.93 0.84 0.84]);
set(gca,'ycolor',[0.93 0.84 0.84]);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])

axes(handles.axes6)
arrow_p1 = [0 0.5]; % Startpunkt x1,y1
arrow_p2 = [1 0]; % Breite des Pfeils = 0 und L?nge des Pfeils mit Richtung -1 (nach unten)
h=annotation('textarrow','String',[]); % arrow, doublearrow, textarrow
 set(h,'parent', gca, 'position', [arrow_p1,arrow_p2], ... 
'HeadLength', 5, 'HeadWidth', 15, 'HeadStyle', 'vback2', ...
'Color', [0 0 0], 'LineWidth', 0.5);
set(handles.axes6,'Color',[0.93 0.84 0.84]);
set(gca,'xcolor',[0.93 0.84 0.84]);
set(gca,'ycolor',[0.93 0.84 0.84]);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])

axes(handles.axes7)
arrow_p1 = [0 1]; % Startpunkt x1,y1
arrow_p2 = [0 -1]; % Breite des Pfeils = 0 und L?nge des Pfeils mit Richtung -1 (nach unten)
h=annotation('textarrow','String',[]); % arrow, doublearrow, textarrow
 set(h,'parent', gca, 'position', [arrow_p1,arrow_p2], ... 
'HeadLength', 5, 'HeadWidth', 15, 'HeadStyle', 'vback2', ...
'Color', [0 0 0], 'LineWidth', 0.5);
set(handles.axes7,'Color',[0.93 0.84 0.84]);
set(gca,'xcolor',[0.93 0.84 0.84]);
set(gca,'ycolor',[0.93 0.84 0.84]);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])


axes(handles.axes16)
arrow_p1 = [0 1]; % Startpunkt x1,y1
arrow_p2 = [0 -1]; % Breite des Pfeils = 0 und L?nge des Pfeils mit Richtung -1 (nach unten)
h=annotation('textarrow','String',[]); % arrow, doublearrow, textarrow
 set(h,'parent', gca, 'position', [arrow_p1,arrow_p2], ... 
'HeadLength', 5, 'HeadWidth', 15, 'HeadStyle', 'vback2', ...
'Color', [0 0 0], 'LineWidth', 0.5);
set(handles.axes16,'Color',[0.93 0.84 0.84]);
set(gca,'xcolor',[0.93 0.84 0.84]);
set(gca,'ycolor',[0.93 0.84 0.84]);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])
%%
axes(handles.axes13)
arrow_p1 = [0 0.5]; % Startpunkt x1,y1
arrow_p2 = [1 0]; % Breite des Pfeils = 0 und L?nge des Pfeils mit Richtung -1 (nach unten)
h=annotation('textarrow','String',[]); % arrow, doublearrow, textarrow
 set(h,'parent', gca, 'position', [arrow_p1,arrow_p2], ... 
'HeadLength', 5, 'HeadWidth', 15, 'HeadStyle', 'vback2', ...
'Color', [0 0 0], 'LineWidth', 0.5);
set(handles.axes13,'Color',[0.93 0.84 0.84]);
set(gca,'xcolor',[0.93 0.84 0.84]);
set(gca,'ycolor',[0.93 0.84 0.84]);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])

axes(handles.axes17)
arrow_p1 = [1 0.5]; % Startpunkt x1,y1
arrow_p2 = [-1 0]; % Breite des Pfeils = 0 und L?nge des Pfeils mit Richtung -1 (nach unten)
h=annotation('textarrow','String',[]); % arrow, doublearrow, textarrow
 set(h,'parent', gca, 'position', [arrow_p1,arrow_p2], ... 
'HeadLength', 5, 'HeadWidth', 15, 'HeadStyle', 'vback2', ...
'Color', [0 0 0], 'LineWidth', 0.5);
set(handles.axes17,'Color',[0.93 0.84 0.84]);
set(gca,'xcolor',[0.93 0.84 0.84]);
set(gca,'ycolor',[0.93 0.84 0.84]);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])

axes(handles.axes26)
arrow_p1 = [1 0.5]; % Startpunkt x1,y1
arrow_p2 = [-1 -1]; % Breite des Pfeils = 0 und L?nge des Pfeils mit Richtung -1 (nach unten)
h=annotation('textarrow','String',[]); % arrow, doublearrow, textarrow
 set(h,'parent', gca, 'position', [arrow_p1,arrow_p2], ... 
'HeadLength', 5, 'HeadWidth', 15, 'HeadStyle', 'vback2', ...
'Color', [0 0 0], 'LineWidth', 0.5);
set(handles.axes26,'Color',[0.93 0.84 0.84]);
set(gca,'xcolor',[0.93 0.84 0.84]);
set(gca,'ycolor',[0.93 0.84 0.84]);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])

axes(handles.axes32)
arrow_p1 = [1 0.5]; % Startpunkt x1,y1
arrow_p2 = [-1 -1]; % Breite des Pfeils = 0 und L?nge des Pfeils mit Richtung -1 (nach unten)
h=annotation('textarrow','String',[]); % arrow, doublearrow, textarrow
 set(h,'parent', gca, 'position', [arrow_p1,arrow_p2], ... 
'HeadLength', 5, 'HeadWidth', 15, 'HeadStyle', 'vback2', ...
'Color', [0 0 0], 'LineWidth', 0.5);
set(handles.axes32,'Color',[0.93 0.84 0.84]);
set(gca,'xcolor',[0.93 0.84 0.84]);
set(gca,'ycolor',[0.93 0.84 0.84]);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])


axes(handles.axes27)
arrow_p1 = [1 0.5]; % Startpunkt x1,y1
arrow_p2 = [-1 0]; % Breite des Pfeils = 0 und L?nge des Pfeils mit Richtung -1 (nach unten)
h=annotation('textarrow','String',[]); % arrow, doublearrow, textarrow
 set(h,'parent', gca, 'position', [arrow_p1,arrow_p2], ...
'HeadLength', 5, 'HeadWidth', 15, 'HeadStyle', 'vback2', ...
'Color', [0 0 0], 'LineWidth', 0.5);
set(handles.axes27,'Color',[0.93 0.84 0.84]);
set(gca,'xcolor',[0.93 0.84 0.84]);
set(gca,'ycolor',[0.93 0.84 0.84]);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])

axes(handles.axes28)
arrow_p1 = [1 0.5]; % Startpunkt x1,y1
arrow_p2 = [-1 1]; % Breite des Pfeils = 0 und L?nge des Pfeils mit Richtung -1 (nach unten)
h=annotation('textarrow','String',[]); % arrow, doublearrow, textarrow
 set(h,'parent', gca, 'position', [arrow_p1,arrow_p2], ...
'HeadLength', 5, 'HeadWidth', 15, 'HeadStyle', 'vback2', ...
'Color', [0 0 0], 'LineWidth', 0.5);
set(handles.axes28,'Color',[0.93 0.84 0.84]);
set(gca,'xcolor',[0.93 0.84 0.84]);
set(gca,'ycolor',[0.93 0.84 0.84]);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])

axes(handles.axes18)
arrow_p1 = [1 0]; % Startpunkt x1,y1
arrow_p2 = [0 1]; % Breite des Pfeils = 0 und L?nge des Pfeils mit Richtung -1 (nach unten)
h=annotation('textarrow','String',[]); % arrow, doublearrow, textarrow
 set(h,'parent', gca, 'position', [arrow_p1,arrow_p2], ...
'HeadLength', 5, 'HeadWidth', 15, 'HeadStyle', 'vback2', ...
'Color', [0 0 0], 'LineWidth', 0.5);
set(handles.axes18,'Color',[0.93 0.84 0.84]);
set(gca,'xcolor',[0.93 0.84 0.84]);
set(gca,'ycolor',[0.93 0.84 0.84]);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])

axes(handles.axes24)
arrow_p1 = [1 0.5]; % Startpunkt x1,y1
arrow_p2 = [-1 0]; % Breite des Pfeils = 0 und L?nge des Pfeils mit Richtung -1 (nach unten)
h=annotation('textarrow','String',[]); % arrow, doublearrow, textarrow
 set(h,'parent', gca, 'position', [arrow_p1,arrow_p2], ...
'HeadLength', 5, 'HeadWidth', 15, 'HeadStyle', 'vback2', ...
'Color', [0 0 0], 'LineWidth', 0.5);
set(handles.axes24,'Color',[0.93 0.84 0.84]);
set(gca,'xcolor',[0.93 0.84 0.84]);
set(gca,'ycolor',[0.93 0.84 0.84]);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])


axes(handles.axes30)
arrow_p1 = [1 0.5]; % Startpunkt x1,y1
arrow_p2 = [-1 0]; % Breite des Pfeils = 0 und L?nge des Pfeils mit Richtung -1 (nach unten)
h=annotation('textarrow','String',[]); % arrow, doublearrow, textarrow
 set(h,'parent', gca, 'position', [arrow_p1,arrow_p2], ...
'HeadLength', 5, 'HeadWidth', 15, 'HeadStyle', 'vback2', ...
'Color', [0 0 0], 'LineWidth', 0.5);
set(handles.axes30,'Color',[0.93 0.84 0.84]);
set(gca,'xcolor',[0.93 0.84 0.84]);
set(gca,'ycolor',[0.93 0.84 0.84]);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])


%%
img_org_input = getappdata(0,'avalue');
[img_height_org_input,img_width_org_input,img_Z_org_input] = size(img_org_input);
Join = {int2str(img_height_org_input),'x',int2str(img_width_org_input),'x',int2str(img_Z_org_input)};
handles.edit11.String = strjoin(Join); 
axes(handles.axes8)
imagesc(img_org_input);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])

img_YCbCr_input = getappdata(0,'bvalue');
[img_height_YCbCr_input,img_width_YCbCr_input,img_Z_YCbCr_input] = size(img_YCbCr_input);
Join = {int2str(img_height_YCbCr_input),'x',int2str(img_width_YCbCr_input),'x',int2str(img_Z_YCbCr_input)};
handles.edit12.String = strjoin(Join); 
axes(handles.axes9)
imagesc(img_YCbCr_input);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])

%%
img_Y_input = getappdata(0,'cvalue');
[img_height_Y_input,img_width_Y_input,img_Z_Y_input] = size(img_Y_input);
Join = {int2str(img_height_Y_input),'x',int2str(img_width_Y_input),'x',int2str(img_Z_Y_input)};
handles.edit9.String = strjoin(Join);
Join = {int2str(img_height_Y_input),'x',int2str(img_width_Y_input)};
handles.edit6.String = strjoin(Join);
set(handles.uitable8,'data',img_Y_input);
axes(handles.axes11)
imagesc(img_Y_input);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])

img_Cb_input = getappdata(0,'dvalue');
[img_height_Cb_input,img_width_Cb_input,img_Z_Y_input] = size(img_Cb_input);
Join = {int2str(img_height_Cb_input),'x',int2str(img_width_Cb_input),'x',int2str(img_Z_Y_input)};
handles.edit8.String = strjoin(Join);
handles.edit14.String = strjoin(Join);
axes(handles.axes10)
imagesc(img_Cb_input);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])

img_Cr_input = getappdata(0,'evalue');
[img_height_Cr_input,img_width_Cr_input,img_Z_Cr_input] = size(img_Cr_input);
Join = {int2str(img_height_Cr_input),'x',int2str(img_width_Cr_input),'x',int2str(img_Z_Cr_input)};
handles.edit10.String = strjoin(Join); 
handles.edit16.String = strjoin(Join);
axes(handles.axes12)
imagesc(img_Cr_input);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])

img_quantized_bitstream = getappdata(0,'fvalue');
set(handles.uitable7,'data',img_quantized_bitstream);
[img_height_quantized_bitstream,img_width_quantized_bitstream] = size(img_quantized_bitstream);
Join = {int2str(img_height_quantized_bitstream),'x',int2str(img_width_quantized_bitstream)};
handles.edit4.String = strjoin(Join); 
Join = {int2str(img_height_Cr_input),'x',int2str(img_width_Cr_input)};
handles.edit7.String = strjoin(Join); 


img_Encoded_bitstream = getappdata(0,'gvalue');
set(handles.uitable6,'data',img_Encoded_bitstream);
[img_height_Encoded_bitstream,img_width_Encoded_bitstream] = size(img_Encoded_bitstream);
Join = {int2str(img_height_Encoded_bitstream),'x',int2str(img_width_Encoded_bitstream)};
handles.edit3.String = strjoin(Join); 


img_bitstream_encode_input = getappdata(0,'hvalue');
set(handles.uitable10,'data',img_bitstream_encode_input);
[img_height_bitstream_encode_input,img_width_bitstream_encode_input] = size(img_bitstream_encode_input);
Join = {int2str(img_height_bitstream_encode_input),'x',int2str(img_width_bitstream_encode_input)};
handles.edit1.String = strjoin(Join); 

img_64Decoded_bitstream = getappdata(0,'ivalue');
set(handles.uitable3,'data',img_64Decoded_bitstream);
[img_height_64Decoded_bitstream,img_width_64Decoded_bitstream] = size(img_64Decoded_bitstream);
Join = {int2str(img_height_64Decoded_bitstream),'x',int2str(img_width_64Decoded_bitstream)};
handles.edit2.String = strjoin(Join); 

img_izizagDecoded_bitstream = getappdata(0,'jvalue');
set(handles.uitable4,'data',img_izizagDecoded_bitstream);
[img_height_izizagDecoded_bitstream,img_width_izizagDecoded_bitstream] = size(img_izizagDecoded_bitstream);
Join = {int2str(img_height_izizagDecoded_bitstream),'x',int2str(img_width_izizagDecoded_bitstream)};
handles.edit13.String = strjoin(Join); 

img_bitstream_decode_input = getappdata(0,'kvalue');
set(handles.uitable11,'data',img_bitstream_decode_input);
[img_height_bitstream_decode_input,img_width_bitstream_decode_input] = size(img_bitstream_decode_input);
Join = {int2str(img_height_bitstream_decode_input),'x',int2str(img_width_bitstream_decode_input)};
handles.edit20.String = strjoin(Join); 

img_Decompress_padding_input = getappdata(0,'lvalue');
set(handles.uitable5,'data',img_Decompress_padding_input);
[img_height_Decompress_padding_input,img_width_Decompress_padding_input] = size(img_Decompress_padding_input);
Join = {int2str(img_height_Decompress_padding_input),'x',int2str(img_width_Decompress_padding_input)};
handles.edit17.String = strjoin(Join); 
handles.edit15.String = strjoin(Join);
axes(handles.axes21)
imagesc(img_Decompress_padding_input);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])
axes(handles.axes20)
imagesc(img_Cb_input);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])
axes(handles.axes22)
imagesc(img_Cr_input);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])

img_YCbCr_output = getappdata(0,'mvalue');
[img_height_YCbCr_output,img_width_YCbCr_output,img_Z_YCbCr_output] = size(img_YCbCr_output);
Join = {int2str(img_height_YCbCr_output),'x',int2str(img_width_YCbCr_output),'x',int2str(img_Z_YCbCr_output)};
handles.edit18.String = strjoin(Join); 
axes(handles.axes29)
imagesc(img_YCbCr_output);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])

img_rgb_output = getappdata(0,'nvalue');
[img_height_rgb_output,img_width_rgb_output,img_Z_rgb_output] = size(img_rgb_output);
Join = {int2str(img_height_rgb_output),'x',int2str(img_width_rgb_output),'x',int2str(img_Z_rgb_output)};
handles.edit19.String = strjoin(Join); 
axes(handles.axes31)
imagesc(img_rgb_output);
set (gca, 'xtick' , [])
set (gca, 'ytick' , [])


psnr1 = getappdata(0,'ovalue');
handles.edit22.String = num2str(psnr1);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
