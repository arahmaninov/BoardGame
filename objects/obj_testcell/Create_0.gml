/// @description
randomize()

roll = 0;
currentCell = 0;
currentEvent = "";
image_index = 0;

// gui layer
global.eventLayer = layer_create(-100);

// game ui
personWeight = 70;
global.currentAutoWeight = 1;
maxAutoWeight = 600;
global.personsInCarArr = [1];


var _firstRoll = irandom_range(1, 6);
for (var i = 0; i < _firstRoll; i++) {
	array_push(global.personsInCarArr, 1);	
}

personsInCarValue = array_length(global.personsInCarArr);
currentAutoWeight = personWeight * personsInCarValue;

global.guns = ceil(personsInCarValue / 2);
global.foodAvailable = personsInCarValue * 5;
