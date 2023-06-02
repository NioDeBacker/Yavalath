/// @description Draw tiles of the board

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

var tileIndexPos = calculate_tile_index(mouse_x, mouse_y, x, y);
var tileIndexX = tileIndexPos[0];
var tileIndexY = tileIndexPos[1];
if (tileIndexX >= 0 && array_length(board) > tileIndexX && array_length(board[tileIndexX]) > tileIndexY && tileIndexY >= 0 ) {
	var tileDebugPos = calculate_tile_pos(tileIndexX, tileIndexY, x, y);
	var tileDebugX = tileDebugPos[0];
	var tileDebugY = tileDebugPos[1];
	draw_circle(tileDebugX+32, tileDebugY+32, 32, true);
}