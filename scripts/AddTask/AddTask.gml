/// @desc This function is used pretty much only for BuildMissionDB. As such, any direct location references should be eliminated; those'll be created when the mission is active.
/// @arg {real} template template ID to use
/// @arg {string} title title of the task; if no special title, use real
/// @arg {string} desc description; if no special description, use real
/// @arg {string} task_end text to display when done; if nothing, use real
/// @arg {real} flag indicates what part(s) of the task should be hidden
/// @arg {real} diff difficulty 0 - 4
/// @arg {real} min_time minimum time the task will take in days
/// @arg {real} max_time maximum time the task will take in days

var template = global.taskTemplates[|argument0];
var type = template[|2];
var task = ds_map_create();
task[?"task_type"] = type;
task[?"task_req"] = template[|3];

if is_string(argument1)
	task[? "title"] = argument1;
else
	task[?"title"] = template[|0];

if is_string(argument2)
	task[?"desc"] = argument2;
else
	task[?"desc"] = template[|1]

if is_string(argument3)
	task[?"end"] = argument3;
else
	task[?"end"] = template[|4];

task[?"flag"] = argument4;
task[?"diff"] = argument5;

switch(type)
{
	case task_type.explore:
	case task_type.stay:
		task[? "min_time"] = argument6;
		task[? "max_time"] = argument7;
		break;
	default:
		task[? "min_time"] = 0;
		task[? "max_time"] = 0;
		break;
}

return task;