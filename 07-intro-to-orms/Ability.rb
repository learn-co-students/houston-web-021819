class Ability 

    attr_accessor :name, :coolness, :id

    def initialize(name:, coolness:, id: nil)
        self.name = name
        self.coolness = coolness
        self.id = id
    end

    def label
        "#{self.name} (#{self.coolness})"
    end

    def self.create(name:, coolness:)
        DB[:conn].execute(
            "INSERT INTO abilities (name, coolness) VALUES (?, ?)",
            [
                name,
                coolness
            ]
        )
        Ability.new(name: name, coolness: coolness)
    end

    def self.all
        result = DB[:conn].execute(
            "SELECT * FROM abilities"
        )
        result.map do | ability |
            Ability.new(name: ability["name"], coolness: ability["coolness"], id: ability["id"])
        end
    end

    def self.find(id)
        ability = DB[:conn].execute(
            "SELECT * FROM abilities WHERE id=?",
            id
        )[0]
        Ability.new(name: ability["name"], coolness: ability["coolness"])
    end

    def to_s
        self.label
    end

end