// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function is_game_over(board){
	// horizontal check
	for (var i = 0; i < array_length(board); i++) {
		var yellow_counter = 0;
		var blue_counter = 0;
		for (var j = 0; j < array_length(board[i]); j++) {
			if (board[i][j] == 1) {
				yellow_counter++;
				if (yellow_counter == 4) {
					return player.YELLOW;
				}
			} else if (board[i][j] == 2) {
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
	
	
	
	// diagonal ascending check: col stays constant but cannot contain rows i < 5 AND rows i > 5
	for (var k = 0; k < array_length(board); k++) {
		var yellow_counter_asc = 0;
		var blue_counter_asc = 0;
		for (var l = 0; l < array_length(board); l++) {
			var col_length = 8 - abs(l - floor(array_length(board)/2));
			if (k < col_length){
				if (board[l][k] == 1) {
					yellow_counter_asc++;
					if (yellow_counter_asc == 4) {
						return player.YELLOW;
					}
				} else if (board[l][k] == 2) {
					blue_counter_asc++;
					if (blue_counter_asc == 4) {
						return player.BLUE;
					}
				} else {
					if (yellow_counter_asc == 3) {
						return player.BLUE;
					} else if (blue_counter_asc == 3) {
						return player.YELLOW;
					}
					yellow_counter_asc = 0;
					blue_counter_asc = 0;
				}
				
				if (l == 4) {
					if (yellow_counter_asc != 0) {
						yellow_counter_asc = 1;
					}
					if (blue_counter_asc != 0) {
						blue_counter_asc = 1;
					}
				}
			}
		}
	}
	
	// diagonal descending check
	for (var m = 0; m < array_length(board); m ++) {
		var yellow_counter_desc = 0;
		var blue_counter_desc = 0;
		var col_length = abs(m - floor(array_length(board)/2));
		for (var n = 0; n < array_length(board); n++) {

			if (n < col_length) {
				if (board[m][n] == 1) {
					yellow_counter_desc++;
					if (yellow_counter_desc == 4) {
						return player.YELLOW;
					}
				} else if (board[m][n] == 2) {
					blue_counter_desc++;
					if (blue_counter_desc == 4) {
						return player.BLUE;
					}
				} else {
					if (yellow_counter_desc == 3) {
						return player.BLUE;
					} else if (blue_counter_desc == 3) {
						return player.YELLOW;
					}
					yellow_counter_desc = 0;
					blue_counter_desc = 0;
				}
				
				if (m == 4) {
					if (yellow_counter_desc != 0) {
						yellow_counter_desc = 1;
					}
					if (blue_counter_desc != 0) {
						blue_counter_desc = 1;
					}
				}
			}
		}
	}
	return -1;
}