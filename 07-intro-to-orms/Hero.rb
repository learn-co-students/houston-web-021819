class Hero

    attr_accessor :first_name, :last_name, :id

    def initialize(first_name:, last_name:, id: nil)
        self.first_name = first_name
        self.last_name = last_name
        self.id = id
    end

    def self.create(first_name:, last_name:)
        DB[:conn].execute(
            "INSERT INTO heroes (first_name, last_name) VALUES (?, ?)",
            [
                first_name,
                last_name
            ]
        )
        Hero.new(first_name: first_name, last_name: last_name)
    end

    def self.all
        result = DB[:conn].execute(
            "SELECT * FROM heroes"
        )
        result.map do | hero |
            Hero.new(first_name: hero["first_name"], last_name: hero["last_name"], id: hero["id"])
        end
    end

    def update( first_name:, last_name: )
        self.first_name = first_name
        self.last_name = last_name
        DB[:conn].execute(
            "UPDATE heroes SET first_name=?, last_name=? WHERE id=?",
            [
                first_name,
                last_name,
                self.id
            ]
        )
    end

    def destroy
        DB[:conn].execute(
            "DELETE FROM heroes WHERE id=?",
            [
                self.id
            ]
        )
    end

    def self.destroy_multiple(ids)
        DB[:conn].execute(
            "DELETE FROM heroes WHERE id IN (#{ids.join(', ')})"
        )
    end

    def self.find(id)
        hero = DB[:conn].execute(
            "SELECT * FROM heroes WHERE id=?",
            id
        )[0]
        Hero.new(first_name: hero["first_name"], last_name: hero["last_name"])
    end

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    # def hero_abilities
    #     HeroAbility.all.select do | hero_ability |
    #         hero_ability.hero_id == self.id
    #     end
    # end

    # def abilities
    #     self.hero_abilities.map do | hero_ability |
    #         Ability.find(hero_ability.ability_id)
    #     end
    # end

    def abilities
        abilities = DB[:conn].execute(
            "SELECT abilities.* 
                FROM abilities
                JOIN hero_abilities
                    ON abilities.id = hero_abilities.ability_id
                JOIN heroes
                    ON heroes.id = hero_abilities.hero_id
            WHERE 
                heroes.id = ?",
            [
                self.id
            ]
        )
        abilities.map do | ability |
            Ability.new( name: ability['name'], coolness: ability['coolness'], id: ability['id'], )
        end
    end

    # Instance Method
    def coolest_ability
        coolest_ability = nil
        @abilities.each do | current_ability | 
            if  coolest_ability == nil || coolest_ability.coolness < current_ability.coolness
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

    def to_s
        self.full_name
    end

end

