// Code for .ini file checkpoint was inspired by a GameMaker tutorial online
// Link: https://gamemaker.io/en/tutorials/create-checkpoints-gamemaker
if room == Room_Tutorial{
	ini_open("tutorial_checkpoint.ini");
	ini_write_real("player", "x", other.x);
	ini_write_real("player", "y", other.y);
	ini_close();
	sprite_index = spr_checkpoint_on;
}else if room == Room1{
	ini_open("checkpoint.ini");
	ini_write_real("player", "x", other.x);
	ini_write_real("player", "y", other.y);
	ini_close();
	sprite_index = spr_checkpoint_on;
}

