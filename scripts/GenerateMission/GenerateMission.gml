var tracker = instance_create_layer(0,0,"missions",o_mission);
var op = global.mission_db[|argument0]; //Mission queue
var primary = ds_queue_head(op);
tracker.mission = op;
tracker.flag = primary[? "flag"];
tracker.stages_left = ds_queue_size(op);

with (tracker)
	UpdateTask();

UpdateMissionControl();

/*
var primary = ds_queue_head(op) //First task map

switch (primary[? "task_type"])
{
	case task_type.explore:
	case task_type.stay:
		var t = date_inc_minute(global.date,random_range(primary[? "min_time"]*1440,primary[? "max_time"]*1440));
		ds_priority_add(global.timers,tracker,t); // Wait until this date
		show_debug_message(" == Time range: " + string(primary[? "min_time"]) + " to " + string(primary[? "min_time"]) + "\n => " + DateString(t))
		break;
	default: tracker.stage_prog = 1; // Do it now
}


//show_debug_message("Stages left: " + string(tracker.stages) + " of type " + string(primary[?"task_type"]) + " | Queue size: " + string(ds_queue_size(tracker.mission)));
