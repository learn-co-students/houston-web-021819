require_relative '../app/hero.rb'

describe Hero do
  thor = Hero.new([
    {
      name: 'Super Strength',
      coolness: 3
    },
    {
      name:'Flight',
      coolness: 5
    },
    {
      name: 'Lightning Blast',
      coolness: 10
    }
    ])

  it "hero abilities function gives back an array" do

    expect(thor.abilities).to(eq([
        {
            name: 'Super Strength',
            coolness: 3
        },
        {
            name:'Flight',
            coolness: 5
        },
        {
            name: 'Lightning Blast',
            coolness: 10
        }
    ]))
  end

  it "hero's function add_ability takes in a Hash and adds it to the hero's abilities" do
    expect(thor.add_ability({
      name: "Summon Hammer",
      coolness: 10
    })).to(include({
        name: "Summon Hammer",
        coolness: 10
      }))
  end

  it "malformed input data for add_ability does not add it to all abilities" do
    expect(thor.add_ability(2)).not_to(include(2))
  end
end
