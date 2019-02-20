# Intro to Object-Oriented Ruby

## Vocabulary Terms:

- Object
- Property
- Initialize
- Instance variables
- Method
- Self
- Implicit self
- attr_reader, _writer, and _assessor
- Class Variables
- Class methods



## Outline

- Intro (10 min)
  - What is an Object?
    - Data+Behavior = Object
  - How are hashes and objects similar?
  - How are hashes and objects different?
  - What are properties?
    - Access + storage = property
    - There are two kinds of access
      - Read
      - Assignment
- Todays deliverables (5 min)
  - Does this code include behavior and data or just data?
- Building a Hero Class (15 min)
  - What is initialize?
  - What is an instance variable?
  - What is a method?
  - We have short cuts for default access (attr_reader, attr_writer, attr_assessor) 

*-Break-*

- Building a coolest_ability method (15)
  - What is self? (the most meta of questions)
- Building a method that returns the hero with the most abilities (15)
  - What is a class variable?
  - What is a class method?
  - What is self now?


  # Reference
  ```
require 'pry'

class Hero 

    @@all = []

    def initialize(first_name, last_name, abilities) 
        @first_name = first_name
        @last_name = last_name
        @abilities = abilities
        @@all << self
    end

    attr_accessor :first_name
    # attr_reader :first_name - Only Reader Access
    # attr_writer :first_name - Only Writer Access
    # def first_name
    #     @first_name
    # end

    # def first_name=(value)
    #     @first_name = value
    # end

    attr_accessor :last_name
    # def last_name
    #     @last_name
    # end

    # def last_name=(value)
    #     @last_name = value
    # end

    def full_name
        binding.pry
        @first_name + ' ' + @last_name
    end

   attr_reader :abilities

    def coolest_ability
        coolest_level_found = -Float::INFINITY
        coolest_ability_found = nil
        @abilities.each do | ability |
            if ability[:coolness] > coolest_level_found 
                coolest_level_found = ability[:coolness]
                coolest_ability_found = ability
            end
        end
        coolest_ability_found
    end

    def self.with_most_abilities
        current_highest_ability_count = @@all[0].abilities.length
        current_highest_ability_hero = @@all[0]
        @@all.each do | hero |
            if hero.abilities.length > current_highest_ability_count
                current_highest_ability_count = hero.abilities.length
                current_highest_ability_hero = hero
            end
        end
        current_highest_ability_hero
    end
end

steve = Hero.new('Steve', 'Rodgers', [
    {
        coolness: 5,
        name: 'Super Strength'
    },
    {
        coolness: 10,
        name: 'Gravity Defying Shield'
    }
])



thor = Hero.new('Thor', 'Odinson', [
    {
        name: 'Lightening',
        coolness: 10
    }
])

Hero.with_most_abilities
binding.pry
# steve.coolest_ability
0
  ```