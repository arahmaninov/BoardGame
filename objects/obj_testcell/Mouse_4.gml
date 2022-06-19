/// @description

roll = irandom_range(1, 6);

image_index = roll - 1;

for (var i = 0; i < roll; i++) {
	
	currentCell++;
	
	if (currentCell > 29) {
		room_goto(roomWin);
	}
	
	with (obj_Player) {
		switch (dir) {
			case (movDir.right):
				spaceX += 1;
				x += step;
				if (spaceX == 6) {
					dir = movDir.upThenLeft;
					spaceY = 2;
				}
				break;
			case (movDir.upThenLeft):
				spaceY -= 1;
				y -= step;
				if (spaceY == 0) {
					dir = movDir.left;
					spaceX = 5;
				}
				break;
			case (movDir.left):
				spaceX -= 1;
				x -= step;
				if (spaceX == 0) {
					dir = movDir.upThenRight;
					spaceY = 2;
				}
				break;
			case (movDir.upThenRight):
				spaceY -= 1;
				y -= step;
				if (spaceY == 0) {
					dir = movDir.right;
					spaceX = 1;
				}
				break;
		}
	}
}

if (currentCell % 5 == 0) {
	currentEvent = "BONUS";	
} else {
	currentEvent = "DANGER";
}