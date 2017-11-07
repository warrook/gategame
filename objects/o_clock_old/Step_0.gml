/// @description Count time

if global.input < 0 //Catch pause
	exit;

if !ds_priority_empty(global.timers)
{
	inst = ds_priority_find_min(global.timers);
	end_date = ds_priority_find_priority(global.timers,inst);
	
	if date_compare_datetime(global.date,end_date) > -1
	{
		target_date = date_inc_minute(global.date,date_minute_span(global.date,end_date));
		global.date = target_date;
		inst.stage_prog = 1;
		exit;
	}
}

timer++;
	
if timer >= timer_max
{
	timer = 0;
	switch (scale)
	{
		case 0:
			break;
		case 5:
			target_date = date_inc_hour(global.date,1);
			break;
		case 6:
			target_date = date_inc_day(global.date,1);
			break;
		default: target_date = date_inc_minute(global.date,1);
	}
	if target_date != 0
		global.date = target_date;
}

year = date_get_year(global.date);
month = date_get_month(global.date);
day = date_get_day(global.date);
hour = date_get_hour(global.date);
minute = date_get_minute(global.date);