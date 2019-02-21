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
        "#{self.name} (#{self.coolness})"
    end

    # Getter and a Class Method
    def self.all 
        @@all
    end

end