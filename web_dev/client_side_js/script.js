console.log("The script is running!");

// RELEASE: 1

var myElement = document.createElement("p");
var myNode = document.createTextNode("Cupcakes are life!!!!!");
myElement.appendChild(myNode);
var newElement = document.getElementById("about-cupcakes");
newElement.appendChild(myElement);

// RELEASE: 2
function addPinkBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid pink";
}

var photo = document.getElementById("cupcake-photo");
photo.addEventListener("click", addPinkBorder);







/*var bullets = document.getElementsByTagName("li");
undefined
bullets
[<li>​tasty treat​</li>​, <li>​frosting​</li>​, <li>​sprinkles​</li>​]
var bullet = bullets[1]
undefined
bu
VM408:1 Uncaught ReferenceError: bu is not defined(…)(anonymous function) @ VM408:1
bullet
<li>​frosting​</li>​
bullet.parentElement
<ul>​…​</ul>​<li>​tasty treat​</li>​<li>​frosting​</li>​<li>​sprinkles​</li>​</ul>​
bullet.ch
undefined
bullet.parentElement.children
[<li>​tasty treat​</li>​, <li>​frosting​</li>​, <li>​sprinkles​</li>​]
script.js:4 click happened! here's the click event:
script.js:5 MouseEvent {isTrusted: true, screenX: 691, screenY: 274, clientX: 122, clientY: 149…}*/