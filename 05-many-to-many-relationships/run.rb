require 'pry'
require './Hero.rb'
require './Ability.rb'
require './HeroAbility.rb'

steve_rogers = Hero.new('Steve', 'Rogers')
thor = Hero.new('Thor', 'Odinson')

strength = Ability.new('Super Strength', 5)
sheild = Ability.new('Gravity Defying Sheild', 10)
hammer = Ability.new('Hammer', 4)
god_blast = Ability.new('God Blast', 9)

HeroAbility.new(steve_rogers, strength)
HeroAbility.new(thor, strength)
HeroAbility.new(steve_rogers, sheild)
HeroAbility.new(thor, hammer)
HeroAbility.new(thor, god_blast)


binding.pry
0