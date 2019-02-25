require 'sqlite3'
require 'pry'


db = SQLite3::Database.new('heroes.db')

db.results_as_hash = true

results = db.execute('<Your SQL Here>')

binding.pry
0