/// @description GO back

//user event 1
path_delete(path);
path = path_add();

mp_grid_path(obj_SetupPathway.grid, path, x,y, position_Start_X, position_Start_Y, 1);


path_start(path, walkSpeed_Checking, path_action_stop, true);
