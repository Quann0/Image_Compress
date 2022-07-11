function [Org,block_8x8bitStream,block_bitstream] = Decompress(q50,rows_num,cols_num,img_bitstream)

% % % % % % % % % % % % % % %
% % DECOMPRESSION
% % % % % % %
block_8x8bitStream = [];
rows_index = 1;
k = 0;
for i = 1 : rows_num
    cols_index = 1;
    for j = 1 : cols_num
        k = k + 1;
        img_64bitstream = zeros(1,64);
        img_64bitstream(1:32) = img_bitstream(k,1:32);
        block_8x8bitStream = [block_8x8bitStream;uint8(img_64bitstream)];
        block_quantized = izigzag(img_64bitstream,8,8);
        block_bitstream(rows_index:rows_index+7,cols_index:cols_index+7) = block_quantized;
        %block_quantized = block_all(rows_index:rows_index+7,cols_index:cols_index+7);
        for x=1:8
            for img_Y=1:8
                DQ(x, img_Y) = q50(x, img_Y)*block_quantized(x, img_Y);
            end
        end
        
        for x = 1:8
            for img_Y = 1:8
                comp = 0;
                for m = 1:8
                    for n = 1:8
                        if m == 1
                            u = 1/sqrt(2);
                        else
                            u = 1;
                        end
                        if n == 1
                            v = 1/sqrt(2);
                        else
                            v = 1;
                        end
                        
                        comp = comp + u*v*DQ(m, n)*(cos((((2*(x-1))+1)*(m-1)*pi)/16))*(cos((((2*(img_Y-1))+1)*(n-1)*pi)/16));
                    end
                end
                %bf(x, img_Y) =  round((1/4) *comp);
                bf(x, img_Y) =  round((1/4) *comp + 128);
            end
        end
        Org(rows_index:rows_index+7,cols_index:cols_index+7) = bf;
        cols_index = cols_index + 8;
    end
    rows_index = rows_index + 8;
end

return;