// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function is_game_over(board){
	// horizontal check
	for (var i = 0; i < array_length(board); i++) {
		var yellow_counter = 0;
		var blue_counter = 0;
		for (var j = 0; j < array_length(board[i]); j++) {
			if (board[i][j] == 1) {
				blue_counter = 0;
				yellow_counter++;
				if (yellow_counter == 4) {
					return player.YELLOW;
				}
			} else if (board[i][j] == 2) {
				yellow_counter = 0;
				blue_counter++;
				if (blue_counter == 4) {
					return player.BLUE;
				}
			} else {
				if (yellow_counter == 3) {
					return player.BLUE;
				} else if (blue_counter == 3) {
					return player.YELLOW;
				}
				yellow_counter = 0;
				blue_counter = 0;
			}
		}
		if (yellow_counter == 3) {
			return player.BLUE;
		} else if (blue_counter == 3) {
			return player.YELLOW;
		}
		
	}
		
	// diagonal ascending check
	for (var k = 0; k < array_length(board); k++) {
		var cols = 9;
		var start_row = 0;
		var start_col = k;
		if (k >= 5) {
			start_row = k - 4;
		}
		var row = start_row;
		var col = start_col;
		var counter = 0;
		var y_asc = 0;
		var b_asc = 0;
		while (row < 9 and col < cols and counter < (start_row + start_col + 5)) {
			if (board[row][col] == 1) {
				b_asc = 0;
				y_asc++;
				if (y_asc == 4) {
					return player.YELLOW;
				}
			} else if (board[row][col] == 2) {
				y_asc = 0;
				b_asc++;
				if (b_asc == 4) {
					return player.BLUE;
				}
			} else {
				if (y_asc == 3) {
					return player.BLUE;
				} else if (b_asc == 3) {
					return player.YELLOW;
				}
				y_asc = 0;
				b_asc = 0;
			}
			row++;
			// half cols are on row 0 half are on 1 to longes/middle row
			if (row >= 5) {
				col -= 1;
			}
			counter++;		
		}
		if (y_asc == 3) {
			return player.BLUE;
		} else if (b_asc == 3) {
			return player.YELLOW;
		}
	}
	
	
	

	
	// diagonal descending check
	for (var m = 0; m < array_length(board); m ++) {	
		var cols = 9; // max cols is 9
		var start_row = 0;
		var start_col = 0;
		
		// half cols are on row 0 half are on 1 to longes/middle row
		if (m < 5) {
			start_row = m;
		} else {
			start_col = 9 - m;
		}
		var row = start_row;
		var col = start_col;
		var counter = 0;
		var y_desc = 0;
		var b_desc = 0;
		// counter: 9 is col of longest row (starting point (0,0))
		while (row < 9 and col < cols and counter < (9 - start_row - start_col)) {
			if (board[row][col] == 1) {
				b_desc = 0;
				y_desc++;
				if (y_desc == 4) {
					return player.YELLOW;
				}
			} else if (board[row][col] == 2) {
				y_desc = 0;
				b_desc++;
				if (b_desc == 4) {
					return player.BLUE;
				}
			} else {
				if (y_desc == 3) {
					return player.BLUE;
				} else if (b_desc == 3) {
					return player.YELLOW;
				}
				y_desc = 0;
				b_desc = 0;
			}
			row++;
			// half cols are on row 0 half are on 1 to longes/middle row
			if (row < 5) {
				col += 1;
			}
			counter++;		
		}
		if (y_desc == 3) {
			return player.BLUE;
		} else if (b_desc == 3) {
			return player.YELLOW;
		}
	}
	return -1;
}