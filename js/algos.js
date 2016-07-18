/*write a function that takes an array 
of words or phrases and returns the longest word or 
phrase in the array. 

So if we gave your function the 
array of ["long phrase","longest phrase","longer phrase"], 
it would return "longest phrase". This is a logical reasoning 
challenge, so try to reason through this based on what you 
already know, rather than Googling the fanciest solution or 
looking up built-in sorting functions. Note that 
"some string".length will do what you expect in JS.

Add driver code that tests your function on a few arrays.*/

// 1. write a function that takes an array
// 2. function returns the longest word/phrase in the array

function longestPhrase(string) {
		var lngth = 0;
		var phrase = " "; 
		for (var i = 0; i < string.length; i++){
			
			if (string[i].length > lngth) {
				lngth = string[i].length;
				phrase = string[i];
			}
		}
		
	return phrase;		
}

var myPhrase = ['To', 'all', 'that', 'come', 'to', 'this', 'happy', 'place', 'welcome!'];
var testPhrase = longestPhrase(myPhrase);
console.log(testPhrase);


