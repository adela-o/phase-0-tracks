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
		var phrase = " "; 
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



/* 
DRIVER CODE FOR RELEASE: 0
var myPhrase = ['To', 'all', 'that', 'come', 'to', 'this', 'happy', 'place', 'welcome!'];
var testPhrase = longestPhrase(myPhrase);
console.log(testPhrase); 
*/

/*DRIVER CODE FOR RELEASE: 1 */
console.log(testSimiliar({name: "Steven", age: 54}, {name: "Tamir", age: 54}))






