/// @description Create strings and arrays

gate_str = "0LX2AS";
gate_arr = ["0","L","X","2","A","S"];
match = -1;

option = false;

global.input = 0;

new_gate_arr = GateStringToArray(RandomGate(6));
new_gate_str = GateArrayToString(new_gate_arr);
gateStep = 0;
gateInstance = 0;

teamIndex = [];
team_max = 4;

BuildGateIndex(25);
//show_debug_message(array_height_2d(global.gateIndex));

BuildTroopIndex(10);

//show_debug_overlay(true);

global.clock = instance_create_layer(x,x,"Tool",o_clock);

done = 0;