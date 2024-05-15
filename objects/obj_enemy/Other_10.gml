/// @description Go chec target

//user evene 0
path_delete(path);
path = path_add();

mp_grid_path(obj_SetupPathway.grid, path, x,y, position_Target_X, position_Target_Y, 1);


path_start(path, walkSpeed_Checking, path_action_stop, true);