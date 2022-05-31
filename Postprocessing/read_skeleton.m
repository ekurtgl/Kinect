clc; clear; close all;

datapath = 'C:\Users\emrek\Desktop\Technical\Kinect\Kinect2Toolbox-master\Pipeline\data\*.txt';

colorList = [[255,0,26]/255; [0,178,51]/255; [0,128,255]/255;...
    [255,128,51]/255; [26,230,230]/255; [77,230,128]/255];

files = dir(datapath);
files(end) = [];

for i = 1:length(files)
    figure(1);
    clf;
    hold on; 
    
    fid = fopen([files(i).folder '\' files(i).name]);
    sktData = textscan(fid, '%f');
    sktData = sktData{1};
    fclose(fid);
    
    if isempty(sktData)
        continue;
    end
    
    timestamp = sktData(1);
    skeletonLocation = reshape(sktData(2:126), [5, 25])';
    handState = sktData(227:228);

    skeleton3DPosition = skeletonLocation(:, 2:4);
    plot3D_skeleton(skeleton3DPosition)
    
    for j = 1:size(skeleton3DPosition, 1)-3
        scatter3(skeleton3DPosition(j, 1), skeleton3DPosition(j, 2), skeleton3DPosition(j, 3), 'r', 'filled')
    end
end









