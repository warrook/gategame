// Generates the gateIndex.
// argument0: number of gates to generate (starting at 1)

var gate = 0;

// 0 gate_string, 1 flag

for (var i = 0; i < argument0; i++;)
{
	gate = RandomGate(6);
	//show_debug_message(gate);
	for (var j = 0; j < array_height_2d(global.gateIndex); j++)
		if global.gateIndex[j,0] == gate { i--; break; }
	global.gateIndex[i,0] = gate;
	global.gateIndex[i,1] = 0; // Flag -- 1 means mission is on
	global.gateIndex[i,2] = irandom(2); // 0 = temperate; 1 = hot; 2 = cold
}