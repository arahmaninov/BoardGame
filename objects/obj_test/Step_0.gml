/// @description
if (mouse_check_button_pressed(mb_left)) {
	if (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)) {
			//for (var i = 0; i < obj_DangerEvent.eventPerson; i++) {
			//	array_push(global.personsInCarArr, 1);
			//}
			//obj_testCell.personsInCarValue = array_length(global.personsInCarArr);
			//obj_testCell.currentAutoWeight = obj_testCell.personWeight * obj_testCell.personsInCarValue;
			//global.foodAvailable += obj_DangerEvent.eventFood;
			//global.guns += obj_DangerEvent.eventGun;
			global.eventResult = obj_DangerEvent.eventRoll;
			switch (global.eventResult) {
				case 1:
					for (var i = 0; i < obj_DangerEvent.eventPerson; i++) {
						array_push(global.personsInCarArr, 1);
					}
					obj_testCell.personsInCarValue = array_length(global.personsInCarArr);
					obj_testCell.currentAutoWeight = obj_testCell.personWeight * obj_testCell.personsInCarValue;
					global.foodAvailable += obj_DangerEvent.eventFood;
					break;
				case 2:
					for (var i = 0; i < obj_DangerEvent.eventPerson; i++) {
						array_push(global.personsInCarArr, 1);
					}
					obj_testCell.personsInCarValue = array_length(global.personsInCarArr);
					obj_testCell.currentAutoWeight = obj_testCell.personWeight * obj_testCell.personsInCarValue;
					global.guns += obj_DangerEvent.eventGun;
					break;
				case 3:
					for (var i = 0; i < obj_DangerEvent.eventPerson; i++) {
						array_push(global.personsInCarArr, 1);
					}
					obj_testCell.personsInCarValue = array_length(global.personsInCarArr);
					obj_testCell.currentAutoWeight = obj_testCell.personWeight * obj_testCell.personsInCarValue;
					global.foodAvailable += obj_DangerEvent.eventFood;
					break;
				
			}
			layer_destroy_instances(global.eventLayer);
			instance_create_layer(100, 150, global.eventLayer, obj_DangerEventYes);
	}
}