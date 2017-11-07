/// @description
if counter == 0
{
	for (var i = 0; i < pinwheel; i++)
	{
		var xx = x + lengthdir_x(0,dir+(pinwheel_frac*i));
		var yy = y + lengthdir_y(0,dir+(pinwheel_frac*i));
		var to = dir+(pinwheel_frac*i)+25;
		part_type_direction(part,to,to,0,10);
		part_particles_create(ps,xx,yy,part,1);
	}

	dir += 4;
	if dir > 359
		dir = 0;
}

if counter < 12
{
	part_emitter_burst(ps,emit,part2,1);
	
	var p = irandom(359);
	var xx = x + lengthdir_x(len,p);
	var yy = y + lengthdir_y(len,p);
	var c = point_direction(xx,yy,x,y);
	part_type_direction(part4,c,c,0,0);
	part_particles_create(ps,xx,yy,part4,10);
}

if counter == 1
{
	//part_type_death(part2,5,part3);
	
}
/*
if counter == 30
{
	part_emitter_stream(ps,emit,part3,0);
}*/

if counter == 60
{
	part_emitter_burst(ps,emit,part3,500);
}

if counter > room_speed*4
{
	instance_destroy();
}

if counter > 0
	counter++;