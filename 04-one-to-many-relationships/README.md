## Vocabulary Terms:

- Implicit `self`
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



# Outline

* ~~Create an Ability class~~
* ~~Add those object instances (the abilties) to the hero's array of abilities~~
* Refactor for a single source of truth



## Relationships

* One to Many
  * Implementation: ~~an instance variable that references an array of other objects~~
  * New Implementation:
    * Whatever is on the many side (the abilities) will keep a reference to the "one side" (the hero)
    * The hero will be able to find all of the abilities where the ability's hero is equal to `self`
* Many to Many
  * Implementation:
* One to One
  * Implementation: a property (instance variable) that references another object

