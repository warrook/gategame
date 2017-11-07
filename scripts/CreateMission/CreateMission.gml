/// @desc Creates a queue of tasks.

var mission = ds_queue_create();

for (var i = 0; i < argument_count; i++)
	ds_queue_enqueue(mission,argument[i])

return mission;