/// @description Insert description here
// You can write your code in this editor

enum Ability{
	NoAbility,
	Camoflauge,
	Attack
}

// Might need to add ClimbHorizontal and ClimbVertical in case coding to climb
// vines in either direction is not so easy with one enum.
enum States{
	Regular,
	ClimbingVertical,
    ClimbingHorizontal
}

//Initializing the Ability state and Player State
gravity_direction = 270;
ability = Ability.NoAbility;
state = States.Regular;