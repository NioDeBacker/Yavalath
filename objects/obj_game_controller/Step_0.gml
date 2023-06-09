// check if window size changed
if (max_h != window_get_height() or max_w != window_get_width() and max_h != 0) {
	
	// resize camera and room
	change_width_and_height();
	
	// resize board
	board_y = floor(global.VIEW_HEIGHT / 2 ) - 228;
	board_x = floor(global.VIEW_WIDTH / 2 ) - 280;
	board.x = board_x;
	board.y = board_y;

}