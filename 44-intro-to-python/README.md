## Intro to Python

### Learning Goals

- Recognize basic tools for creating Python Applications
- Identify and Explain the purpose of Python decorators
- Recognize Common Python Data Structures
- Explain what it means for Python to be both dynamically and strongly typed


### Vocabulary
 * `venv`
     * A tool for managing virtual environments necessary to seperate the dependancies of different python projects 
 * `pip`
     * A tool for installing python modules
 * `Flask`
 * Decorator
     * - Prefixed with `@` 
     * A function that wraps another function
 * First Class Citizens
     * Things in a language which can be assigned to variables / passed places
 * Dictionary 
     * A data structure comprised of key value pairs
 * Class
     * A template for creating objects
 * List
     * A data structure comprised of ordered elements

#### Typing
- Dynamically Typed
- Statically Typed
- Stongly Typed
- Weakly Typed


### Installation
```
// Create a virtual environment
python3 -m venv venv
// Activate a virtual environment
. venv/bin/activate
// Install a dependency
pip install Flask
export FLASK_APP=hello.py
export FLASK_ENV=development
flask run
```