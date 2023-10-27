draw_set_color(c_green);
draw_rectangle(50, 5, 150, 45, false);

draw_set_halign(fa_left);

var life_sprite = spr_life;
var x_start = 50;
var x_offset = 24;  

for (var i = 0; i < lives; i++) {
    var x_position = x_start + (x_offset * i);
    draw_sprite(life_sprite, 0, x_position, 0);
}


var ability_offset = 5; // Initial offset for abilities

if (instance_exists(obj_camo_bug)) {
    var camo_bug = obj_camo_bug;
    var ability_active = camo_bug.ability_duration > 0;

    if (ability_active) {
        draw_set_color(c_green); // Active color
    } else {
        draw_set_color(c_red); // Inactive color
    }

    draw_sprite(camo_bug.ability_sprite, 0, x_start + ability_offset, 80); 
    draw_text(x_start + ability_offset + 30, 80, string(max(0, camo_bug.ability_duration / 30))); 
    ability_offset += 100; 
}

if (instance_exists(obj_horn_beetle)) {
    var horn_beetle = obj_horn_beetle;
    var ability_active = horn_beetle.ability_duration > 0;

    if (ability_active) {
        draw_set_color(c_green); // Active color
    } else {
        draw_set_color(c_red); // Inactive color
    }

    draw_sprite(horn_beetle.ability_sprite, 0, x_start + ability_offset, 80); 
    draw_text(x_start + ability_offset + 30, 80, string(max(0, horn_beetle.ability_duration / 30))); 
}

if (global.game_over) {
    draw_set_halign(fa_center);
    draw_text(room_width / 2, room_height / 2, "Game Over! Press R to restart.");
}
