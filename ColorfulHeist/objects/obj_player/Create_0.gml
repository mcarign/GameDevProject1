/// @description Insert description here
// You can write your code in this editor

enum Ability{
	NoAbility,
	Camoflauge,
	Rampage
}

// Might need to add ClimbHorizontal and ClimbVertical in case coding to climb
// vines in either direction is not so easy with one enum.
enum States{
	Regular,
	Climbing
}

//Initializing the Ability state and Player State
gravity_direction = 270;
image_xscale = -1;
//mouth_open_duration = room_speed / 7;
has_key = false;
ability = Ability.NoAbility;
state = States.Regular;
