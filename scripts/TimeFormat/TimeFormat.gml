/// @func TimeFormat(hour or minute)
/// @description Converts a time into the proper string format.
/// @param {real} time The hour or minute value to convert into a two-digit string with leading zeroes.

return string_replace(string_format(argument0,2,0)," ","0")