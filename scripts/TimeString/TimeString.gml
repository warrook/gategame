/// @func TimeStringM(hour,minute)
/// @desc Composes a time into a string.
/// @arg {real} hour The hour value.
/// @arg {real} minute The minute value.

if argument_count > 1
	return TimeFormat(argument[0]) + ":" + TimeFormat(argument[1]);
else
	return TimeFormat(date_get_hour(argument[0])) + ":" + TimeFormat(date_get_minute(argument[0]));