/// @description Cut Scale
/*
if floor(scale/2) > 0
	scale = floor(scale/2);
*/

if global.input == 1
	exit;

if scale < 6
	scale++;
else
	scale = 0;

switch(scale)
{
	case 1:
		timer_max = 30; break;
	case 2:
		timer_max = 15; break;
	case 3:
		timer_max = 5; break;
	case 4:
		timer_max = 1; break;
	case 5:
	case 6:
	case 0:
		timer_max = 0; break;
}