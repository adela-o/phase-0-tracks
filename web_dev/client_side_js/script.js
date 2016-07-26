console.log("The script is running!");

// RELEASE: 1

var myElement = document.createElement("p");
var myNode = document.createTextNode("Cupcakes are life!!!!!");
myElement.appendChild(myNode);
var newElement = document.getElementById("about-cupcakes");
newElement.appendChild(myElement);

// RELEASE: 2

document.getElementById("myBtn").addEventListener("click", function(){
    alert("Enjoy your DELICIOUS ZERO calorie Cupcake!");
});



// function addPinkBorder(event) {
//   console.log("click happened! here's the click event:");
//   console.log(event);
//   event.target.style.border = "2px solid pink";
// }

// var photo = document.getElementById("cupcake-photo");
// photo.addEventListener("click", addPinkBorder);

