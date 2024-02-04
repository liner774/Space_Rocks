lifetime += 1
if lifetime >= 10*60
{
	instance_destroy()
	effect_create_above(ef_ring,x,y,1,c_white)
}