/// @arg {string} text
/// @arg {real} width width in pixels

text = argument0;
back = 0;
str = "";
char = "";
out = "";

queue = ds_queue_create();

for (var i = 1; i <= string_length(text); i++)
{
	if string_width(str) > argument1
	{
		while(1)
		{
			char = string_char_at(str,string_length(str) - back);
			if char != " "
				back++;
			else
				break;
			if back > 99
			{
				back = 0;
				break;
			}
		}
		str = string_copy(str,1,string_length(str) - back);
		i = i - (back+1); // Back up
		ds_queue_enqueue(queue,str);
		//show_debug_message(str);
		str = "";
		back = 0;
	} else
	{
		char = string_char_at(text,i);
	
		if char == "\\" && string_char_at(text,i+1) == "n"
		{
			ds_queue_enqueue(queue,str);
			str = "";
			i++;
		}
		else
			str += char;
	}
	//show_debug_message(char);
}

repeat(ds_queue_size(queue))
{
	out += ds_queue_dequeue(queue) + "\n";
}
out += str;
ds_queue_destroy(queue);

return out;