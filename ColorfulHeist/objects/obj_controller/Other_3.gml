
if room == Room_Tutorial{
	if (file_exists("tutorial_checkpoint.ini")){
	    file_delete("tutorial_checkpoint.ini");
	}
	if (file_exists("checkpoint.ini")){
	    file_delete("checkpoint.ini");
	}
}else if room == Room1{
	if (file_exists("checkpoint.ini")){
	    file_delete("checkpoint.ini");
	}
}



