global.ammo = 600;
global.clip = 8;
global.gold = 10;

//Creating the pathfinding grid
global.grid = mp_grid_create(0,0,100,60,48,48);
mp_grid_add_instances(global.grid,obj_collision,false);
mp_grid_add_instances(global.grid,obj_Player,false);


