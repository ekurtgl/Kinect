function [] = plot3D_hand(first_hand_data, second_hand_data, connections)

for i = 1:size(first_hand_data, 2)
    scatter3(first_hand_data(1, i), first_hand_data(2, i), first_hand_data(3, i), 'r', 'filled')
end

for i = 1:size(connections, 1)
    plot3(first_hand_data(1, connections(i, :)), first_hand_data(2, connections(i, :)), first_hand_data(3, connections(i, :)), ...
        'Color', 'b', 'LineWidth', 3);
end
    
if sum(second_hand_data(:)) ~= 0    
    for i = 1:size(first_hand_data, 2)
        scatter3(second_hand_data(1, i), second_hand_data(2, i), second_hand_data(3, i), 'r', 'filled')
    end

    for i = 1:size(connections, 1)
            plot3(second_hand_data(1, connections(i, :)), second_hand_data(2, connections(i, :)), second_hand_data(3, connections(i, :)), ...
                'Color', 'b', 'LineWidth', 3);
    end
end
end