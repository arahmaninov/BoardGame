/// @description
// TODO:
// create enums for obj_Player.dir
// change if/else to switch

roll = irandom_range(1, 6);

image_index = roll - 1;

for (var i = 0; i < roll; i++) {
	currentCell++;
	if (currentCell > 29) {
		room_goto(roomWin);
	}
	if (obj_Player.dir == 1) { // moving right
		obj_Player.spaceX += 1;
		obj_Player.x += 64;
		if (obj_Player.spaceX == 6) {
			obj_Player.dir = 2;
			obj_Player.spaceY = 2;
		}
	} else {
		if (obj_Player.dir == 2) { // moving up
			obj_Player.spaceY -= 1;	
			obj_Player.y -= 64;
			if (obj_Player.spaceY == 0) {
					obj_Player.dir = 3;	
					obj_Player.spaceX = 5;
				}
			} else {
			if (obj_Player.dir == 3) { // moving left
				obj_Player.spaceX -= 1;
				obj_Player.x -= 64;
				if (obj_Player.spaceX == 0) {
					obj_Player.dir = 4;	
					obj_Player.spaceY = 2;
				}
			} else {
				if (obj_Player.dir == 4) { // moving up
					obj_Player.spaceY -= 1;
					obj_Player.y -= 64;
					if (obj_Player.spaceY == 0) {
						obj_Player.dir = 1;
						obj_Player.spaceX = 1;
					}
				}
			}

		}
		
	}
	
}

