/// @description
spaceX = 0;
spaceY = 2;
step = 64; // size of cell and size of one step
dir = movDir.right;

enum movDir {
	right,
	upThenLeft,
	left,
	upThenRight
}