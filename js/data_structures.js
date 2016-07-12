var colors = ["Blue", "Periwinkle", "Onyx", "Marigold"];
var name = ["Ponyta", "Rapidash", "Shadowfax", "Horsay"];

colors.push("Magenta");
name.push("Seabiscuit");

//console.log(colors);
//console.log(name);

var horse = {};

for ( var i = 0; i < name.length; i++){
	horse[name[i]] = colors[i];
}

console.log(horse);