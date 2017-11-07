/// @description Insert description here
// You can write your code in this editor

if global.input < 0
	exit;

if flag > -1
{
	switch(flag)
	{
		case 0:
			Message("Option 1 was selected.");
			break;
		case 1:
			Message("Option 2.");
			break;
		default: Message("Can't be bothered.","tru");
	}
	flag = -1;
	msgs++;
}