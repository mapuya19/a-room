/// @description Light turned on

if (global.poweron == 1) && (global.lighton == 1) {
//	instance_deactivate_object(obj_main_dark);
	instance_destroy();
}

//if (global.poweron == 1) && (global.lighton == 0) {
////	instance_activate_object(obj_main_dark);
//}