# Intro to Events

### Learning Goals

* Use `addEventListener` to invoke a callback function after an event
* Explain the difference between bubbling and capturing events

- Use `event.preventDefault` to override a form submission
- Explain why to use an event listener on `DOMContentLoaded`



### Activation

##### As cool as it is to have a moving character, real users wouldn't open up a dev console to interact with our application. What should a user do to tell our character to go left? 

*Talk about how createElement is a method of the document*

### Learning Goal 1: Use `addEventListener` to invoke a callback function after an event

#### Demonstrate:

* Using `.addEventListener` to listen for `keypress` events
* Using the `e` object to determine which key was pressed
* Responding to the event by moving the character
* Attaching event listeners by name and inline

#### Reinforce:

* Our character never stops moving! How can we get him to stop? (15 second wait time)

#### Check for Understanding: 

* Everyone open your console. Add an event listener which listens for the body to be **clicked**, and in the callback console.log "I was clicked!"



### Learning Goal 2: Explain the difference between bubbling and capturing events

#### Demonstrate:

* Rendering an h1 inside of a div
* How, when I click the h1, I am also clicking the **div** it's inside
* How there are two ways JavaScript could handle this, from the top of the tree down, or from the bottom  of the tree up
  * By default, it will go from the bottom up
* Attaching event listeners to both
  * Using the default "bubble" method
  * Using the "capture" method
* How each callback logs when the h1 is clicked

#### Reinforce:

* Add an event listener to our character and to our page. Which order will the functions fire in?

#### Check for Understanding: 

* kahoot quiz



>  --- Break ---



### Learning Goal 3: Use `event.preventDefault` to override a form submission

#### Demonstrate:

* A preferences form with a submit button on the bottom of the page
* What happens when we submit?
* To handle this on the client side, because we don't have a backend:
  * Attach an event listener
  * Prevent the default behavior with `e.preventDefault()`

```javascript
const form = document.querySelector('.preference-form')
const speedCheckbox = document.querySelector('.speed-checkbox')
form.addEventListener('submit', function(e){
    e.preventDefault()
    if(speedCheckbox.checked){
        speed = 10
    } else {
        speed = 20
    }
})
```

#### Reinforce:

* Create a link which will toggle the visibility of the preference form
  * How can we keep the link from taking us to the other page?
    * Admit that there are better ways to do this (javascript:void(0))

#### Check for Understanding: 

* kahoot quiz



### Learning Goal 4: Explain why to use an event listener on `DOMContentLoaded`

#### Demonstrate:

* That moving the script tag into the header would break our application
* That we can use the DOMContentLoaded event to run code after the DOM has been parsed

#### Reinforce:

* Explain, in your own words, what the DOMContentLoaded event is for.

#### Check for Understanding: 

* Everyone
  * Create an index.html, with a script tag in the header
  * Put an event listener for DomContentLoaded inside the script tag, and log "I'm second" when the event fires
  * Put a console.log after the event listener that logs "I'm first"