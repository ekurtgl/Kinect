function [new_first_hand, new_second_hand] = register_body_hand(first_hand_data, second_hand_data, right_wrist, left_wrist)

first_hand_diff = right_wrist.' - first_hand_data(:,1);
new_first_hand = first_hand_data + repmat(first_hand_diff, 1, size(first_hand_data, 2));
second_hand_diff = left_wrist.' - second_hand_data(:,1);
new_second_hand = second_hand_data + repmat(second_hand_diff, 1, size(first_hand_data, 2));
    
end