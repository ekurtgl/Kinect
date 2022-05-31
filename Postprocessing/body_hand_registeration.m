clc; clear; close all

body_files = dir('C:\Users\emrek\Desktop\Technical\Kinect\Kinect2Toolbox-master\Pipeline\data\*.txt');
hand_files = dir('C:\Users\emrek\PycharmProjects\Kinect_Skeleton\skeletons\*.txt');
plot_on = true;

for i = 1:length(body_files)
    figure(1);
    clf;
    hold on; 
    
    fid = fopen([body_files(i).folder '\' body_files(i).name]);
    sktData = textscan(fid, '%f');
    sktData = sktData{1};
    fclose(fid);
    
    fid = fopen([hand_files(i).folder '\' hand_files(i).name]);
    content = cell(1);
    content{1} = fgetl(fid);
    cnt = 2;
    while ischar(content{cnt-1})
        content{cnt} = fgetl(fid);
        cnt = cnt + 1;
    end
    fclose(fid);
    
    if isempty(sktData) || isempty(content)
        continue;
    end
    
    timestamp = sktData(1);
    skeletonLocation = reshape(sktData(2:126), [5, 25])';
    handState = sktData(227:228);
    right_wrist_idx = 8;
    left_wrist_idx = 12;
    
    skeleton3DPosition = skeletonLocation(:, 2:4);
    index = get_body_conn();
    plot3D_skeleton(skeleton3DPosition, index)
    
    for j = 1:size(skeleton3DPosition, 1)-3 % -3 or -4?
        scatter3(skeleton3DPosition(j, 1), skeleton3DPosition(j, 2), skeleton3DPosition(j, 3), 'r', 'filled')
    end
    
    content = content(1:end-1);
    [first_hand_data, second_hand_data, connections] = get_hand_data(content);
%     plot3D_hand(first_hand_data, second_hand_data, connections);
    [new_first_hand, new_second_hand] = register_body_hand(first_hand_data, second_hand_data, ...
        skeleton3DPosition(right_wrist_idx, :), skeleton3DPosition(left_wrist_idx, :));
    plot3D_hand(new_first_hand, new_second_hand, connections);
end







