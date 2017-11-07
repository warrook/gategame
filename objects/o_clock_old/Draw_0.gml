/// @description Show Clock

var str, str2;
//str = date_datetime_string(date);

str = DateString(global.date) + "\n" + TimeStringM(global.date);
str += "\nTime left: " + string(left);

draw_text(50,room_height-string_height(str)*3,str + "\n" + string(scale) + " " + string(timer_max) + "/" + string(timer));

if target_date && !ds_priority_empty(global.timers)
{
	str2 = DateString(date_get_year(target_date),date_get_month(target_date),date_get_day(target_date)) + "\n" + TimeStringM(date_get_hour(target_date),date_get_minute(target_date));
	draw_text(60+string_width(str),room_height-string_height(str)*3,str2);
}