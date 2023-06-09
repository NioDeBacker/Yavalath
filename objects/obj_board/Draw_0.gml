/// @description Draw tiles of the board

// draw tiles
for (var row = 0; row < array_length(board); row++) {
	for (var col = 0; col < array_length(board[row]); col++) {
		var tilePos = calculate_tile_pos(row, col, x, y);
		var tileX = tilePos[0];
		var tileY = tilePos[1];
		draw_sprite(spr_tile, 0, tileX, tileY);
		draw_text(tileX, tileY, board[row][col]);
		if (board[row][col] == 1) {
			draw_sprite(spr_orb_yellow, 0, tileX + 7, tileY + 7);
		} else if (board[row][col] == 2) {
			draw_sprite(spr_orb_blue, 0, tileX + 7, tileY + 7);
		}

	}
}

// draw win state
if (win_state != -1) {
	draw_text(64, 64, win_state == player.YELLOW ? "YELLOW WINS" : "BLUE WINS");
}