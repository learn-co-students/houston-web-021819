# JavaScript Applications & RESTful APIs

### Learning Goals

- Use fetch to respond to user input

- Explain what REST is and why it is a useful pattern but not a mandate

- Using functions to organize our Single Page Application



### Activation

##### What routes did our Rails apps in Mod 2 respond to? What convention did we use? Why do you think rails uses that convention?



### Daily Deliverables

* Save the players position
* Add the ability to create multiple players



### Learning Goal 1: Use fetch to respond to user input:

#### Demonstrate

- Updating the characters position inside our setInterval
- The ensuing fetch hell
- When the user interacts with our app, we will generally go through two steps:
  - Inform the server 
  - Update the DOM
- We can do these steps in either order:
  - If we inform the server first, and wait for a response, it's called pessimistically rendering
  - If we update the DOM first, and then update the server it's called optimistically rendering
- In this case, we can fix the performance issue by moving our fetch to the keyup method 

#### Reinforce

- Driver / Navigator:  Save whether or not the character is in fast mode

#### Check for Understanding

- Kahoot (1-3)



### Learning Goal 2: Explain what REST is and why it is a useful pattern but not a mandate

#### Demonstrate:

* The components of a request:
  * HTTP method
  * request path
    * path params
  * headers
  * body
* That an API can mix and match these however they like...
  * But it can be easy to design poor APIs
  * Our current API does not support mutliple players, which is a huge design flaw!
  * The RESTful convention helps us design high qualitiy APIs 
* How CRUD relates to RESTful resources
  * Each RESTful route correlates to CRUD actions
* How we actually have to go out of our way to create non-restful APIs with Rails

#### Reinforcing: 

* Driver / Navigator:  Now that I'm using a RESTful API, how should I get my characters data?

#### Check for Understanding: 

* Kahoot (4-7)



> Break



### Learning Goal 3: Using Functions to organize a Single Page Application

#### Demonstrate

* How impossible it is to get an id for the player before we fetch (where our fetch is now)
* Reviewing the idea of single responsibility principle
* Seperating our code out into distinct responsibilities 
* How we can now easily wait to get the player after the user selects one

#### Reinforcing:

* Driver / Navigator: Implementing a form to create a new player using functions

#### Check for Understanding: 

* Have students refactor the following code.
* Once they refactor it down to using one `forEach` loop, they should check off their name in the Lecture Notes

```javascript
function total(numbers){
    let total = 0
    numbers.forEach(function(number){
        total += number
    })
	return total
}

function average(numbers){
    let total = 0
    numbers.forEach(function(number){
        total += number
    })
	return total / numbers.length
}

function deviation(numbers, sampleNumber){
    let total = 0
    numbers.forEach(function(number){
        total += number
    })
	let average = total / numbers.length
    return sampleNumber = average
}
```