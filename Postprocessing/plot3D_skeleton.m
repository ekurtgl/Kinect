function plot3D_skeleton(skeletonData, index)

for i = 1:size(index, 1)
    plot3(skeletonData(index(i, :), 1), skeletonData(index(i, :), 2), skeletonData(index(i, :), 3), ...
        'Color', 'b', 'LineWidth', 3);
end

end