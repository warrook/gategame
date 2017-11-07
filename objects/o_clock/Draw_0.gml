/// @description Show Clock

var str, str2;

str = DateString(global.date) + "\n" + TimeStringM(global.date);
//str += "\nTime left: " + string(left);

draw_text(50,room_height-string_height(str)*3,str + "\n" + string(scale) + " " + string(counter_start) + "/" + string(counter));

if !ds_priority_empty(global.timers)
{
	str2 = DateString(endtgt) + "\n" + TimeStringM(endtgt);
	draw_text(60+string_width(str),room_height-string_height(str)*3,str2);
}

draw_text(10,10,global.input);