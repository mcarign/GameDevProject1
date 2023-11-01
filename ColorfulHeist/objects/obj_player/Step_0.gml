var jump_height = -5.7;

/* Press "V" key to shoot out tongue */
if(keyboard_check(ord("V"))){
	if !audio_is_playing(snd_tongue){
		audio_play_sound(snd_tongue, 10, false);
	}
	instance_create_layer(x, y, "Instances", obj_tongue);
}

/* Conditions to meet to attach to vine or when not attached. Press "space" key 
   to attach to vine and enter climbing state. Sprite controller in this block 
   too, determines what sprite to use depending on the Ability state.
*/
if(instance_place(x,y, obj_vine_vertical)){
	if(keyboard_check(vk_space) and state == States.Regular){
		// Neeed a spr_climbing sprite for this action. 
		audio_play_sound(snd_vine_grab,10,false);
		state = States.Climbing;
		vspeed = 0;
		gravity = 0;
		// Sprite change if player is climbing with whatever Ability that is currently active
		
	}
	if camo_bug_count > 0 and keyboard_check_pressed(ord("C")) and ability == Ability.NoAbility{
		ability = Ability.Camoflauge;
		camo_bug_count-= 1;
		alarm[0] = ability_timer;
	}else if horn_beetle_count > 0 and keyboard_check_pressed(ord("X")) and ability == Ability.NoAbility{
		ability = Ability.Rampage;
		horn_beetle_count-= 1;
		alarm[0] = ability_timer;
	}
}else{
	state = States.Regular;
	if camo_bug_count > 0 and keyboard_check_pressed(ord("C")) and ability == Ability.NoAbility{
		ability = Ability.Camoflauge;
		camo_bug_count-= 1;
		alarm[0] = ability_timer;
		audio_play_sound(snd_camo_activate,10,false);
	}else if horn_beetle_count > 0 and keyboard_check_pressed(ord("X")) and ability == Ability.NoAbility{
		ability = Ability.Rampage;
		horn_beetle_count-= 1;
		alarm[0] = ability_timer;
		//audio_play_sound(snd_rampage_active,10,false);
	}
}

/* This block of code actually changes the sprite based on the state that the Sprite 
   Controller does above.
*/
if state ==  States.Climbing{
	if ability == Ability.Camoflauge{
		sprite_index = spr_player_camo_climb;
	}else if ability == Ability.Rampage{
		sprite_index = spr_player_rampage_climb;
	}else{
		sprite_index = spr_player_climb;
	}
}else{
	if ability == Ability.Camoflauge{
		sprite_index = spr_player_camo;
	}else if ability == Ability.Rampage{
		sprite_index = spr_player_rampage;
	}else{
		sprite_index = spr_player;
	}
}

// Behavior of player while climbing vine
if(state == States.Climbing){
	if keyboard_check(vk_up){
		gravity = 0;
		move_speed = 0;
		jump_height = 0;
		//if image_xscale == 1{ image_angle = 90;
		//}else{image_angle = -90;}
		//image_angle = 0;
		y -= climb_speed;
	}
	if keyboard_check(vk_down){
		gravity = 0;
		move_speed = 0;
		jump_height = 0;
		//if image_xscale == 1{ image_angle = 270;
		//}else{image_angle = -270;}
		//image_angle = 180;
		y += climb_speed;
	}
	if keyboard_check(vk_left){
		gravity = 0;
		move_speed = 0;
		jump_height = 0;
		//if image_xscale == 1{ image_angle = 180;
		//}else{image_angle = 0;}
		//image_angle = 90;
		x -= climb_speed;
	}
	if keyboard_check(vk_right){
		gravity = 0;
		move_speed = 0;
		jump_height = 0;
		//if image_xscale == 1{ image_angle = 0;
		//}else{image_angle = 180;}
		//image_angle = -90;
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
		image_xscale = 1;
	}

	if (keyboard_check(vk_right) and !instance_place(x+move_speed, y, obj_block)) {
		x += move_speed
		image_xscale = -1;
	}
	if(keyboard_check(vk_up)){
		if(instance_place(x, y+1, obj_block)){
			audio_play_sound(snd_jump, 10, false);
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