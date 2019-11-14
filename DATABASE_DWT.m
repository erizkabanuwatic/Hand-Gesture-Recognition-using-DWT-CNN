function im = DATABASE_DWT (tipe_prepro,level,mom_wav,jenis_subband,dataset_name);
% tipe_prepro = 1;
% level = 1;
% mom_wav = 'haar';
% jenis_subband = 1;
for i=1:50
 switch dataset_name
        case 1
        filename = strcat('C:\Users\Erizka Banuwati C\Desktop\CNN\Dataset\A\A-train',num2str(i),'.bmp');
        case 2
        filename = strcat('C:\Users\Erizka Banuwati C\Desktop\CNN\Dataset Erizka\A\A-erizka',num2str(i),'.bmp');
    end
im = imread (filename);
im = prepro(im,tipe_prepro,dataset_name);
for ilevel = 1:level
    [LL,LH,HL,HH]=dwt2(im,mom_wav);%1st level decomposition 
     switch jenis_subband
        case 1
            im=LL;
        case 2
            im=LH;
        case 3
            im=HL;
        case 4 
            im=HH;
    end
end
baru = strcat('A-training',num2str(i),'.bmp');
fullFileName = fullfile('Dataset DWT','A',baru);
imwrite(im,fullFileName);
end
for i=1:50
 switch dataset_name
        case 1
        filename = strcat('C:\Users\Erizka Banuwati C\Desktop\CNN\Dataset\B\B-train',num2str(i),'.bmp');
        case 2
        filename = strcat('C:\Users\Erizka Banuwati C\Desktop\CNN\Dataset Erizka\B\B-erizka',num2str(i),'.bmp');
    end
im = imread (filename);
im = prepro(im,tipe_prepro,dataset_name);
for ilevel = 1:level
    [LL,LH,HL,HH]=dwt2(im,mom_wav);%1st level decomposition 
     switch jenis_subband
        case 1
            im=LL;
        case 2
            im=LH;
        case 3
            im=HL;
        case 4 
            im=HH;
    end
end
baru = strcat('B-training',num2str(i),'.bmp');
fullFileName = fullfile('Dataset DWT','B',baru);
imwrite(im,fullFileName);
end
for i=1:50
switch dataset_name
        case 1
        filename = strcat('C:\Users\Erizka Banuwati C\Desktop\CNN\Dataset\C\C-train0',num2str(i),'.bmp');
        case 2
        filename = strcat('C:\Users\Erizka Banuwati C\Desktop\CNN\Dataset Erizka\C\C-erizka',num2str(i),'.bmp');
end
im = imread (filename);
im = prepro(im,tipe_prepro,dataset_name);
for ilevel = 1:level
    [LL,LH,HL,HH]=dwt2(im,mom_wav);%1st level decomposition 
     switch jenis_subband
        case 1
            im=LL;
        case 2
            im=LH;
        case 3
            im=HL;
        case 4 
            im=HH;
    end
end
baru = strcat('C-training',num2str(i),'.bmp');
fullFileName = fullfile('Dataset DWT','C',baru);
imwrite(im,fullFileName);
end
for i=1:50
switch dataset_name
        case 1
        filename = strcat('C:\Users\Erizka Banuwati C\Desktop\CNN\Dataset\Point\Point-train',num2str(i),'.bmp');
        case 2
        filename = strcat('C:\Users\Erizka Banuwati C\Desktop\CNN\Dataset Erizka\Point\point-erizka',num2str(i),'.bmp');
end
im = imread (filename);
im = prepro(im,tipe_prepro,dataset_name);
for ilevel = 1:level
    [LL,LH,HL,HH]=dwt2(im,mom_wav);%1st level decomposition 
     switch jenis_subband
        case 1
            im=LL;
        case 2
            im=LH;
        case 3
            im=HL;
        case 4 
            im=HH;
    end
end
baru = strcat('Point-training',num2str(i),'.bmp');
fullFileName = fullfile('Dataset DWT','Point',baru);
imwrite(im,fullFileName);
end
for i=1:50
switch dataset_name
        case 1
        filename = strcat('C:\Users\Erizka Banuwati C\Desktop\CNN\Dataset\Five\Five-train',num2str(i),'.bmp');
        case 2
        filename = strcat('C:\Users\Erizka Banuwati C\Desktop\CNN\Dataset Erizka\Five\Five-erizka',num2str(i),'.bmp');
end
im = imread (filename);
im = prepro(im,tipe_prepro,dataset_name);
for ilevel = 1:level
    [LL,LH,HL,HH]=dwt2(im,mom_wav);%1st level decomposition 
     switch jenis_subband
        case 1
            im=LL;
        case 2
            im=LH;
        case 3
            im=HL;
        case 4 
            im=HH;
    end
end
baru = strcat('Five-training',num2str(i),'.bmp');
fullFileName = fullfile('Dataset DWT','Five',baru);
imwrite(im,fullFileName);
end
