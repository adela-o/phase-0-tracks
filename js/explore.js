// pseudocode a function that takes a string as a parameter and reverses the string. 
// reverse("hello"), for example, should return "olleh". This isn't a task specific 
// to JavaScript -- your pseudocode should be in plain English and use phrases like 
// "for each" instead of JavaScript-specific terms. Remember that you can add strings 
// in JavaScript, so '' + 'a' would result in the string 'a'. Take your time. This is 
// the most valuable skill in programming: being able to think through a problem logically.

// PSEUDOCODE
// 1. make a function that takes a string as a parameter
// 2. reverse the string. For each index swap with its opposite
// need for my function loop
//		 1) string
//		2) iterator
//		3)	new string


function reverse(string) {
	var newString = ''
	for (var i = string.length - 1; i >= 0; i--){
		newString += string[i]
	}
	if (string === newString) {
		return
	}
	return newString
}
// create new variable for changed string
var reversedString = reverse("hello")

console.log(reversedString)

