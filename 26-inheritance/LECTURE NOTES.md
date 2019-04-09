# Inheritance

### Learning Goals

- Implement a class which inherits from another using the `extends` keyword 
- Use  `super` keyword to call a parent's constructor
- Explain what it means for JavaScript to have a `prototype` based inheritance system



### Activation: 

##### If we want multiple *types* of character's on the screen, we will need a way to share behavior between classes



### Learning Goal 1: Implement a class which inherits from another using the `extends` keyword 

#### Demonstrate:

* A digram that visualizes our `Character` class at the top of what will soon be a tree
* Creating another "type" of character with a different name (`NonPlayableCharacter`), but the same behavior
  * Add this to our diagram
* How, by convention, we will put each class in it's own file
* Adding **additional** methods for moving along a track

#### Reinforce:

* Driver / Navigator: Create a `PlayableCharacter` class

#### Check for Understanding: 

* Kahoot



### Learning Goal 2: Use  `super` keyword to call a parent's constructor 

#### Demonstrate:

- That we need to run some code when the child class is instantiated 
- Overriding a parents constructor to add additional behavior
- How this keeps the original constructor from being invoked
- How we can use super to call a parents constructor and pass variables as desired

#### Reinforce:

- Driver / Navigator: Implement the behavior of a `PlayableCharacter`

#### Check for Understanding: 

* Kahoot



### Learning Goal 3: Explain what it means for JavaScript to have a `prototype` based inheritance system

#### Demonstrate:

* That classes are functions
  * including `Object`!
* That classes have `prototype`'s
* That the `__proto__` of an instance points to the `prototype` of the class that created it.
* That we can (but shouldn't) change the `__proto__` of an instance completely

#### Reinforce:

* Critical analysis: How could I add a method to a class after the class has already been defined?

#### Check for Understanding: 

* Kahoot



