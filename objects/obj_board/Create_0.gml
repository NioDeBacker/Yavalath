/// @description The board contains the data structure of the board
board = array_create(9);
insertXPos = 0;
insertYPos = 0;
insertTile = array_create(2);
turn = 0;
enum player {
	BLUE,
	YELLOW
};
player_turn = player.YELLOW;
win_state = -1;

for(var i = 0; i < array_length(board); i ++) {
	var row_len = 9 - abs(i - 4);
	board[i] = array_create(row_len);
}