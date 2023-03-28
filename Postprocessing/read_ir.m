clc; close all; clear;

% path = 'C:\Users\emrek\Desktop\Technical\Kinect\Xef2Mat-Jpg-master\Xef2Mat&JPG\bin\Xef2Mat_Output\';
path = 'D:\Gallaudet_data\outputs\kinect\Exp2\IR_and_depth\test\';
savepath = 'C:\Users\emrek\Desktop\trash\test\imgs\';

files = dir([path 'IR*mat']);
% fname = 'IRFrame1904.mat';
% ir_file = [path fname];

for i = 1:length(files)
    ir_file = [path files(i).name];
    img = load(ir_file);
    img = struct2cell(img);
    img = img{1};
    imshow(img.', [0 6000]);
%     colormap(gray);
%     img = double(img / max(max(img))) + 1;
%     img = double(img) + 1;
    set(gca, 'xtick', [], 'ytick', [])
    frame = getframe(gca);
    img = frame2im(frame);
    imwrite(img, [savepath files(i).name(1:end-3) 'png']);
%     saveas(gca, [savepath files(i).name(1:end-3) 'png']);
end