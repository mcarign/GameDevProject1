var jump_height = -4;

if instance_place(x,y, obj_vertical_vine){
	//if keyboard_check(vk_up) || keyboard_check(vk_down){
	if keyboard_check(vk_space) && state == States.Regular{
		 state = States.ClimbingVertical;
		vspeed = 0;
		gravity = 0;
		sprite_index = spr_climbing;
	}
} else if instance_place(x, y, obj_horizontal_vine) {
    if keyboard_check(vk_space) && state == States.Regular {
        state = States.ClimbingHorizontal;
        vspeed = 0;
        gravity = 0;
        sprite_index = spr_climbing; 
	} 
}else{
	//climbing = false;
	state = States.Regular;
	sprite_index = spr_temp_player;
}

if (state == States.ClimbingVertical) {
    if keyboard_check(vk_up) {
        move_speed = 0;
        gravity = 0;
        y -= climb_speed;
    }
    else if keyboard_check(vk_down) {
        move_speed = 0;
        gravity = 0;
        y += climb_speed;
    }
    
    if instance_place(x, y + image_xscale, obj_block) {
        move_speed = 4;
        gravity = 0.25;
        state = States.Regular; // Exit climbing state
    }
} else if (state == States.ClimbingHorizontal) {
    if keyboard_check(vk_left) && !instance_place(x - move_speed, y, obj_block) {
        x -= move_speed;
        image_xscale = -1;
    }

    if keyboard_check(vk_right) && !instance_place(x + move_speed, y, obj_block) {
        x += move_speed;
        image_xscale = 1;
    }
}

if (keyboard_check_pressed(ord("Z"))) {
    instance_create_layer(x, y, "Instances", obj_sword);
}

if keyboard_check(vk_up) {
    if instance_place(x, y + 1, obj_block) {
        vspeed = jump_height;
    } else {
        gravity = 0.25;
    }
}

if instance_place(x, y + 1, obj_block) {
    gravity = 0;
} else {
    gravity = 0.25;
}

if vspeed > 12 {
    vspeed = min(vspeed, 12);
}

