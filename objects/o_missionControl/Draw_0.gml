/// @description

var str = "";

if !ds_list_empty(shownMissions)
{
	for (var i = 0; i < ds_list_size(shownMissions); i++)
	{
		var inst = shownMissions[|i];
		if !instance_exists(inst) || ds_queue_empty(inst.mission)
			continue;
		//show_debug_message("o_missionControl - shownMission instance: " + string(inst));
		task = ds_queue_head(inst.mission);
		str += string(task[?"title"]); 
		if (ds_list_size(shownMissions) - i) > 1
			str += "\n";
	}

	draw_text(room_width/2,room_height/2,str);
}