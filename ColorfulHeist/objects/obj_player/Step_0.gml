var jump_height = -5.4;

// Press "V" key to shoot out tongue
if(keyboard_check(ord("V"))){
	instance_create_layer(x, y, "Instances", obj_tongue);
}
// Conditions to meet to attach to vine or when not attached
if(instance_place(x,y, obj_vine_vertical)){
	// Press space key to attach to vine and enter climbing state
	if(keyboard_check(vk_space) and state == States.Regular){
		/* Neeed a spr_climbing sprite for this action. */
		state = States.Climbing;
		vspeed = 0;
		gravity = 0;
		// Sprite change if player is climbing with whatever Ability that is currently active
		if ability == Ability.NoAbility{
			sprite_index = spr_temp_player_climb;
		}else if ability == Ability.Camoflauge{
			// Need player camo_climb sprite
			//sprite_index = spr_camo_climb;
		}else if ability == Ability.Rampage{
			// Need player rampage_climb sprite
			//sprite_index = spr_rampage_climb;
		}
	}
}else{
	state = States.Regular;
	if ability == Ability.NoAbility{
		sprite_index = spr_temp_player;
	}else if ability == Ability.Camoflauge{
		// Need camo_regular sprite
		//sprite_index = spr_camo_regular;
	}else if ability == Ability.Rampage{
		sprite_index = spr_temp_other;
	}
}

// Behavior of player while climbing vine
if(state == States.Climbing){
	if keyboard_check(vk_up){
		gravity = 0;
		move_speed = 0;
		jump_height = 0;
		if image_xscale == 1{ image_angle = 90;
		}else{image_angle = -90;}
		y -= climb_speed;
	}
	if keyboard_check(vk_down){
		gravity = 0;
		move_speed = 0;
		jump_height = 0;
		if image_xscale == 1{ image_angle = 270;
		}else{image_angle = -270;}
		y += climb_speed;
	}
	if keyboard_check(vk_left){
		gravity = 0;
		move_speed = 0;
		jump_height = 0;
		if image_xscale == 1{ image_angle = 180;
		}else{image_angle = 0;}
		x -= climb_speed;
	}
	if keyboard_check(vk_right){
		gravity = 0;
		move_speed = 0;
		jump_height = 0;
		if image_xscale == 1{ image_angle = 0;
		}else{image_angle = 180;}
		x += climb_speed;
	}
	// If player moves off the vine while in Climbing state, they will return to Regular state.
	if !instance_place(x,y,obj_vine_vertical){
		image_angle = 0;
		move_speed = 2.5;
		gravity = 0.25;
		state = States.Regular;
		//sprite_index = spr_player;
	}
// Behavior of player when not in Climbing state.
}else{
	// Normal left, right, and jump movements
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