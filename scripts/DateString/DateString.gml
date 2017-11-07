// Composes a date into a string. Takes strings or a single real.
// argument 0: year or datetime
// argument 1: month
// argument 2: day

if argument_count > 1
	return string(argument[0]) + "-" + string(argument[1]) + "-" + string(argument[2]);
else
	return string(date_get_year(argument[0])) + "-" + string(date_get_month(argument[0])) + "-" + string(date_get_day(argument[0]));

