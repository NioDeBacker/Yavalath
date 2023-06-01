/// @description Insert description here
// You can write your code in this editor
for (var row = 0; row < array_length(board); row++) {
	for (var col = 0; col < array_length(board[row]); col++) {
		var xOffset = abs(row - 4) * 32;
		var yOffset = 8 - (row * 16);
		var tileX = x + (col * 64) + xOffset;
		var tileY = y + (row * 64) + yOffset;
		draw_sprite(spr_tile, 0, tileX, tileY);
		draw_text(tileX, tileY, board[row][col]);
		if (col == 0) {
			draw_sprite(spr_orb_yellow, 0, tileX + 7, tileY + 7);
		}

	}
}