require 'pry'

class Hero 

    @@all = []

    def initialize(first_name, last_name, abilities)
        @first_name = first_name
        @last_name = last_name
        @abilities = abilities
        @@all << self
    end

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    # Getter
    def first_name
        @first_name
    end

    # Setter
    def first_name=(value)
        @first_name = value
    end

     # Getter
     def last_name
        @last_name
    end

    # Setter
    def last_name=(value)
        @last_name = value
    end

    # Getter
    def abilities
        @abilities
    end

    # Instance Method
    def coolest_ability
        coolest_ability = nil
        @abilities.each do | current_ability | 
            if  coolest_ability == nil || coolest_ability[:coolness] < current_ability[:coolness]
                coolest_ability = current_ability
            end
        end
        coolest_ability
    end

    # Class Method
    def self.with_most_abilities
        hero_with_most_abilities = nil
        @@all.each do | current_hero |
            if hero_with_most_abilities == nil  || hero_with_most_abilities.abilities.length < current_hero.abilities.length
                hero_with_most_abilities = current_hero
            end
        end
        hero_with_most_abilities
    end

end

steve_rogers = Hero.new('Steve', 'Rogers', [ 
    {
        name: 'Super Strength',
        coolness: 5
    },
    {
        name: 'Gravity Defying Sheild',
        coolness: 10
    }
])

thor = Hero.new('Thor', 'Odinson', [
    {
        name: 'Super Strength',
        coolness: 5
    },
    {
        name: 'Hammer',
        coolness: 4
    },
    {
        name: 'God Blast',
        coolness: 8
    }
])