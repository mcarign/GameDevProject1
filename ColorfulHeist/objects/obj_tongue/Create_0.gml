
alarm[0] = activate_timer;
if obj_player.state == States.Regular{
	image_xscale = obj_player.image_xscale;
}else{
	// Need to work on this part still. Tongue doesn't stick out in the correct direction
	// when player attaches to vine while pointing to the left upon attachment.
	show_debug_message("player angle {0})", obj_player.image_angle);
	show_debug_message("obj_tongue angle {0}", image_angle);
	if obj_player.image_xscale == 1{
		image_angle = obj_player.image_angle;
	}else{
		image_angle = obj_player.image_angle + 180;
	}
	show_debug_message("obj_tongue angle {0}", image_angle);
}