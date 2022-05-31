clc; clear; close all;

datapath = 'C:\Users\emrek\PycharmProjects\Kinect_Skeleton\skeletons\*.txt';
files = dir(datapath);

for i = 1:length(files)
    figure(1);
    clf;
    hold on; 
    
    fid = fopen([files(i).folder '\' files(i).name]);
    content = cell(1);
    content{1} = fgetl(fid);
    cnt = 2;
    while ischar(content{cnt-1})
        content{cnt} = fgetl(fid);
        cnt = cnt + 1;
    end
    fclose(fid);
    
    if isempty(content)
        continue
    end
    content = content(1:end-1);
    [first_hand_data, second_hand_data, connections] = get_hand_data(content);
    plot3D_hand(first_hand_data, second_hand_data, connections);
end




