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

// Create car object

var car = {
	make: "Toyota",
	'year': 2016,
	stickShift: true,
};

function Car(make, year, stickShift) { 
    	
    console.log("Here's your new car:", this);
    	
   	this.make = make;
   	this.year = year;
   	this.stickShift = stickShift;

   	this.shift = function() { 
    	if (this.stickShift) {
    		console.log("Change gears");
    }	else {
    		console.log("Change gears automatically");
    }
    };
console.log("CAR INITIALIZATION COMPLETE");
}

console.log("Let's build a car...");

var truck = new Car("Chevy", 1958, true);
console.log(truck);
truck.shift();
console.log("-----");

console.log("Let's build another car...");
var motorcycle = new Car("Ducati", 2006, false);
console.log(motorcycle);
motorcycle.shift();
console.log("-----");