
alarm[0] = activate_timer;
if obj_player.state == States.Regular{
	image_xscale = obj_player.image_xscale;
}else{
	// Need to work on this part still. Tongue doesn't stick out in the correct direction
	// when player attaches to vine while pointing to the left upon attachment.
	image_angle = obj_player.image_angle;
}