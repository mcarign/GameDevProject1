// UI for lives 
draw_set_color(c_orange);


draw_set_halign(fa_left);

var life_sprite = spr_player;
var x_start = 80;
var x_offset = 48;
var ability_offset = 5;

if(room == Room_Tutorial || room == Room1){
	draw_rectangle_color(50, 10, 215, 45, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
	// UI for lives
	for (var i = 0; i < lives; i++) {
	    var x_position = x_start + (x_offset * i);
	    draw_sprite(life_sprite, 0, x_position, 30);
	}
	
	draw_rectangle_color(x_offset-10, 50, x_offset+250, 210, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
	// UI for the abilities 
	if (instance_exists(obj_player)) {
	    var camo_bug_sprite = spr_camo_bug;

	    for (var i = 0; i < obj_player.camo_bug_count; i++) {
	        draw_sprite(camo_bug_sprite, 0, x_start + ability_offset, 180);
	        draw_text(x_start + ability_offset + 30, 160, string(max(0, obj_player.camo_bug_count)));
			draw_text(x_start + ability_offset + 30, 180, "Press C to activate");
	    }
	}

	if (instance_exists(obj_player)) {
	    var horn_beetle_sprite = spr_horn_beetle;

	    for (var i = 0; i < obj_player.horn_beetle_count; i++) {
	        draw_sprite(horn_beetle_sprite, 0, x_start + ability_offset, 130);
	        draw_text(x_start + ability_offset + 30, 110, string(max(0, obj_player.horn_beetle_count)));
			draw_text(x_start + ability_offset + 30, 135, "Press X to activate");
	    }
	}

	// UI for key
	if (instance_exists(obj_player)) {
		if (obj_player.has_key = true) {
			var key_sprite = spr_key;
		
			draw_sprite(key_sprite, 0, x_start + 75, 80);
		}
	}
}

if room == TitleScreen{
	draw_text(875,600, "Press Space to Start");	
}

if (global.game_over) {
	global.game_over = false;
	room_goto(YouLose);
    
}
if room == YouLose{
	draw_set_halign(fa_center);
	draw_text(300, room_height / 2 , "Game Over! Press R to restart.");
}

if room == YouWin {
	draw_set_halign(fa_center);
	draw_text(300, room_height / 2 , "Want to Play Again? Press R to restart.");
}