# JavaScript Tooling

### Learning Goals

- Define NPM, Babel, and JSX as tools for developing with JavaScript
- Use WebPack's Import Syntax to distribute code in multiple files
- Use public class fields to define instance properties without a constructor
- Use `create-react-app` to setup Babel, WebPack, and JSX for you



### Activation

##### What sucks about JavaScript?

* File splitting (dependancy management)
* Imperitive syntax 
  * `document.createElement`
  * `constructor` fields

Common thread: **Lack of structure**



### Learning Goal 1: Define NPM, Babel, and JSX as tools for developing with JavaScript

#### Demonstrate:

* How NPM is used to manage project dependancies 
  * Installing from the terminal
  * Package.json
  * leftPad Anecdote
* How Babel is used to add cool new features to JavaScript
  * Babel REPL
* How JSX can be used to write HTML like syntax within our JavaScript
  * Babel REPL 
  * Exceptions to HTML syntax

#### Questions

#### Check for Understanding: 

* Kahoot: Questions [1-3]



### Learning Goal 2: Use ES6 Import Syntax to distribute code in multiple files

#### Demonstrate:

* That WebPack can be used to manage our dependancies for us
* Named exports / imports
* Default exports / imports

#### Questions

#### Check for Understanding: 

* Kahoot: Questions [4-6]

* > Post Lecture:  LAB



### Learning Goal 3: Use public class fields to define instance properties without a constructor

#### Demonstrate:

* Creating a property with a constructor 
* Creating a property without a constructor
* Static properties
* How we will still need to use a constructor when we want to accept arguments during instantiation

#### Questions

#### Check for Understanding: 

* Think Pair Share: Refactor a simple class

```
class Owl {

	static all = []
	static numberOfSpecies = 200
	
	flys = true
    activeAtNight = true
    hunts = [
    	'insects', 'small mammals', 'other birds'
    ]

	constructor(){
     	Owl.all.push(this)
	}

}
```





### Learning Goal 4: Use `create-react-app` to setup Babel, WebPack, and JSX for you

#### Demonstrate:

- Using `npx create-react-app` 
- The resulting file **structure**

#### Questions

#### Check for Understanding: 

- Self Assessment: Use `create-react-app` to initialize a react application
  - Change your name in the application