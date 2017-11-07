/// @description 

if global.input == -1 // Catch pauses
	exit;

if response != -1
{
	show_debug_message(response);
	if mission_complete == true
	{
		ds_queue_destroy(mission);
		//ds_priority_delete_value(global.timers,id);
		UpdateMissionControl();
		instance_destroy();
	} else if stage_prog == 1
	{
		stage_prog = -1;
		response = -1;
		ds_queue_dequeue(mission);
		ds_priority_delete_value(global.timers,id);
	}
}

if (stage_prog == 1 || mission_complete == true) && !ds_queue_empty(mission)
	Message(current_task[?"end"]);

if ds_queue_size(mission) != stages_left
	UpdateTask();