/// @description Listen to keys

if global.input == 0
{
	// Home - Add new random gate to gateIndex
	if keyboard_check_pressed(vk_home)
		gateIndex[array_length_1d(gateIndex)] = RandomGate(6);

	// Space - Generate new gate code
	if keyboard_check_pressed(vk_space)
	{
		option = !option;
		//show_debug_message(option);
	}

	// Enter - Open input
	if keyboard_check_pressed(vk_enter)
	{
		if gateStep == 0
			with (instance_create_layer(x,y,"Tool",o_gatelistener))
			{
				creator = other.id;
				team_max = other.team_max;
				gateStep = other.gateStep;
			}
		else if gateStep == 2 // Go
		{
			gateStep++;
			with(gateInstance)
				counter = 1;
			with(instance_create_layer(x,y,"Tool",o_missioncontroller))
			{
				creator = other.id;
				gate = GetGateIndex(other.new_gate_str);
				mission = irandom(2);
				array_copy(teamIndex,0,other.teamIndex,0,array_length_1d(teamIndex));
			}
		}
	}
	
	// R - randomize seed
	if keyboard_check_pressed(ord("R"))
	{
		randomize();
		BuildGateIndex(25);
		BuildTroopIndex(10);
	}
}