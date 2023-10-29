/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player){
	if distance_to_object(obj_player) <= attack_range {
		hornbillState = HornbillState.Attack;
		path_end();
		direction = point_direction(x, y, obj_player.x, obj_player.y);
		speed = hsp + 1;
	}else if !distance_to_object(obj_player) <= attack_range and hornbillState == HornbillState.Attack{
		hornbillState = HornbillState.Returning;
	}
	if !distance_to_object(obj_player) <= attack_range and hornbillState == HornbillState.Returning{
		direction = point_direction(x, y, restart_x, restart_y);
		speed = hsp;
		/*if !instance_place(x, y-1, obj_block) and y > restart_y{
			
			y -= hsp;
		}
		if !instance_place(x, y+1, obj_block) and y < restart_y {
			
			y += hsp;
		}
		if !instance_place(x-1, y, obj_block) and x > restart_x {
			
			x -= hsp;
		}
		if !instance_place(x+1, y, obj_block) and x < restart_x {
			
			x += hsp;
		}*/
	}
	if x == restart_x and y == restart_y and hornbillState == HornbillState.Returning{
		hornbillState = HornbillState.Patrol;
		path_start(path_hornbill, hsp, path_action_restart, true);
	}
}
