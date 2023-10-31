
alarm[0] = duration;
if obj_player.state == States.Regular{
	image_xscale = -obj_player.image_xscale;
}else{
	if obj_player.image_xscale == 1{
		image_angle = obj_player.image_angle;
	}else{
		image_angle = obj_player.image_angle + 90;
	}
}