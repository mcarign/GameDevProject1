if (x <= og_x + 1 or x >= og_x - 1) and (y <= og_y + 1 or y >= og_y - 1){
	image_angle = 0;
}

if distance_to_object(obj_player) <= attack_range and obj_player.ability != Ability.Camoflauge{
	if instance_place(x, y-15, obj_vine_vertical) and obj_player.y < y {
		image_angle = 0;
		y -= hsp;
	}
	if instance_place(x, y+15, obj_vine_vertical) and obj_player.y > y {
		image_angle = 180;
		y += hsp;
	}
	if instance_place(x-15, y, obj_vine_horizontal) and  obj_player.x < x {
		image_angle = 90;
		x -= hsp;
	}
	if instance_place(x+15, y, obj_vine_horizontal) and  obj_player.x > x {
		image_angle = -90;
		x += hsp;
	}
}else{
	if instance_place(x, y-15, obj_vine_vertical) and y > og_y{
		image_angle = 0;
		y -= hsp;
	}
	if instance_place(x, y+15, obj_vine_vertical) and y < og_y {
		image_angle = 180;
		y += hsp;
	}
	if instance_place(x-15, y, obj_vine_horizontal) and x > og_x {
		image_angle = 90;
		x -= hsp;
	}
	if instance_place(x+15, y, obj_vine_horizontal) and x < og_x {
		image_angle = -90;
		x += hsp;
	}
}