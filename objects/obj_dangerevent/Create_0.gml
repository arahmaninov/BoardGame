/// @description

eventRoll = irandom_range(1, 6);
subEventRoll = 0;
eventPerson = 0;
eventFood = 0;
eventGun = 0;

switch (eventRoll) {
	case 1:
		eventPerson = 1;
		subEventRoll = irandom_range(2, 4);
		eventFood = subEventRoll;
		obj_testCell.diceAvailable = false;
		instance_create_layer(200, 480, global.eventLayer, obj_test);
		instance_create_layer(500, 480, global.eventLayer, obj_test2);
		break;
	case 2:
		eventPerson = 1;
		eventGun = 1;
		obj_testCell.diceAvailable = false;
		instance_create_layer(200, 480, global.eventLayer, obj_test);
		instance_create_layer(500, 480, global.eventLayer, obj_test2);
		break;
	case 3:
		eventPerson = 2;
		subEventRoll = irandom_range(1, 2);
		eventFood = subEventRoll;
		obj_testCell.diceAvailable = false;
		instance_create_layer(200, 480, global.eventLayer, obj_test);
		instance_create_layer(500, 480, global.eventLayer, obj_test2);
		break;
	case 4:
		subEventRoll = irandom_range(1, 4);
		if (global.guns < 2) {
			global.foodAvailable -= 4;
			if (subEventRoll == 1) {
				array_pop(global.personsInCarArr);
				
			}
		}
		break;
	case 5:
		subEventRoll = irandom_range(1, 4);
		if (global.guns < 3) {
			global.foodAvailable -= 6;
			if (subEventRoll == 1) {
				array_pop(global.personsInCarArr);
				obj_testCell.personsInCarValue = array_length(global.personsInCarArr);
				obj_testCell.currentAutoWeight = obj_testCell.personWeight * obj_testCell.personsInCarValue;
			}
		}
		break;
	case 6:
		global.foodAvailable -= obj_testCell.personsInCarValue;
		break;
}