if ds_queue_empty(mission)
{
	//ds_queue_destroy(mission);
	ds_priority_delete_value(global.timers,id);
	mission_complete = true;
	exit;
}

current_task = ds_queue_head(mission);
stages_left = ds_queue_size(mission);
//show_debug_message("Stages left: " + string(stages) + " of type " + string(current_task[?"task_type"]) + " | Queue size: " + string(ds_queue_size(mission)));

switch (current_task[?"task_type"])
{
	case task_type.explore:
	case task_type.stay:
		var min_time = current_task[?"min_time"]*1440;
		var max_time = current_task[?"max_time"]*1440;
		var t = date_inc_minute(global.date,random_range(min_time,max_time));
		ds_priority_add(global.timers,id,t);
		//show_debug_message(" == Time range: " + string(min_time) + " to " + string(max_time) + "\n => " + DateString(t));
		stage_prog = 0;
		break;
	default: stage_prog = 1;
}
