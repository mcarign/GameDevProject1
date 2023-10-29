/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player){
	if distance_to_object(obj_player) <= attack_range{
		path_end();
		direction = point_direction(x, y, obj_player.x, obj_player.y);
		speed = hsp;
	}else if direction == 0 {
		path_start(travel_path, hsp, path_action_restart, true);
		
	}
}
