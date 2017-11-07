/// @description Set up particle

ps = part_system_create_layer("particle_layer",false);

part = part_type_create(); //Portal swirl
part_type_shape(part,pt_shape_flare);
part_type_size(part,1,1,-0.01,0.01);
part_type_scale(part,1,1);
part_type_color3(part,c_white,c_purple,c_blue);
part_type_alpha2(part,1,0);
part_type_life(part,room_speed*2,room_speed*2.5);
part_type_speed(part,5,5,-0.1,0.5);
part_type_blend(part,true);

part2 = part_type_create(); //Portal nucleus
part_type_shape(part2,pt_shape_sphere);
part_type_size(part2,1,1,0.01,0.01);
part_type_scale(part2,0.5,0.5);
part_type_color1(part2,c_white);
part_type_alpha2(part2,1,0);
part_type_life(part2,room_speed*2,room_speed*2);
part_type_direction(part2,0,360,0,0);
part_type_speed(part2,0.05,0.2,0,0.04);
part_type_blend(part2,true);

part3 = part_type_create(); //Woosh
part_type_shape(part3,pt_shape_explosion);
part_type_size(part3,0.5,0.9,-0.01,0);
part_type_scale(part3,1,1);
part_type_color2(part3,c_white,c_blue);
part_type_alpha2(part3,1,0);
part_type_life(part3,room_speed,room_speed);
part_type_direction(part3,0,359,-10,20);
part_type_orientation(part3,0,359,0,0,true);
part_type_speed(part3,12,12,-0.1,0);

part4 = part_type_create(); //Stream
part_type_shape(part4,pt_shape_flare);
part_type_size(part4,0.5,0.9,-0.01,0);
part_type_scale(part4,1,1);
part_type_color2(part4,c_purple,c_white);
part_type_alpha2(part4,0,1);
part_type_life(part4,room_speed*4,room_speed*4);
//part_type_orientation(part4,0,359,0,0,true);
part_type_speed(part4,2,2,0,0);
part_type_blend(part4,true);

emit = part_emitter_create(ps);
part_emitter_region(ps,emit,x-30,x+30,y-30,y+30,ps_shape_ellipse,ps_distr_gaussian);
part_emitter_burst(ps,emit,part2,100);
/*
ps2 = part_system_create_layer("particle_below",false);
emit2 = part_emitter_create(ps2);
part_emitter_region(ps2,emit2,x-30,x+30,y-30,y+30,ps_shape_ellipse,ps_distr_gaussian);
part_emitter_stream(ps2,emit2,part3,5);
*/
counter = 0;

dir = 0;
pinwheel = 7;
pinwheel_frac = 360/pinwheel;
len = 120;

master = 0;
flag = 0;