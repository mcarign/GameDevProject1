if room == TitleScreen{
	audio_play_sound(snd_intro,10, true);
}else if room != TitleScreen and !audio_is_playing(snd_background){
	audio_play_sound(snd_background, 10, true);
}


