
sprite_index = spr_player;
if ability == Ability.Camoflauge{
	audio_play_sound(snd_camo_deactivate,10,false);
}else if ability == Ability.Rampage{
	audio_play_sound(snd_rampage_deactivate,10,false);
}
ability = Ability.NoAbility;
