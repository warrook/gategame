// Builds troopIndex.
// argument0: number of troops to generate

// 0 type, 1 level, 2 race, 3 sex, 4 first name, 5 last name, 6 sprite, 7 missions, 8 xp, 9 flag

for (var i = 0; i < argument0; i++;)
{
	
	global.troopIndex[i,0] = irandom(2); // Type. 0 = soldier, 1 = research, 2 = culture
	global.troopIndex[i,1] = 0; //Level.
	
	if random(4) > 3 // Roll for race.
	{
		global.troopIndex[i,2] = 1; //Race. 0 = human, 1 = light.
		global.troopIndex[i,3] = 0; // Single sex species.
		global.troopIndex[i,4] = choose("Zoltar","Megaloth","Sail","Ultra","Infra"); //First Name
		global.troopIndex[i,5] = choose("Sonic","Sound","Red","Violet","Power"); //Last Name
		global.troopIndex[i,6] = 0; // Sprite.
	}
	else
	{
		global.troopIndex[i,2] = 0;
		global.troopIndex[i,3] = irandom(1); // Sex. 0 = female, 1 = male.
		switch (global.troopIndex[i,3]) //First Name
		{
			case 0:
				global.troopIndex[i,4] = choose("Rebecca","Samantha","Emily","Nora","Amber");
				break;
			case 1:
				global.troopIndex[i,4] = choose("John","Adam","Mark","Michael","Anthony");
				break;
		}
		global.troopIndex[i,5] = choose("Smith","Jacobs","Carter","Erikson","Barringer"); //Last Name
		global.troopIndex[i,6] = 0; // Sprite.
	}
	
	global.troopIndex[i,7] = 0; // Missions.
	global.troopIndex[i,8] = 0; // XP
	global.troopIndex[i,9] = 0; // Flag
}