// UI for lives 
draw_set_color(c_orange);
draw_rectangle(50, 5, 200, 45, false);

draw_set_halign(fa_left);

var life_sprite = spr_player;
var x_start = 80;
var x_offset = 48;

for (var i = 0; i < lives; i++) {
    var x_position = x_start + (x_offset * i);
    draw_sprite(life_sprite, 0, x_position, 30);
}


var ability_offset = 5;


// UI for the abilities 
if (instance_exists(obj_player)) {

    var camo_bug_sprite = spr_camo_bug;

        for (var i = 0; i < obj_player.camo_bug_count; i++) {
            draw_sprite(camo_bug_sprite, 0, x_start + ability_offset, 80);
            draw_text(x_start + ability_offset + 30, 80, string(max(0, obj_player.camo_bug_count)));
			draw_text(x_start + ability_offset + 30, 100, "Press C to activate");
        }
		 

}

if (instance_exists(obj_player)) {

    var horn_beetle_sprite = spr_horn_beetle;

        for (var i = 0; i < obj_player.horn_beetle_count; i++) {
            draw_sprite(horn_beetle_sprite, 0, x_start + ability_offset, 130);
            draw_text(x_start + ability_offset + 30, 130, string(max(0, obj_player.horn_beetle_count)));
			draw_text(x_start + ability_offset + 30, 150, "Press X to activate");
        }
		 

}

// UI for key
if (instance_exists(obj_player)) {
	if (obj_player.has_key = true) {
		var key_sprite = spr_key;
		
		draw_sprite(key_sprite, 0, 1800, 80);
	}
}

if room == TitleScreen{
	draw_text(560,447, "Press Space to Start");	
}

if (global.game_over) {
	global.game_over = false;
	room_goto(YouLose);
    
}
if room == YouLose or room == YouWin{
	draw_set_halign(fa_center);
	draw_text(300, room_height / 2 , "Game Over! Press R to restart.");
}