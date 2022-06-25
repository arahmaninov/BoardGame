/// @description

// test data
draw_text(1160, 25, "Dice: " + string(roll));
draw_text(1160, 45, "Cell: " + string(currentCell));
draw_text(1160, 65, "Event: " + string(currentEvent));

// gui data
draw_text(40, 580, "People in the car: " + string(personsInCarValue));
draw_text(40, 600, "Auto weight: " + string(currentAutoWeight) + " / " +
	string(maxAutoWeight));
draw_text(40, 620, "Guns: " + string(global.guns));
draw_text_color(40, 640, "Food: " + string(global.foodAvailable), c_aqua, c_aqua, c_navy, c_navy, 1);
