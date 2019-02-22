# Many to Many Relationships

### Deliverables

Add new methods to our `Hero` Class. When we are finished, a hero should have the following methods:
* `Hero#initialize` which accepts a name. The name should be accessible
* `Hero#abilities` that returns an array of Ability instances
* **`Hero#gain_ability` that takes a name and a coolness level, creates a new Ability, and adds it to the hero's ability collection**
* `Hero#coolest_ability` that returns the instance of an ability
* `Hero.all` that returns all the Heroes created.

Create a Ability class. The class should have these methods:
* `Ability#initialize` which accepts a name, and a coolness level. Each should be accessible
* **`Ability#heroes` that returns an array of Hero instances**
* `Ability#label` that returns a string in the format of "#{name} (#{coolness})"
* `Ability.all` that returns all the Abilities created.



## Vocabulary

* Join Class
  * A class which represents a relationship between two other classes

### Examples

* Actors have many movies and movies have many actors
  * Actors have many appearances 
  * Movies have many appearances
* Singers sing many songs and songs can have mulitple singers
  * Singers have many parts
  * Songs have many parts
* Teachers have many students, students have many teachers
  * Teachers have many TeacherStudent
  * Students have many TeacherStudent



### Implementation

1. Select all of the middle things (join class instances) that belong to me (self)
2. Map all of the middle things to the other side of the relationship





## Example

* Airline has many passengers
* Passengers has many airlines
* Joined through Tickets



* Passengers:
  * Joshua
  * Alan
  * Eli
* Tickets:
  * `#1`: Alans flight to Japan on Spirit Airlines
  * `#2`: Eli's flight to Morroco on Southwest
  * `#3`: Joshua's flight to New York on United
  * `#4:`Alan's flights Switzerland on United
* Airlines
  * United
  * Southwest
  * Spirit



* `alan.airlines`
  * First step: get all the tickets (`[#1`, `#4`])
  * Second step: go through all the tickets from step 1 and get the airline for the ticket ( `[ Spirit Airline, United ]` )

















