

if instance_exists(obj_player){
	if distance_to_object(obj_player) <= attack_range and obj_player.ability != Ability.Camoflauge and !place_meeting(x,y,obj_block){
		hornbillState = HornbillState.Attack;
		path_end();
		direction = point_direction(x, y, obj_player.x, obj_player.y);
		speed = hsp + .5;
	}else if !distance_to_object(obj_player) <= attack_range and hornbillState == HornbillState.Attack{
		hornbillState = HornbillState.Returning;
	}
	if !distance_to_object(obj_player) <= attack_range and hornbillState == HornbillState.Returning{
		direction = point_direction(x, y, restart_x, restart_y);
		speed = hsp;
	}
	if distance_to_point(restart_x, restart_y) <= 10 and hornbillState == HornbillState.Returning{
		hornbillState = HornbillState.Patrol;
		path_start(path_hornbill, hsp, path_action_restart, true);
	}
}
