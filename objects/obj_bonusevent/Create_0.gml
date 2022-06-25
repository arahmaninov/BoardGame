/// @description
eventRoll = irandom_range(1, 2);

switch (eventRoll) {
	case 1:
		global.foodAvailable += obj_testCell.personsInCarValue * 3;
		break;
	case 2:
		global.foodAvailable += obj_testCell.personsInCarValue * 4;
		break;
}