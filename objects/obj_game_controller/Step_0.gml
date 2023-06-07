/// @description Insert description here
// You can write your code in this editor

if (max_h != window_get_height() or max_w != window_get_width()) {
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

board.x = board_x;
board.y = board_y;

camera_set_view_size(view_camera[0], floor(global.VIEW_WIDTH), floor(global.VIEW_HEIGHT))
view_wport[0] = max_w;
view_hport[0] = max_h;
surface_resize(application_surface, view_wport[0], view_hport[0]);

}