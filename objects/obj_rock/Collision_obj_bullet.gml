
instance_destroy(other)
obj_rock.hit -= 1
audio_play_sound(snd_rockdestroy,0,false,1,0,random_range(0.6,1.1))
effect_create_above(ef_explosion,x,y,1,c_white);
direction = random(360);
if (obj_rock.hit <= 0)
{
 
    instance_destroy()
	 instance_create_layer(x+26,y+26,"Instances",obj_smallrock)
	 instance_create_layer(x-26,y-26,"Instances",obj_smallrock)
	 direction = random(360)
}
obj_game.points += 10;
if (obj_game.powerup_time < 0)
{
	var _obj = choose(obj_powerup_spread,obj_powerup_heart);
	instance_create_layer(x,y,"Instances",_obj)
	obj_game.powerup_time = 10*60
}


if instance_number(obj_rock) < 5
{
       instance_create_layer(room_width+ random_range(1,100),room_height+random_range(1,100),"Instances",obj_rock)
       direction = point_direction(x,y,room_width/2,room_height/2)
}

