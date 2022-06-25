/// @description
switch (eventRoll) {
	case 1:
		draw_text(150, 220, "A person with " + string(eventFood) + " food asks you to join.");
		draw_text(150, 280, "Will you let them on board?");
		break;
	case 2:
		draw_text(150, 220, "A person with " + string(eventFood) + " food and " + string(eventGun) + " gun asks you to join.");
		draw_text(150, 280, "Will you let them on board?");
		break;
	case 3:
		draw_text(150, 220, string(eventPerson) + " persons with " + string(eventFood) + " food asks you to join.");
		draw_text(150, 280, "Will you let them on board?");
		break;
	case 4:
		draw_text(150, 220, "Two raiders attack your caravan!");
		if (global.guns < 2) {
			draw_text(150, 280, "They have more guns than you, so they take some of your food.");
			if (subEventRoll == 1) {
					draw_text(150, 340, "Unfortunately they shot dead one of your man.");
			}
		} else {
			draw_text(150, 280, "You kill those bastards.");	
		}
		break;
	case 5:
		draw_text(150, 220, "Three raiders attack your caravan!");
		if (global.guns < 3) {
			draw_text(150, 280, "They have more guns than you, so they take some of your food.");
			if (subEventRoll == 1) {
					draw_text(150, 340, "Unfortunately they shot dead one of your man.");
			}
		} else {
			draw_text(150, 280, "You kill those bastards.");	
		}
		break;
	case 6:
		draw_text(150, 220, "Your car breaks and you spent 2 days to fix it.");
		draw_text(150, 280, "Now you can continue your journey.");
		break;
}