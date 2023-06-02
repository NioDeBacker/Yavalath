/// @function calculate_tile_pos(row, col, originX, originY, totalRows, maxCols, tileSize)
/// @description calculate the position for a tile with given index as to draw a hexagonal board
/// @param {int}	row			row index of tile
/// @param {int}	col			column index tile
/// @param {real}	originX		origin x position
/// @param {real}	originY		origin y position
/// @param {int}	totalRows	the number of rows
/// @param {int}	maxCols		the width of the central rows
/// @param {int}	tileSize	size of a tile (in pixels)
function calculate_tile_pos(row, col, originX = 0, originY = 0, totalRows  = 9, maxCols = 9, tileSize = 64){
	var maxColsOffset = floor(maxCols / 2);
	var maxRowsOffset = floor(totalRows / 2);
	var xOffset = abs(row - maxColsOffset) * (tileSize / 2);
	var yOffset = maxRowsOffset - (row * floor(tileSize / 4));
	var tileX = originX + (col * tileSize) + xOffset;
	var tileY =	originY + (row * tileSize) + yOffset;
	return [tileX, tileY];
}

function calculate_tile_index(mouseX, mouseY, originX = 0, originY = 0, totalRows  = 9, maxCols = 9, tileSize = 64) {
	var maxColsOffset = floor(maxCols / 2);
    var maxRowsOffset = floor(totalRows / 2);
	// calculate row first
    var row = floor((mouseY - originY - maxRowsOffset) / floor((tileSize - floor(tileSize/4))));
    var xOffset = abs(row - maxColsOffset) * (tileSize / 2);
    var calculatedX = mouseX - originX - xOffset;
    var calculatedCol = floor(calculatedX / tileSize);
    return [row, calculatedCol];
}