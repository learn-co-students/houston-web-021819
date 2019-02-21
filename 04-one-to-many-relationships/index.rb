require 'pry'
require './Hero.rb'
require './Ability.rb'

steve_rogers = Hero.new('Steve', 'Rogers')

Ability.new('Super Strength', 5, steve_rogers)
Ability.new('Gravity Defying Sheild', 10, steve_rogers)

thor = Hero.new('Thor', 'Odinson')

Ability.new('Super Strength', 5, thor)
Ability.new('Hammer', 4, thor)
Ability.new('God Blast', 9, thor)

binding.pry
0