// Converts a gate string to an array
// argument0: gate string
// returns: array

var str = string(argument0);
var arr = [];

for (var i = string_length(str); i > 0; i--;)
	arr[i-1] = string_char_at(str,i);

return arr;