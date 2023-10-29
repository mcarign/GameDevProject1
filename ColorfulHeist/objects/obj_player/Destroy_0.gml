
instance_create_layer(x,y,"Instances", obj_player_dead);
audio_play_sound(snd_player_death, 10, false);
lives--;
if lives == 0{
	global.game_over = true;
}
