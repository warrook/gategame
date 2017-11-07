/// @description 

draw_set_colour(c_white);
draw_text(50,50,"gate_str: " + gate_str + "\nnew_gate_str: " + new_gate_str);


//draw_text(50,200,keyboard_string);
//if match draw_text(50+string_width(keyboard_string + " "),200,"!");
//else if match == 0 draw_text(50+string_width(keyboard_string + " "),200,"?")

var str = "";
var str2 = "";

// type, level, race, sex, first name, last name
if gateStep == 1
{
	for (var i = 0; i < array_height_2d(global.troopIndex); i++;)
	{
		str += "[" + string(i) + "]:"
		for (var j = 0; j < array_length_2d(global.troopIndex,i); j++;)
		{
			str += string(global.troopIndex[i,j]) + " ";
		}
		str += "\n";
	}
	for (var i = 0; i < array_length_1d(teamIndex); i++)
		str2 += "[" + string(teamIndex[i]) + "]:" + string(global.troopIndex[teamIndex[i],4] + " " + global.troopIndex[teamIndex[i],5]) + "\n";
}
else if gateStep == 0 && global.input == 1
	for (var i = 0; i < array_height_2d(global.gateIndex); i++)
		str = string_insert("[" + string(i) + "]:" + global.gateIndex[@ i,0] + "\n",str,string_length(str)+1);
else if gateStep >= 2
{
	str = "Gate: " + new_gate_str + ".\nTeam:"
	for (var i = 0; i < array_length_1d(teamIndex); i++)
		str += "\n- " + string(global.troopIndex[teamIndex[i],4] + " " + global.troopIndex[teamIndex[i],5]);
}
			
draw_text(room_width/2,50,str);
draw_text(50,50+string_height("\n")*2,"Team:\n" + str2);

if done
	draw_set_color(c_teal);