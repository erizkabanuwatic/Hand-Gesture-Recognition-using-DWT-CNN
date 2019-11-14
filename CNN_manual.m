function [accuracy,net,time_klasifikasi] = CNN_manual(learning_rate,epoch,panjang,lebar)
% learning_rate = 0,01;
% epoch = 100;
digitDatasetPath = 'C:\Users\Erizka Banuwati C\Desktop\CNN';
categories = {'A','B','C','Point','Five'}; 
imds = imageDatastore('Dataset DWT', ...
    'IncludeSubfolders',true,'LabelSource','foldernames');
labelCount = countEachLabel(imds);
numTrainFiles = 0.8;
[imdsTrain,imdsValidation] = splitEachLabel(imds,numTrainFiles);
layers = [
    imageInputLayer([panjang lebar 1])
    
    convolution2dLayer(3,8,'Padding',1)
    batchNormalizationLayer
    reluLayer
    
    maxPooling2dLayer(2,'Stride',2)
    
    convolution2dLayer(3,16,'Padding',1)
    batchNormalizationLayer
    reluLayer
    
    maxPooling2dLayer(2,'Stride',2)
    
    convolution2dLayer(3,32,'Padding',1)
    batchNormalizationLayer
    reluLayer
    
    fullyConnectedLayer(5)
    softmaxLayer
    classificationLayer];
options = trainingOptions('sgdm', ...
    'InitialLearnRate', learning_rate, ...
    'MaxEpochs',epoch, ...
    'ValidationData',imdsValidation, ...
    'ValidationFrequency',30, ...    
    'Verbose',false, ...
    'Plots','training-progress');
net = trainNetwork(imdsTrain,layers,options);
tic
YPred = classify(net,imdsValidation);
YValidation = imdsValidation.Labels;
accuracy = sum(YPred == YValidation)/numel(YValidation);
time_klasifikasi = toc