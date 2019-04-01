# JavaScript and the DOM

### Learning Goals

- Mutate the DOM and its styles using JavaScript
- Create new DOM nodes and append them
- Use different querySelectors to select single or multiple elements



### Activation

##### What are some of your favorite web applications? What are some of the features that make them work really well?

JavaScript lets us write applications that respond to our users.



### Learning Goal 1: Mutate the DOM and its styles using JavaScript

#### Demonstrate:

- JSON and HTML, and how they are both just ways of describing data
- How the browser parses HTML into a DOM
- Accessing the DOM in Chrome developer tools, starting with the `document`, and traversing down the DOM tree to access different elements
- How attributes of HTML elements are present in the DOM
- How we can change attributes of the DOM using JavaScript
- How JavaScript must run on the clients computer to do this
- How we can use `let` and `const` to create variables so we can write less code

#### Reinforce:

- How could I change this image to be an image of our character? (15 sec wait time)

#### Check for Understanding: 

- I want everyone to open their developer tools, and change one thing on the page using JS. Check your name off when you've done so.

### Learning Goal 2: Create new DOM nodes and append them

#### Demonstrate:

- Creating a new DOM element with `document.createElement`
- Mutating the properties of that element with JavaScript
- How the element will not appear on the page until we `.append` it somewhere

![ship yard](https://i.imgur.com/rw1mRDl.jpg)

- Using `.innerHTML` to create elements from HTML

#### Reinforce:

- If I wanted to create another image to represent a rock, how would I do it? (15 second wait time)

#### Check for Understanding:

- Kahoot Quiz

### Learning Goal 3: Use different querySelectors to select single or multiple elements from the DOM

#### Demonstrate:

- How accessing elements via the DOM tree is brittle 
- Using  `querySelector` to jump to specific elements on the page
- Using  `querySelectorAll` to select multiple elements on the page
- Using a for-loop to iterate ove all the selected elements
- That there are legacy tools, `.getElementById`, .`getElementsByClassName`, which they should also be aware of 

#### Reinforce:

- How could I select both of the images we have on the screen?

#### Check for Understanding: 

- I want everyone to open their developer tools, and select both a single element from the page, as well as a collection of elements from the page. Check your name off when you've done so.