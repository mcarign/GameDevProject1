
enum HornbillState{
	Patrol,
	Attack,
	Returning
}


hornbillState = HornbillState.Patrol;
restart_x = path_get_x(path_hornbill,0);
restart_y = path_get_y(path_hornbill,0);
path_start(travel_path, hsp, path_action_restart, true);

