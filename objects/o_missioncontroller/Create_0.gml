//With'd
creator = 0;
gate = 0;
mission = 0;
teamIndex = [];
//Instance
//start = global.date;
finish = date_inc_day(global.date,irandom_range(5,8));
finish = date_inc_hour(finish,-irandom_range(1,6))
done = 0;

global.gateIndex[@ gate,1] = mission + 1; //Set gate flag to the index of the mission active on current gate (1-3)
for (var i = 0; i < array_length_1d(teamIndex); i++)
	global.troopIndex[@ teamIndex[i],9] = 1; //Set flag to 1 -- troop occupied on mission.

with(global.clock)
{
	ds_priority_add(timers,other.id,other.finish);
	modified = true;
}