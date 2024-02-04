instance_destroy(other)
obj_smallrock.hit -= 1
audio_play_sound(snd_rockdestroy,0,false,1,0,random_range(0.6,1.1))
effect_create_above(ef_explosion,x,y,1,c_white);
direction = random(360);
if (obj_smallrock.hit <= 0)
{

    instance_destroy()
}
obj_game.points += 5;

