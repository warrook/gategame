/// @func Createtask(title, description, completion, wiggle, difficulty)
/// @desc Creates a task, returns a list containing that task's details.
/// @arg {string} title task name
/// @arg {string} description task description
/// @arg {enum} task_type task type
/// @arg {enum} task_requires if the task requires a probe only or a team
/// @arg {string} end text to display when the task is done

var task = ds_list_create();

ds_list_add(task,argument0,argument1,argument2,argument3,argument0 + " complete!");

return task;