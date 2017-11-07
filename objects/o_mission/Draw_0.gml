/// @description Insert description here
// You can write your code in this editor

draw_text(30,10,response);

/*
if stage_prog == 1 
{
	draw_set_color(c_blue);
	draw_rectangle(room_width/4,room_height/4,room_width/4*3,room_height/4*3,false);
	draw_set_color(c_white);
	draw_text(room_width/2,room_height/2,string(ds_map_find_value(ds_queue_head(mission),"end")));
}