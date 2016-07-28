##jQuery Study Plan-

read a tutorial, checkout treehouse to see videos, code along in treehouse if possible, find a cheat sheet. 

## *Resources* -
* w3schools
* treehouse * <= Most effective for me because I'm a visual learner *
* find a doc if possible - api.jquery.com
* **RUN TESTS**

$ is shorthand for jQuery 
jQuery(".warning").hide();

jQuery(".warning").show("slow");

is also 

$(".warning").hide();
$(".warning").show("slow");

is also 

$(".warning").hide().show("slow"); * <= made more DRY with **method chaining** *

##DOM Manipulation Methods
* Add/Remove HTML elements
* Update/Read HTML element attributes
* Transform HTML elements

##Traversing the DOM
* Moving from a parent element to its children
* Moving from a child element to its parent
* Moving from a sibling element to another sibling element

##Event Methods 
*where a user interacts with the brower or a computer triggers the event*

* Keyboard and Mouse Events
* Keyboard Event example: keypress
* Mouse Event example: mouse movement or a click

jQuery.com to download jQuery to use in your project. Add a line in the HTML. Most common to use CDN(Content Delivery Network). Host serves jQuery all over the world, so its faster and doesn't need to re-download on sites that already have it. 

<script   src="https://code.jquery.com/jquery-1.12.4.js"></script>

**Best Practice:**
jQuery and Javascript at the bottom of the html page before </body> tag
