# Components & Inverse Dataflow

### Learning Goals

* Define Inverse Data Flow
* Use a function prop to change state in a parent component
* Make declarative updates to state using map




### Activation

* Reviewing the uses of Higher order functions
* We have two sources of truth (shame on us)



### Learning Goal 1: Define Inverse Data Flow

##### Demonstrate

* Visualize the flow of data down a component tree
* `this` is different in each component, so we no longer have access to the component who has the data saved
* The component who saved the data still has access to its state...
* ... but it doesn't know when to run that code...
* **Deciding when code should run is a prime use for higher order function**
* Visualize flow of data going up a component tree through a **callback**

##### Questions

##### Check for Understanding

* Kahoot [1-3]

##### Cue

* Now we know what inverse data flow is, let's see how it can help us change state in the DragonList from the DragonCard



### Learning Goal 2: Use a function prop to change state in a parent component

##### Demonstrate

- Defining a console.log function in the DragonList
- Passing it to the DragonCard
- Invoking it in the DragonCard
- Attach it as an onClick
- Try to change state (`this` should break)
- Use an arrow function
- Look at how it sets the wrong state with react dev tools

##### Questions

##### Check for Understanding

- Kahoot [4-6]

##### Cue

- Now we've changed state, but not in the right place



### Learning Goal 3: Make declarative updates to state using map [15 min]

##### Demonstrate

- How do we set state in an array? We use map to turn an array of elements before a transformation to an array of elements that reflects a transformation
- Change DragonCard to render from the prop

##### Questions

##### Guide 

- Driver / Navigator: Let's imagine another example with an array of objects

##### Check for Understanding

- Self Assessment: 

Use map and the spread operator to return a new array where the dragon whose id is passed in as the first argument' is updated to have it's name match the value passed in as the second argument

```
var state = { 
	dragons: [ 
		{
            id: 1,
            name: 'Smaug'
		},
		{
            id: 2,
            name: 'Toothless'
		}
	] 
}
function changeName(id, value){
    return // ???
}
```

##### 

### Conclusion 



### Resources

- `{{float:'left',width:'40%', padding:'5%', backgroundColor:'#00ffd8'}}`
- `{{float:'left', width:'40%', padding:'5%', backgroundColor:'#f98181'}}`



