function [index] = get_body_conn()

index = [3, 2; 2, 4; 2, 8; 2, 1; 1, 0; 0, 12; 0, 16;... % Torso
    4, 5; 5, 6; 6, 7;... % Left arm
    8, 9; 9, 10; 10, 11;... % Right arm
    12, 13; 13, 14; 14, 15;... % Left leg
    16, 17; 17, 18; 18, 19;]... % Right leg
    + 1; % C index to matlab index
end