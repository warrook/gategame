/// @description Mission Code
/*
var c = draw_get_color();
var percent = 1 - finish/start;

var w = 80
var x1 = room_width/2 - w;
var x2 = room_width/2 + w;
var prog = (w * 2) * percent;
var y1 = room_height/2 - 10;
var y2 = room_height/2 + 10;

draw_set_color(c_white);

draw_rectangle(x1,y1,x2,y2,true);

if done draw_set_color(c_green);
else draw_set_color(c_orange);

draw_rectangle(x1,y1,x1+prog,y2,false);

draw_set_color(c);

draw_text(50,600,string_format(finish/start,1,5) + "\n" + string(prog) + "\n" + string((room_width/2+40)*prog));