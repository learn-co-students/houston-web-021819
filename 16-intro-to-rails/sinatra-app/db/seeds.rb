User.destroy_all

eli = User.create(name: 'Eli', address: '123 Shakespear St', phone_number: '1-800-contacts')
User.create(name: 'Bobby', address: '123 Poe St', phone_number:'1-800-soccer')

Pet.create(name: 'Spot', user: eli )