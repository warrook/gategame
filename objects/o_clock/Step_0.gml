/// @description

if global.input < 0 // Catch pause
	exit;

if scale
	counter--;

if counter <= 0 && scale != 0
{
	counter = counter_start; //Reset counter
	switch (scale) //Check what our time scale is
	{
		case 5:
			datetgt = date_inc_hour(global.date,1);
			break;
		case 6:
			datetgt = date_inc_day(global.date,1);
			break;
		default: datetgt = date_inc_minute(global.date,1);
	}
	
	if !ds_priority_empty(global.timers) //Check timers for dates
	{
		var inst = ds_priority_find_min(global.timers);
		endtgt = ds_priority_find_priority(global.timers,inst);
		
		if date_compare_datetime(datetgt,endtgt) > -1 //If target date is past an end date
		{
			datetgt = endtgt; //Set target date to the end date
			inst.stage_prog = 1; //Mark the instance as done with this stage
		}
	}
	
	global.date = datetgt; //Set the date to the target date
}