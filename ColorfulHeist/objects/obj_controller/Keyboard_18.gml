
if keyboard_check_pressed(ord("R")){
	room_restart();
}
if keyboard_check_pressed(ord("T")){
	room_goto_next();
} 

if (room == YouLose or room == YouWin) {
	 room_goto( TitleScreen);
}

if keyboard_check_pressed(ord("F")){
	obj_player.camo_bug_count++;
	obj_player.horn_beetle_count++;
	lives++;
}
	
