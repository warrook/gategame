///@arg {string} text

with (instance_create_layer(0,0,"messages",o_message))
{
	caller = other.id;
	msg = argument[0];
	if argument_count > 1
	{
		for (var i = 0; i < argument_count - 1; i++)
			if is_string(argument[i+1])
				options[i] = argument[i+1];
	} else
		options[0] = "continue";
}