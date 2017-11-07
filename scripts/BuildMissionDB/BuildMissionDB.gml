var task1 = AddTask(task_type.instant,"Fire me into the sun",0,"Hatred consumes",0,0,0,0);
var task2 = AddTask(task_type.explore,"I have been launched",0,"Completion calls",0,0,6,12);
var task3 = AddTask(task_type.explore,"But at what cost?",0,"The nightmare reigns",0,0,0,0);
var task4 = AddTask(task_type.instant,"Will the dream survive?",0,"Probably not lmao",0,0,0,0);

global.mission_db[|0] = CreateMission(task1,task2,task3,task4); // Visit gate, explore gate