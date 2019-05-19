# Intro to Python


### Learning Goals

* Recognize basic tools for creating Python Applications
* Identify and Explain the purpose of Python decorators
* Recognize Common Python Data Structures
* Explain what it means for Python to be both dynamically and strongly typed



### Activation

* Python is popular
* \#3 on the TIOBE Index




### Learning Goal 1: Recognize basic tools for creating Python Applications
##### Timestamp: 0:10

##### Demonstrate

* It doesn't have a package manager like `npm` or `bundler`
* It uses `pip` to install dependencies
* The convention is to use virtual environments to seperate dependancies

```
// Create a virtual environment
python3 -m venv venv
// Activate a virtual environment
. venv/bin/activate
// Install a dependency
pip install Flask
```

* Using the dependency `hello.py`

* ```python
  from flask import Flask
  app = Flask(__name__)
  
  @app.route('/')
  def hello_world():
      return 'Hello, World!'
  ```

* Create an environment variable to tell flask about the entry point of your app: `export FLASK_APP=hello.py`

* `export FLASK_ENV=development`

* `flask run`

##### Vocabulary

* `venv`
  * A tool for managing virtual environments necessary to seperate the dependancies of different python projects 
* `pip`
  * A tool for installing python modules
* `Flask`
  * A framework for building web applications with python

##### Questions 

##### Check for Understanding
* *Kahoot Quiz:* [1-3] 

##### Cue
* Now we can recognize the big pieces of building a python project, let's dig into some of the specific syntax we've already written to get a basic server running; specifically that @ sign.



### Learning Goal 2: Identify and Explain the purpose of Python decorators

##### Timestamp: 0:25

##### Demonstrate

* Define the term decorator (language agnostic)
  * Prefixed with `@` 
  * A function that wraps another function
* Define one in python
  * Functions cannot be annonymous 
  * They are first class

```python
def double(func):
    def result():
        func()
        func()
    return result    

@double
def hi():
    print "Hi"

hi()
```



##### Vocabulary

- decorator
  - Prefixed with `@` 
  - A function that wraps another function
- First class citizens
  - Things in a language which can be assigned to variables / passed places

##### Questions 

##### Check for Understanding

- *Kahoot Quiz:* [4-6] 

##### Cue

- Okay, so we understand how this code works, let's take a 10 minute break, and when we come back we'll build on this example with some common python data structures

### 

> Break 0:45



### Learning Goal 3: Recognize Common Python Data Structures

##### Timestamp: 0:55

##### Demonstrate

* Dictionaries
* Classes
  * Instance methods
  * Instance and class variables
* Lists

```python
from flask import Flask, jsonify
app = Flask(__name__)

class Thing(dict):

    all = []

    def __init__(self):
        dict.__init__(self)
        self["thing"] = 'Thing!'
        self.all.append(self) 

@app.route('/')
def hello_world():
    thing = Thing()
    return jsonify(Thing.all)
```

##### Vocabulary

- Dictionary
  - A data structure comprised of key value pairs
- Class
  - A template for creating objects
- List
  - A data structure comprised of ordered elements

##### Questions 

##### Check for Understanding

- *Kahoot Quiz:* [7-9] 

##### Cue

- Now we've built out some datatypes, we're going to add a method to get a specific ability which will reveal some intreseting characteristics about how Python deals with types



### Learning Goal 4: Explain what it means for Python to be both dynamically and strongly typed

##### Timestamp: 0:75

##### Demonstrate

```ruby
from flask import Flask, jsonify
app = Flask(__name__)


class Thing(dict):

    all = []

    def __init__(self, id):
        dict.__init__(self)
        self["id"] = id
        self.all.append(self) 

thing = Thing(1)
thing = Thing(2)
thing = Thing(3)        

@app.route('/')
def index():
    return jsonify(Thing.all)
 

@app.route('/<id>')
def show(id):
    for thing in Thing.all:
        if thing['id'] == int(id):
            return jsonify(thing)

```

##### Vocabulary

- Dynamically Typed
- Statically Typed
- Stongly Typed
- Weakly Typed

##### Questions 



### Conclusion 

##### Timestamp 0:85 

* *Think Pair Share:* 
  * What's unique about python?
  * What does python seem to value relative to Ruby and JavaScript