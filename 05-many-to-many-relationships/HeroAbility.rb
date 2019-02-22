class HeroAbility

    @@all = []

    attr_reader :hero, :ability

    def initialize(hero, ability)
        @hero = hero
        @ability = ability
        @@all << self
    end

    def self.all
        @@all
    end

end