function event_danger(){
	
	instance_create_layer(100, 150, global.eventLayer, obj_DangerEvent);
	instance_create_layer(200, 480, global.eventLayer, obj_test);
	instance_create_layer(500, 480, global.eventLayer, obj_test2);
	
}