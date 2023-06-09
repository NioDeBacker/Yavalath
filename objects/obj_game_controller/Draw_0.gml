
// draw cursor
var tileIndexPos = calculate_tile_index(mouse_x, mouse_y, board.x, board.y);
var tileIndexX = tileIndexPos[0];
var tileIndexY = tileIndexPos[1];
if (tileIndexX >= 0 && array_length(board.board) > tileIndexX && array_length(board.board[tileIndexX]) > tileIndexY && tileIndexY >= 0 ) {
	var tileDebugPos = calculate_tile_pos(tileIndexX, tileIndexY, board.x, board.y);
	var tileDebugX = tileDebugPos[0];
	var tileDebugY = tileDebugPos[1];
	draw_circle(tileDebugX+32, tileDebugY+32, 32, true);
}