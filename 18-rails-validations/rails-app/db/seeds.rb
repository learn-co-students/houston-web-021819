# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pet.destroy_all
User.destroy_all

cory = User.create( name: 'Cory', address: '1600 Pennsylvania', phone_number: '8675309' )
chase = Pet.create( name: 'Chase', breed: 'Lab', user: cory)

User.create( name: 'Josephine', address: '1600 Pennsylvania', phone_number: '8675309' )
User.create( name: 'Adam', address: '1600 Pennsylvania', phone_number: '8675309' )
User.create( name: 'Eli', address: '1600 Pennsylvania', phone_number: '8675309' )
User.create( name: 'Jack', address: '1600 Pennsylvania', phone_number: '8675309' )
User.create( name: 'Bobby', address: '1600 Pennsylvania', phone_number: '8675309' )
User.create( name: 'Trey', address: '1600 Pennsylvania', phone_number: '8675309' )
User.create( name: 'Jessica', address: '1600 Pennsylvania', phone_number: '8675309' )
User.create( name: 'Hemalatha', address: '1600 Pennsylvania', phone_number: '8675309' )
User.create( name: 'Rochell', address: '1600 Pennsylvania', phone_number: '8675309' )
User.create( name: 'TK', address: '1600 Pennsylvania', phone_number: '8675309' )
User.create( name: 'Mark', address: '1600 Pennsylvania', phone_number: '8675309' )
User.create( name: 'Olivia', address: '1600 Pennsylvania', phone_number: '8675309' )
User.create( name: 'Zoe', address: '1600 Pennsylvania', phone_number: '8675309' )
User.create( name: 'Jing', address: '1600 Pennsylvania', phone_number: '8675309' )
User.create( name: 'Tom', address: '1600 Pennsylvania', phone_number: '8675309' )
