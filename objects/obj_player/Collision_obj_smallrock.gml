
move_bounce_solid(true)
audio_play_sound(snd_hit,0,false)

image_blend = c_red
image_alpha = 0.4
alarm[1] = 1*60
effect_create_above(ef_smoke,x,y,1,c_white)
lives -= 1


