function [img_bitstream,block_quantized_bitStream,block_Encoded_bitStream] = Enompress(img_Y,rows_num,cols_num,q50)
%% COMPRESSION
block_Encoded_bitStream = [];
img_bitStream = [];
rows_index = 1;
for i = 1 : rows_num
    cols_index = 1;
    for j = 1 : cols_num
        % Single block processing
        block = img_Y(rows_index:rows_index+7, cols_index:cols_index+7);
        
        % Block centerization
        %block_centerized = double(block);
        block_centerized = double(block) - 128;
        % Block DCT transform
        for m = 1 : 8
            for n = 1 : 8
                if m == 1
                    u = 1/sqrt(8);
                else
                    u = sqrt(2/8);%1/2
                end
                if n == 1
                    v = 1/sqrt(8);%1/2sqrt(2)
                else
                    v = sqrt(2/8);%1/2
                end
                %1/4 * 1/sqrt(2)
                %1/4 * 1
                comp = 0;
                for x = 1 : 8
                    for y = 1 : 8
                        comp = comp + block_centerized(x, y)*(cos((((2*(x-1))+1)*(m-1)*pi)/16))*(cos((((2*(y-1))+1)*(n-1)*pi)/16));
                    end
                end
                block_DCT(m, n) = v*u*comp;
            end
        end
        
        % Block quantization
        for x=1:8
            for y=1:8
                block_quantized(x, y) = round(block_DCT(x, y)/q50(x, y));
            end
        end
        block_quantized = block_quantized;
        block_quantized_bitStream(rows_index:rows_index+7,cols_index:cols_index+7) = block_quantized;
        
        % Block Zigzag encoding
        block_encoded = zigzag(block_quantized);
        block_Encoded_bitStream = [block_Encoded_bitStream; block_encoded(1:64)];
        % Reduce encoded data size to 32 bytes
        block_reduced = block_encoded(1:32);
        img_bitStream = [img_bitStream; block_reduced];

        cols_index = cols_index + 8;
    end
    rows_index = rows_index + 8;
end
block_quantized_bitStream = block_quantized_bitStream;
block_Encoded_bitStream = block_Encoded_bitStream;
img_bitstream = img_bitStream;
return;