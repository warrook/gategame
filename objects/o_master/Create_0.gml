/// @description 

//Global variables
global.input = 0;
global.date = date_create_datetime(date_get_year(date_current_datetime())+1,11,4,10,0,22);

//Global objects
global.master = id;
global.gateIndex = []; //Make a grid so it can be sorted
global.troopIndex = [];
global.taskTemplates = ds_list_create(); //Templates for mission tasks
global.mission_db = ds_list_create(); //Database of all possible missions
global.missionIndex = ds_priority_create(); //Database of active missions
global.missionControl = instance_create_layer(0,0,"Tool",o_missionControl);
global.clock = instance_create_layer(0,0,"Tool",o_clock);
global.timers = ds_priority_create();
global.text_keys = ds_list_create();


//Enumerators
enum task_type {
	instant, //Done essentially immediately.
	visit, //Go to gate.
	explore, //Go to gate, wait until expire.
	stay //Wait until expire.
}
enum task_req {
	probe, // Only a probe is needed to finish the mission
	team, // A team is needed
	sci, // A scientist must be on the team
	cul, // A culturalist must be on the team
	sol // A soldier must be on the team
}
enum task_state {
	inactive, // Cannot progress
	passive, // Can progress, but task is hidden
	active // Can progress, task is revealed
}

//Startup functions
BuildGateIndex(25);
BuildTroopIndex(10);
BuildTaskTemplates();
BuildTextKeys();
BuildMissionDB();