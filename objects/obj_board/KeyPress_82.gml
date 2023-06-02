/// @description Insert description here
// You can write your code in this editor
board = array_create(9);
insertXPos = 0;
insertYPos = 0;
insertTile = array_create(2);

player_turn = player.YELLOW;
win_state = -1;

for(var i = 0; i < array_length(board); i ++) {
	var row_len = 9 - abs(i - 4);
	board[i] = array_create(row_len);
}