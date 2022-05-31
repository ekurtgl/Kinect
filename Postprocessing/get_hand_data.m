function [first_hand_data, second_hand_data, connections] = get_hand_data(content)

connections = [0, 1;
               0, 5;
               0, 17;
               1, 2;
               2, 3;
               3, 4;
               5, 6;
               5, 9;
               6, 7;
               7, 8;
               9, 10;
               9, 13;
               10, 11;
               11, 12;
               13, 14;
               13, 17;
               14, 15;
               15, 16;
               17, 18;
               18, 19;
               19, 20] + 1;
num_mark = 21;
first_hand_data = zeros(3, num_mark);
second_hand_data = zeros(3, num_mark);

for i = 1:3
    c = strsplit(content{i});
    c = c(1:end-1);
    c = cellfun(@str2num, c);
    
    if mod(i, 3) == 1
        first_hand_data(1,:) = c;
    elseif mod(i, 3) == 2
        first_hand_data(2,:) = c;
    elseif mod(i, 3) == 0
        first_hand_data(3,:) = c;
    end
end

% if plot_on
%     
%     for i = 1:num_mark
%         scatter3(first_hand_data(1, i), first_hand_data(2, i), first_hand_data(3, i), 'r', 'filled')
%     end
% 
%     for i = 1:size(connections, 1)
%             plot3(first_hand_data(1, connections(i, :)), first_hand_data(2, connections(i, :)), first_hand_data(3, connections(i, :)), ...
%                 'Color', 'b', 'LineWidth', 3);
%     end
% end
    
if length(content) > 3
    
    for i = 4:6
        c = strsplit(content{i});
        c = c(1:end-1);
        c = cellfun(@str2num, c);

        if mod(i, 3) == 1
            second_hand_data(1,:) = c;
        elseif mod(i, 3) == 2
            second_hand_data(2,:) = c;
        elseif mod(i, 3) == 0
            second_hand_data(3,:) = c;
        end
    end
    
%     if plot_on
%         for i = 1:num_mark
%             scatter3(second_hand_data(1, i), second_hand_data(2, i), second_hand_data(3, i), 'r', 'filled')
%         end
% 
%         for i = 1:size(connections, 1)
%                 plot3(second_hand_data(1, connections(i, :)), second_hand_data(2, connections(i, :)), second_hand_data(3, connections(i, :)), ...
%                     'Color', 'b', 'LineWidth', 3);
%         end
%     end
end

end