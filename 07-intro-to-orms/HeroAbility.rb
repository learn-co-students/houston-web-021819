class HeroAbility

    attr_reader :hero_id, :ability_id

    def initialize(hero_id:, ability_id:)
        @hero_id = hero_id
        @ability_id = ability_id
    end

    def self.create(hero_id:, ability_id:)
        DB[:conn].execute(
            "INSERT INTO hero_abilities (hero_id, ability_id) VALUES (?, ?)",
            [
                hero_id,
                ability_id
            ]
        )
        HeroAbility.new(hero_id: hero_id, ability_id: ability_id)
    end

    def self.all
        result = DB[:conn].execute(
            "SELECT * FROM hero_abilities"
        )
        result.map do | hero_ability |
            HeroAbility.new(ability_id: hero_ability["ability_id"], hero_id: hero_ability["hero_id"])
        end
    end

end