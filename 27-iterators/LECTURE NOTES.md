# Iterators and Higher Order Functions

### Learning Goals

- Write more readable code using `find`,  `map`, and  `filter`

- Explain the relationship between declarative and imperative programming

- Write more readable code using `reduce`

- Define "Higher Order Functions" and explain why they are useful for writing declarative code


### Activation

Our last lecture of the week, our last enhancements to our game. 

Introduce the npcs.  

Show how they work

Introduce the domain of our game (these are students calmly and collectively looking for answers to JS questions)

We have two new 

##### What does this code do?



### Daily Deliverables

* Refactor our current code to be more readable
* Implement a method to find the student who is traveling the farthest



### Learning Goal 1: Write more readable code using `find`,  `map`, and  `filter`

#### Demonstrate:

* Refactoring each of our three functions to use the common iterators
* Using arrow functions with implicit return values
* Using currying to make this even more readable (temp)

#### Reinforce:

* Driver / Navigator: Write a readable function that returns an array of directions that a character is traveling

#### Check for Understanding: 

* Kahoot


### Learning Goal 2: Explain the relationship between declarative and imperative programming

#### Demonstrate:

* How our new functions are easier to read because they say *what* they are going to do rather than *how* they are going to do it

#### Check for Understanding: 

* Kahoot


> Break



### Learning Goal 3: Write more readable code using `reduce`

#### Demonstrate:

* How to use `reduce` to create a method that determines how far a given character has traveled

#### Reinforce:

* Driver / Navigator: Use reduce to find the character that has traveled the farthest

#### Check for Understanding: 

* Kahoot



### Learning Goal 4: Define "Higher Order Functions" and explain why they are useful for writing declarative code

#### Demonstrate:

- Defining higher order functions as functions that take a function as an argument (callback) or return a function (currying)
- How they empower us to write code with a more singular responsibility by taking responsibility for:
  - When a function runs
  - What variables the function has access to
  - How many times the function is invoked
  - What to do with what a function returns
- How this results in more declarative code

#### Check for Understanding: 

* Categorization Exercise



## Identifying Higher Order Functions



`(num1)  => (num2) => num1 + num2`

**Is it a Higher Order Function?** ___

**Why?** ___



`setInterval`

**Is it a Higher Order Function?** ___

**Why?** ___



`addEventListener`

**Is it a Higher Order Function?** ___

**Why?** ___



`forEach`

**Is it a Higher Order Function?** ___

**Why?** ___



`(callback)  => callback('Hello World!')`

**Is it a Higher Order Function?** ___

**Why?** ___



`setTimeout`

**Is it a Higher Order Function?** ___

**Why?** ___



`document.createElement`

**Is it a Higher Order Function?** ___

**Why?** ___



`map`

**Is it a Higher Order Function?** ___

**Why?** ___



```javascript
function stillConfused(){
    return Character.all
        .filter( isNonPlayable )
        .map( student => student.name)
}
```

**Is it a Higher Order Function?** ___

**Why?** ___



`document.querySelector`

**Is it a Higher Order Function?** ___

**Why?** ___



`reduce`

**Is it a Higher Order Function?** ___

**Why?** ___



`filter`

**Is it a Higher Order Function?** ___

**Why?** ___



`document.body.append`

**Is it a Higher Order Function?** ___

**Why?** ___



```javascript
isNonPlayable = character => character instanceof NonPlayableCharacter
```

**Is it a Higher Order Function?** ___

**Why?** ___



`console.log`

**Is it a Higher Order Function?** ___

**Why?** ___



```javascript
function oneOnOne(name){
    let student = Character.all.find( whereNameIs(name) )
    Character.all.splice(Character.all.indexOf(student), 1)
    student.element.remove()
}
```

**Is it a Higher Order Function?** ___

**Why?** ___



