var max_w = window_get_width();
var max_h = window_get_height();
var aspect = window_get_width() / window_get_height();
camera_set_view_size(view_camera[0], floor(global.VIEW_WIDTH), floor(global.VIEW_HEIGHT))
view_wport[0] = max_w;
view_hport[0] = max_h;
surface_resize(application_surface, view_wport[0], view_hport[0]);
