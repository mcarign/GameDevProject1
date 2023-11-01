
if ability == Ability.Camoflauge{
	sprite_index = spr_player_camo;
	y--;
}else if ability == Ability.Rampage{
	sprite_index =  spr_player_rampage;
	y--;
}else if ability == Ability.NoAbility{
	sprite_index = spr_player;
	y-=3;
}

