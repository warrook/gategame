/// @description

GlobalPause();

caller = 0;
msg = "";
str = "";
options = [];
broken = false; //Startup stuff after the stuff is filled out by the caller. See Step event.
fully = 0;

centerx = room_width/2;
centery = room_height/2;

width = 600;
height = 150;
spacing = 30;

xx = centerx - width/2;
yy = centery - height/2;

vspacing = 15;
hspacing = 15;

buttonw = width - hspacing*2;
buttonh = 30;

dx = 0;
dy = 0;

mouse_x_previous = 0;
mouse_y_previous = 0;

orig_color = draw_get_color();

update = 0;
tick = 0;

this = -1;

//Options, send which selected to creator