/// @func TimeStringM(hour,minute)
/// @desc Composes a time into a string, with the AM/PM
/// @arg {real} hour The hour value.
/// @arg {real} minute The minute value.

if argument_count > 1
{
	if argument[0] < 12
		var str = " AM"
	else
		var str = " PM"
	return TimeFormat(argument[0]) + ":" + TimeFormat(argument[1]) + str;
}
else
{
	if date_get_hour(argument[0]) < 12
		var str = " AM"
	else
		var str = " PM"
	return TimeFormat(date_get_hour(argument[0])) + ":" + TimeFormat(date_get_minute(argument[0])) + str;
}