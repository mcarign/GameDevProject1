
enum HornbillState2{
	Patrol,
	Attack,
	Returning
}


hornbillState = HornbillState2.Patrol;


restart_x = path_get_x(path_hornbill2,0);
restart_y = path_get_y(path_hornbill2,0);
path_start(path_hornbill2, hsp, path_action_restart, true);
