# Rails Validations

### Learning Goals

- ~~Explain the advantage of fat models and skinny controllers~~
- ~~Use ActiveRecord validation helpers to validate data~~
- ~~Check for resource validity in the controller~~
- Display error messages in the view





### Fat Models and Skinny Controllers

* Model
  * Establishes relationships / sets the foundation
  * Represents a table
* Controller
  * Maintain the relationship between the view and the model
  * By handling http requests
  * Provide access to the models

## Use ActiveRecord validation helpers to validate data

## Check for resource validity in the controller

* Two step pattern:
  * Update data without persisting it
  * Check if the data is `.valid?`

### Display error messages in the view



