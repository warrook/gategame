/// @description Testing

if keyboard_lastkey != -1
{
	key = keyboard_lastkey;
	keyboard_lastkey = -1;
}

if key == vk_space
{
	GenerateMission(0);
}