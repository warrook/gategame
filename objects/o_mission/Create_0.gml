/// @description Set up start variables

mission = ds_queue_create();
flag = undefined;
stage_prog = -1; // -1 = not active; 0 = in progress; 1 = done
state = task_state.inactive;

mission_complete = false;
current_task = 0;
stages_left = 0;

keys = ds_map_create(); // For string replaces
response = -1;