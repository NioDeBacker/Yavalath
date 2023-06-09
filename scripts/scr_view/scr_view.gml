#macro base_h 640
#macro base_w 960

function change_width_and_height() {
	var max_w = window_get_width();
	var max_h = window_get_height();
	
	// minimized
	if (max_w == 0 or max_h == 0) {
		return;
	}
	
	var aspect = window_get_width() / window_get_height();
	if (max_w < max_h) {
		// portait
		global.VIEW_WIDTH = min(base_w, max_w);
		global.VIEW_HEIGHT = global.VIEW_WIDTH / aspect;
    } else {
		// landscape
		global.VIEW_HEIGHT = min(base_h, max_h);
		global.VIEW_WIDTH = global.VIEW_HEIGHT * aspect;
    }
	
	// change camera and room
	resize_camera(max_w, max_h);
}

// resize the camera and room
function resize_camera(max_w, max_h) {
	camera_set_view_size(view_camera[0], floor(global.VIEW_WIDTH), floor(global.VIEW_HEIGHT))
	view_wport[0] = max_w;
	view_hport[0] = max_h;
	surface_resize(application_surface, view_wport[0], view_hport[0]);
}
