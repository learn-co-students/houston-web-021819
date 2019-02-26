require 'rubygems'
require 'commander/import'
require 'pry'
require 'sqlite3'

DB = {:conn => SQLite3::Database.new("db/heroes.db")}
DB[:conn].results_as_hash = true

require './Hero.rb'
require './HeroAbility.rb'
require './Ability.rb'
program :name, 'heroes'
program :version, '0.0.1'
program :description, 'A Heroic CLI'
