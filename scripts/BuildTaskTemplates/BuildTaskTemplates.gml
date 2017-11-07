// All the task templates in the game!

global.taskTemplates[|0] = CreateTask("Visit @GATE","Send a probe through @GATE to see what's on the other side.",task_type.visit,task_req.probe);
global.taskTemplates[|1] = CreateTask("Explore @GATE","Send a team to @GATE to take a look around the gate site.",task_type.explore,task_req.team);
global.taskTemplates[|2] = CreateTask("Establish Contact","Start a communication with the natives of @GATE.",task_type.explore,task_req.team);