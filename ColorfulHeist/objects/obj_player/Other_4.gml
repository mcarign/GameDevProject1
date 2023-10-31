// Code for .ini file checkpoint was inspired by a GameMaker tutorial online
// Link: https://gamemaker.io/en/tutorials/create-checkpoints-gamemaker
if room == Room_Tutorial{
	if (file_exists("tutorial_checkpoint.ini")){
	    ini_open("checkpoint.ini");
	    x = ini_read_real("player", "x", x);
	    y = ini_read_real("player", "y", y);
	    ini_close();
	}
}else if room == Room1{
	if (file_exists("checkpoint.ini")){
	    ini_open("checkpoint.ini");
	    x = ini_read_real("player", "x", x);
	    y = ini_read_real("player", "y", y);
	    ini_close();
	}
}



