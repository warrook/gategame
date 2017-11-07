/// @description 

if keyboard_check_pressed(vk_add) && scale < 6
	scale++;

if keyboard_check_pressed(vk_subtract) && scale > 0
	scale--;
	
switch(scale)
{
	case 1:
		counter_start = 30; break;
	case 2:
		counter_start = 15; break;
	case 3:
		counter_start = 5; break;
	case 4:
		counter_start = 1; break;
	case 5:
	case 6:
	case 0:
		counter_start = 0; break;
}