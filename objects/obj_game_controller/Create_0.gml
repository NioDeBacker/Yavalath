/// initialize game
enum player {
	BLUE,
	YELLOW
};

// size
change_width_and_height();
max_w = window_get_width();
max_h = window_get_height();

// game state
player_turn = player.YELLOW;
win_state = -1;

// game board
board_y = floor(global.VIEW_HEIGHT / 2 ) - 228;
board_x = floor(global.VIEW_WIDTH / 2 ) - 280;
board = instance_create_layer(board_x, board_y,layer, obj_board);

