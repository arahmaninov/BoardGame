/// @description
if (mouse_check_button_pressed(mb_left)) {
	if (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)) {
			array_push(global.personsInCarArr, 1);
			obj_testCell.personsInCarValue = array_length(global.personsInCarArr);
			obj_testCell.currentAutoWeight = obj_testCell.personWeight * obj_testCell.personsInCarValue;
			global.foodAvailable += 3;
			
			layer_destroy_instances(global.eventLayer);
			instance_create_layer(100, 150, global.eventLayer, obj_DangerEventYes);
	}
}