/// @description

if !broken
{
	msg = BreakString(msg,width - hspacing*4);
	if string_height(msg) + vspacing > height
		height = string_height(msg) + vspacing*4;
	fully = height + vspacing + ((buttonh + vspacing) * array_length_1d(options))
	yy = centery - fully/2;
	broken = true;
}

if !update && mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x,mouse_y,xx,yy,xx + width,yy + height)
	update = 1;

if update
{
	dx = mouse_x - mouse_x_previous;
	dy = mouse_y - mouse_y_previous;
	xx = xx + dx;
	yy = yy + dy;
	if mouse_check_button_released(mb_left)
		update = 0;
}

draw_set_color(c_dkgray);
draw_rectangle(xx + 4,yy+4,xx + width + 4,yy + fully + 4,false);
draw_set_color(c_navy);
draw_rectangle(xx,yy,xx + width,yy + fully,false);
draw_set_color(c_white);

// Options buttons
for (var i = 0; i < array_length_1d(options); i++)
{
	buttonw = width - hspacing*2;
	buttonh = 30;
	buttonx = xx + hspacing;
	buttony = yy + (height + vspacing) + ((buttonh + vspacing) * i);
	var buttoncolor = make_color_rgb(183, 210, 255);
	
	var on = point_in_rectangle(mouse_x,mouse_y,buttonx,buttony,buttonx+buttonw,buttony+buttonh);
	
	if on || i == this
	{
		if mouse_check_button_pressed(mb_any) || i == this
		{
			draw_set_color(c_dkgray);
			this = i;
		}
		else draw_set_color(c_purple);
	}
	else draw_set_color(c_blue);
	
	//If mouse released and a selection has been made, send the response ahead.
	if mouse_check_button_released(mb_any) && this != -1
	{
		caller.response = this;
	}
	draw_rectangle(buttonx,buttony,buttonx+buttonw,buttony+buttonh,false);
	draw_set_color(buttoncolor);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(buttonx + buttonw/2,buttony + buttonh/2,options[i]);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}
draw_set_color(c_white);

draw_text(xx+spacing,yy+spacing,msg); //Draw the actual message
//Draw overlays
draw_line(xx+spacing/2,yy+height,xx+width-spacing/2,yy+height);
draw_rectangle(xx,yy,xx + width,yy + fully,true);

draw_set_color(orig_color);

mouse_x_previous = mouse_x;
mouse_y_previous = mouse_y;

if caller.flag > -1
	instance_destroy();