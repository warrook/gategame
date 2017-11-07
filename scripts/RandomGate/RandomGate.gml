// Generates a random valid gate string.
// argument0: length to return (starting from 1)
// returns: string

var len = argument0;
var rand = 0;
var buffer = "";
var str = "";

for (var i = len; i > 0; i--;)
{
	rand = irandom(35);
	
	if (rand < 10)
		buffer = chr(48+rand);
	else
		buffer = chr(65+rand-10);
		
	str += buffer;
}

return str;