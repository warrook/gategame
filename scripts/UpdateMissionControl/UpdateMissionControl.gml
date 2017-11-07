with (global.missionControl)
{
	ds_list_clear(shownMissions);
	ds_priority_clear(global.missionIndex);
	if instance_number(o_mission) > 0
	{
		for (var i = 0; i < instance_number(o_mission); i++)
		{
			var inst = instance_find(o_mission,i);
			ds_priority_add(global.missionIndex,inst,inst.flag);
			if inst.flag > -1
				ds_list_add(shownMissions,inst);
		}
	}
}