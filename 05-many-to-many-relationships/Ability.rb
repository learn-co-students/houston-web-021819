class Ability 

    attr_accessor :name, :coolness

    @@all = []

    def initialize(name, coolness)
        self.name = name
        self.coolness = coolness
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