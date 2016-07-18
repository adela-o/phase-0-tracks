// RELEASE: 0
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
		var phrase = ' '; 
		for (var i = 0; i < string.length; i++){
			
			if (string[i].length > lngth) {
				lngth = string[i].length;
				phrase = string[i];
			}
		}
		
	return phrase;		
}

//RELEASE: 1
/*write a function that takes two objects and checks to see if the objects share at least 
one key-value pair. 

If we called your function with 
{name: "Steven", age: 54} and {name: "Tamir", age: 54}, the function would return true, <= Test examples
because at least one key-value pair matches between the two objects. 
If no pairs match (and keep in mind that the two objects may not even have any of the same keys), the function 
should return false. 

To make your life easier, don't worry about whether a property is a string 
('age') or an identifier name (age). Those can be considered equivalent. 
Add some driver code that tests both outcomes of your function*/

//make objects with key value pairs
var obj = {
  name: '',
  age: '',
}

var obj = {
    name: '',
    age: '',
}

// for(var key in obj){
//   console.log(key + ":" + obj[key])
// }

function testSimiliar(obj1, obj2){
  for(var key in obj1){
    if(obj2[key] === obj1[key]){
      return true
      // If it hits this, return true out of the function
    }
  }
  // return false
  return false
}

// RELEASE: 2
/*Write a function that takes an integer for length, 
and builds and returns an array of strings of the given 
length. So if we ran your function with an argument of 3,
we would get an array of 3 random words back (the words 
don't have to be actual sensical English words -- "nnnnfph" 
totally counts). The words should be of randomly varying 
length, with a minimum of 1 letter and a maximum of 10 letters. 
(This involves a new trick, generating a random number, that 
you'll have to look up, but the solution on how to do so is 
relatively straightforward.)
Add driver code that does the following 10 times: generates an array, 
prints the array, feeds the array to your "longest word" function, 
nd prints the result.
*/

function wordGenerator(number) {
	var words = [];
	for (var i = 0; i < number; i++) {
		var wordLength = Math.floor((Math.random() * 10) + 1);
		var alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
		var generatedWord = '';
		for (var indx = 0; indx < wordLength; indx++) {
			var wordIndex = Math.floor((Math.random() * 52) + 1);
			var generatedLetters = alphabet[wordIndex];
			generatedWord += generatedLetters;
		}
		words.push(generatedWord);
	}
	return words;
}

function recurrence(x) {
	var recur = x;
	for (var i = 0; i< x; i++) {
		var recurrences = wordGenerator(recur);
	}
	console.log(recurrences);
	return recurrences;
}

/* DRIVER CODE FOR RELEASE: 0
var myPhrase = ['To', 'all', 'that', 'come', 'to', 'this', 'happy', 'place', 'welcome!'];
var testPhrase = longestPhrase(myPhrase);
console.log(testPhrase); 
*/

/*DRIVER CODE FOR RELEASE: 1 
console.log(testSimiliar({name: "Steven", age: 54}, {name: "Tamir", age: 54}))
*/

/* DRIVER CODE FOR RELEASE: 2
console.log(wordGenerator(3));
console.log(longestPhrase(recurrence(10)));
*/




