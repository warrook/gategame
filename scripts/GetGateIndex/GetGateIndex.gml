// Searches gateIndex for the given string.
// argument0: gate string
// returns: index found, else -1 for doesn't exist

var str = argument0;

for (var i = 0; i < array_height_2d(global.gateIndex); i++)
{
	if str == global.gateIndex[@ i,0]
	{
		//show_debug_message("Got index at " + string(i));
		return i;
	}
}

//show_debug_message("Couldn't find index.");
return -1;