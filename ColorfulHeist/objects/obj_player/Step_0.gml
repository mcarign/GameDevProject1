/*var jump_height = -4;

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
}*/

var jump_height = -5.4;
// Conditions to meet to attach to vine or when not attached
if(instance_place(x,y, obj_vertical_vine)){
	// Press "V" key to attach to vine and enter climbing state
	if(keyboard_check(ord("V")) and state == States.Regular){
		/* might need to add code for centering player over the 
		   vine to avoid colliding with obj_block. Also might need a
		   spr_climbing sprite for this action.
		*/
		state = States.Climbing;
		vspeed = 0;
		gravity = 0;
	}
}else{
	state = States.Regular;
}

// Behavior of player while climbing vine
if(state == States.Climbing){
	if keyboard_check(vk_up){
		gravity = 0;
		move_speed = 0;
		jump_height = 0;
		y -= climb_speed;
	}
	if keyboard_check(vk_down){
		gravity = 0;
		move_speed = 0;
		jump_height = 0;
		y += climb_speed;
	}
	if keyboard_check(vk_left){
		gravity = 0;
		move_speed = 0;
		jump_height = 0;
		x -= climb_speed;
	}
	if keyboard_check(vk_right){
		gravity = 0;
		move_speed = 0;
		jump_height = 0;
		x += climb_speed;
	}
	// Press "V" while in Climbing states to exit climbing state and 
	// enter Regular state.
	if keyboard_check(ord("V")){
		move_speed = 2.5;
		gravity = 0.25;
		state = States.Regular;
	}
// Behavior of player when not in Climbing state.
}else{
	if (keyboard_check(vk_left) and !instance_place(x-move_speed, y, obj_block)) {
		x += -move_speed
		image_xscale = -1;
	}

	if (keyboard_check(vk_right) and !instance_place(x+move_speed, y, obj_block)) {
		x += move_speed
		image_xscale = 1;
	}
	if(keyboard_check(vk_up)){
		if(instance_place(x, y+1, obj_block)){
			vspeed = jump_height;
		}
		else{
			gravity = 0.25;
		}
	}

	if(instance_place(x, y+1, obj_block)){
		gravity = 0;
	}
	else{
		gravity = 0.25;
	}
	if(vspeed > 12){
		vspeed = min(vspeed, 12);
	}
}