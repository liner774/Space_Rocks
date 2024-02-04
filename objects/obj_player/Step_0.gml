if keyboard_check(ord("W"))
{
	motion_add(image_angle,0.05);
}

if keyboard_check(ord("A"))
{
	image_angle += 4;
}

if keyboard_check(ord("D"))
{
	image_angle -= 4;
}

if keyboard_check(ord("S"))
{
	motion_add(image_angle + 180,0.05)
	
}

move_wrap(true,true,0)

if mouse_check_button_pressed(mb_left)
{
	instance_create_layer(x,y,"Instances",obj_bullet)
	audio_play_sound(snd_shoot,0,false,1,0,random_range(0.8,1.2))
	
	if (powerup == 1)
	{
		var _bullet = instance_create_layer(x,y,"Instances",obj_bullet);
		_bullet.direction += 10;
	    _bullet = instance_create_layer(x,y,"Instances",obj_bullet);
		_bullet.direction -= 10;
	}
}


if lives <= 0
{
	
	effect_create_above(ef_firework,x,y,1,c_white);
    instance_destroy();
	audio_play_sound(snd_gameover,0,false)
	obj_game.alarm[0] = 180;
	instance_create_layer(room_width/2,room_height - 100,"Instances",obj_died);
	
}