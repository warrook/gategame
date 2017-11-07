/// @description Listen for input

if gateStep == 0
{
	str = string_copy(string_upper(string_lettersdigits(keyboard_string)),1,6);
	if keyboard_check_pressed(vk_enter)
	{
		//show_debug_message(match);
		if GetGateIndex(str) != -1
		{
				match = 1;
				keyboard_string = "";
				gateStep++;
				with(creator)
				{
					new_gate_str = other.str;
					gateStep = other.gateStep;
				}
		}
		else
			match = 0;
	}
	else
		match = -1;
}
else if gateStep == 1
{
	str = string_copy(string_digits(keyboard_string),1,2);
	if keyboard_check_pressed(vk_enter)
	{
		num = real(str);
		var chk = false;
		
		if num < array_height_2d(global.troopIndex)
		{
			for (var i = 0; i < array_length_1d(teamIndex); i++;)
			{
				if teamIndex[i] == num
					chk = true;
			}
			if !chk
			{
				teamIndex[team] = num;
				with (creator)
				{
					teamIndex[other.team] = other.num;
					other.team++;
				}
			}
		}
		else
			match = 0;
		if team == team_max
		{
			keyboard_string = "";
			gateStep++;
			//show_debug_message(gateStep);
			particle = instance_create_layer(room_width/2,room_height/2,"particle_layer",p_portalpoof);
			with(particle) { master = other.creator; }
			with(creator) { gateInstance = other.particle; gateStep = other.gateStep; }
			instance_destroy(id);
		}
		keyboard_string = "";
	}
	else match = -1;
}