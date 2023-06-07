/// @description Insert description here
base_w = 960;
base_h = 640;
max_w = window_get_width();
max_h = window_get_height();
var aspect = window_get_width() / window_get_height();
if (max_w < max_h)
    {
    // portait
     global.VIEW_WIDTH = min(base_w, max_w);
    global.VIEW_HEIGHT = global.VIEW_WIDTH / aspect;
    }
else
    {
    // landscape
    global.VIEW_HEIGHT = min(base_h, max_h);
    global.VIEW_WIDTH = global.VIEW_HEIGHT * aspect;
    }
board_y = floor(global.VIEW_HEIGHT / 2 ) - 228;
board_x = floor(global.VIEW_WIDTH / 2 ) - 280;
board = instance_create_layer(board_x, board_y,layer, obj_board);
