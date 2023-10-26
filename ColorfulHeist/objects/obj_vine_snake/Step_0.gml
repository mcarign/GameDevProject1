
if instance_exists(obj_player){
	if distance_to_object(obj_player) <= attack_range{
		path_start(travel_path, hsp, path_action_reverse, true);
		speed = hsp;
	}else if distance_to_object(obj_player) > attack_range{
		path_end();
		//path_endaction = path_action_reverse;
	}
}

