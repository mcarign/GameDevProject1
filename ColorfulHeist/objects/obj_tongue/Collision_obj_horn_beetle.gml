
instance_destroy(other);
obj_player.ability = Ability.Rampage;

// We need to get a player_rampage sprite instead of temp_other
obj_player.sprite_index = spr_temp_other;

// obj_player alarm events for power ups.
obj_player.alarm[0] = obj_player.ability_timer;

