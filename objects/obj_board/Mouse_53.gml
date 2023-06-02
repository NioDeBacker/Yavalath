/// @description Player tries to place tile
var tilePos = calculate_tile_index(mouse_x, mouse_y, x, y);
show_debug_message("hier");
insertTile = tilePos;
var tileX = tilePos[0];
var tileY = tilePos[1];

if (tileX >= 0 && array_length(board) > tileX && array_length(board[tileX]) > tileY && tileY >= 0 ) {
	if (board[tileX][tileY] == 0) {
		board[tileX][tileY] = player_turn == player.YELLOW ? 1 : 2;
		player_turn = player_turn == player.YELLOW ? player.BLUE : player.YELLOW;
		
	}
		
}
