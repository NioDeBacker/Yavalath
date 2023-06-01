/// @description The board contains the data structure of the board
board = array_create(9);

for(var i = 0; i < array_length(board); i ++) {
	var row_len = 9 - abs(i - 4);
	board[i] = array_create(row_len);
}