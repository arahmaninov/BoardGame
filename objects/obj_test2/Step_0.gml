/// @description
if (mouse_check_button_pressed(mb_left)) {
	if (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)) {
			layer_destroy_instances(global.eventLayer);
			instance_create_layer(100, 150, global.eventLayer, obj_DangerEventNo);
	}
}