// var colors = ["Blue", "Periwinkle", "Onyx", "Marigold"];
// var name = ["Ponyta", "Rapidash", "Shadowfax", "Horsay"];

// colors.push("Magenta");
// name.push("Seabiscuit");

// console.log(colors);
// console.log(name);

// var horse = {};

// for ( var i = 0; i < name.length; i++){
// 	horse[name[i]] = colors[i];
// }

// console.log(horse);

// constructor function
var car = {
	make: 'Toyota', 
	'year': 2016, 
	stickShift: true, 
    gearShift: function() { 
    	if (this.stickShift) {
    		console.log("Change gears");
    	} else {
    		console.log("Change gears automatically");
    	}
    }
};

car.gearShift();
car.stickShift = false;
car.gearShift();
