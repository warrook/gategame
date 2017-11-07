/// @description Insert description here
// You can write your code in this editor

if mission_complete == true
{
	ds_queue_destroy(mission)
	//ds_priority_delete_value(global.timers,id);
	UpdateMissionControl();
	GlobalUnpause();
	instance_destroy();
} else if stage_prog == 1
{
	stage_prog = -1;
	ds_queue_dequeue(mission);
	ds_priority_delete_value(global.timers,id);
	GlobalUnpause();
}