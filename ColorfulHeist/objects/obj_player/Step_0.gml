var jump_height = -5.4;
// Conditions to meet to attach to vine or when not attached
if(instance_place(x,y, obj_vine_vertical)){
	// Press "V" key to attach to vine and enter climbing state
	if(keyboard_check(ord("V")) and state == States.Regular){
		/* might need to add code for centering player over the 
		   vine to avoid colliding with obj_block. Also might need a
		   spr_climbing sprite for this action.
		*/
		state = States.Climbing;
		vspeed = 0;
		gravity = 0;
		//sprite_index = spr_player_climb;
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
	// If player moves off the vine while in Climbing state, they will return to Regular state
	// and have Regular state functions return as well.
	if !instance_place(x,y,obj_vine_vertical){
		move_speed = 2.5;
		gravity = 0.25;
		state = States.Regular;
		//sprite_index = spr_player;
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