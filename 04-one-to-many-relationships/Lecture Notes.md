# One To Many Relationships



# Deliverables

Add new methods to our `Hero` Class. When we are finished, a hero should have the following methods:

- `Hero#initialize` which accepts a first and last name. The names should be accessible
- `Hero#abilities` that returns an array of Ability instances
- `Hero#gain_ability` that takes a name and a coolness level, creates a new Ability, and adds it to the hero's ability collection
- `Hero#coolest_ability` that returns the instance of an ability
- `Hero.all` that returns all the Heroes created.

Create a Ability class. The class should have these methods:

- `Ability#initialize` which accepts a name, a coolness level, and a hero. Each should be accessible
- `Ability#label` that returns a string in the format of "#{name} (#{coolness})"
- `Ability.all` that returns all the Abilities created.



## Vocabulary Terms:

- Implicit Self
- Macros
  - `attr_reader`
  - `attr_writer`
  - `attr_accessor`
- Relationships
  - One to Many
  - Many to Many
  - One to One
- Model
- Domain
- Single Source of Truth


## Outline

- Intro (5 min)
  - Introduction to Implicit Self
  - Introduction to Macros
    - Default `getters/setters`
    - attr_reader
    - attr_writer
    - attr_accessor
  - What if we wanted to add a label, which includes the name and the coolness combined in  a string?
    - We are trying to add behavior to our abilities 
    - They would need to be objects as well
    - Every (One) Hero has many Abilities
- Relationships (10 min)
  - In programming we refer to three types of relationships
    - One to Many
    - Many to Many
    - One to One
  - What are some other examples of one to many relationships?
    - In each of these examples, we can identify models and a domain 
      - What is a model?
      - What is a domain?
- Turning Abilities into Objects (20 min)
  - How do I define a new object type?
  - When will the initialize method be called?
  - How can I add accessibility to the requested properties?
- Refactoring  our character to have a single source of truth (20 min)
  - Lets remove an ability from the Ability.all array.
    - Is the ability still in a heroes abilities array?
    - Should it be?
  - These are the types of bugs we encounter if we define a relationship in multiple ways, instead we should rely on a single source of truth by defining one side of a relationship through behavior
  - We'll define the relationship in 3 steps:
    - Make `.all` of the abilities available
    - Create an `abilities` method for the hero 
    - Inside the method, find all `.all` abilities where the ability's `.hero` is equal to `self`



## Resources

```
class Ability
    attr_accessor :name, :coolness, :hero

    @@all = []
    
    def initialize(name, coolness, hero)
        self.name = name
        self.coolness = coolness
        self.hero = hero
        @@all << self
    end

    def label
        "#{name} (#{coolness})"
    end

    def self.all
        @@all
    end
end
```

