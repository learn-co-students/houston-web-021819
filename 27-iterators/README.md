# Iterators and Higher Order Functions
### 04/10/19

## Learning Goals
- Write more readable code using `find`,  `map`, and  `filter`
- Explain the relationship between declarative and imperative programming
- Write more readable code using `reduce`
- Define "Higher Order Functions" and explain why they are useful for writing declarative code

### Rules of Reduce
* It accepts 2 arguments
    * Callback
        * carry 
        * each element in the array
    * Initial of the carry
* The carry will be replaced with the return value of the previous iteration

### Higher Order Function
* A function which either:
    * Accept a callback as an argument
    * Return a function

* Used to:
    * To decide when a function runs
        * setInterval
    * To decide what variables the function has access to
        * fetch (gives access to the response)
    * To decide how many times a function is invoked
        * map, forEach, etc.
    * To decide what to do with what a function returns
        * map, reduce, etc.




## Identifying Higher Order Functions



`(num1)  => (num2) => num1 + num2`

**Is it a Higher Order Function?** YES

**Why?** ___ 



`setInterval`

**Is it a Higher Order Function?** YES

**Why?** ___It decides when/how often the function should run 



`addEventListener`

**Is it a Higher Order Function?** YES

**Why?** It decides when a function runs.



`forEach`

**Is it a Higher Order Function?** YES

**Why?** ___Decides how many times a function is invoked



`(callback)  => callback('Hello World!')`

**Is it a Higher Order Function?** YES

**Why?** It takes a callback function as an argument.



`setTimeout`

**Is it a Higher Order Function?** YES

**Why?** It decides WHEN to run another function



`document.createElement`

**Is it a Higher Order Function?** NO

**Why?** _It neither accepts a callback as an argument nor returns a function.__



`map`

**Is it a Higher Order Function?** YES

**Why?** It performs a function of mapping a collection on which it is called upon and returns another collection and that mapping function is an argument.






```javascript
function stillConfused(){
    return Character.all
        .filter( isNonPlayable )
        .map( student => student.name)
}
```

**Is it a Higher Order Function?** NO

**Why?** __does not return or accept a function as an argument _



`document.querySelector`

**Is it a Higher Order Function?** NO

**Why?** _It neither accepts a callback as an argument nor returns a function.__



`reduce`

**Is it a Higher Order Function?** YES

**Why?** because it returns a function__



`filter`

**Is it a Higher Order Function?** YES
**Why?** creates a new array by itself without the programmer having to do it by hand



`document.body.append`

**Is it a Higher Order Function?** NO

**Why?** _It neither accepts a callback as an argument nor returns a function._



```javascript
isNonPlayable = character => character instanceof NonPlayableCharacter
```

**Is it a Higher Order Function?** NO

**Why?** ___



`console.log`

**Is it a Higher Order Function?** NO

**Why?** imperative



```javascript
function oneOnOne(name){
    let student = Character.all.find( whereNameIs(name) )
    Character.all.splice(Character.all.indexOf(student), 1)
    student.element.remove()
}
```

**Is it a Higher Order Function?** noooooo
**Why?** doesnt take in a callback, or return a function 