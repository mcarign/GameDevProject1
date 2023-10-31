
enum HornbillState{
	Patrol,
	Attack,
	Returning
}


hornbillState = HornbillState.Patrol;

if room == Room_Tutorial{
	restart_x = path_get_x(path_tutorial,0);
	restart_y = path_get_y(path_tutorial,0);
	path_start(path_tutorial, hsp, path_action_restart, true);
}else if room == Room1{
	restart_x = path_get_x(path_hornbill,0);
	restart_y = path_get_y(path_hornbill,0);
	path_start(path_hornbill, hsp, path_action_restart, true);
}
