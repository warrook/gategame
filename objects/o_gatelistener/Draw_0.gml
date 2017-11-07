/// @description Draw
if ticker < ticker_max
	ticker++;
else ticker = 0;

if match == 0 draw_set_color(c_red);

draw_text(50,200,str);
draw_rectangle(drawx1,drawy1,drawx2,drawy2,true);
draw_set_color(c_white);

if string_length(str) < 6 && ticker < ticker_max/2
	draw_text(50 + string_width(str),200,"_");
	
if gateStep == 1
	draw_text(drawx2 + string_width("0"),200,team);