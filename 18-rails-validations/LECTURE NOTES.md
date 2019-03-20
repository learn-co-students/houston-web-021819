# Rails Validations

### Learning Goals

- Explain the advantage of fat models and skinny controllers
- Use ActiveRecord validation helpers to validate data
- Check for resource validity in the controller
- Display error messages in the view



### Learning Goal 1: Explain the advantage of fat models and skinny controllers [15 min]

#### Demonstrate:

- using the controller to limit the number of absences that a student can have. 
- how our validation is bypassed by other controller methods
- how to fix this by moving validations "higher", into the model

```ruby
validate :absences_must_be_less_than_five
has_many :pets

def absences_must_be_less_than_five
    if(self.absences > 5)
        errors.add(:absences, 'You can have no more than 5 absences')
    end
end
```



#### Reinforce:

Next we want to make sure the name is valid. Do I want to put this in the model or the controller? Why?



### Learning Goal 2: Use ActiveRecord validation helpers to validate data [10 min]

#### Demonstrate:

- using a validation helper to refactor our validation of absences

```ruby
validates :absences, numericality: { less_than: 5 }
has_many :pets
```

#### Reinforce:

- using the documentation or stack overflow, find a way to validate that the name is present



- using the documentation or stack overflow, find a way to validate the name is at least three characters long





### Learning Goal 3:  Check for resource validity in the controller [10 min]

#### Demonstrate:

- Using `assign_attributes ` so as not to persist data until we know it's valid
- Using `.valid?` to see if a resource is valid
- Conditionally commiting the update

#### Reinforce:

- Challenge students to implement the same logic for the create action, as you drive



### Learning Goal 4: Display error messages in the view

#### Demonstrate:

- Using `.errors.messages` to view error messages in the controller
- Using the flash to move instance variable for the error messages from the `update` method to the `edit` method

- Using `@errors` hash to render errors in the view

#### Reinforce:



