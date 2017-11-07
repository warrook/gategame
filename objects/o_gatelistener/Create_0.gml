/// @description Set flags
global.input = 1;
keyboard_string = "";
str = keyboard_string;
num = 0;
teamIndex = []; //Troops on the team

creator = 0; // Store ID of instance that created it
team_max = 0; // Number of troops maximum
team = 0; // Number of troops presently
gateStep = 0;
particle = 0;

width = string_width("000000");
height = string_height("0");

match = -1;
ticker = 0;
ticker_max = 40;
//show_debug_message("Listener created");

drawx1 = 50-string_width("0")/2;
drawy1 = 200;
drawx2 = 50+width+string_width("0")/2;
drawy2 = 200+height;