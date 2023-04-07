game_width = 320;
game_height = 200;
window_size = 3;

function Window_UpdateSize() {
	window_set_size(game_width*window_size, game_height*window_size);
	alarm[0] = 1;
}

Window_UpdateSize();