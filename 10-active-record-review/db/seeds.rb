Owner.destroy_all
Dog.destroy_all

cory = Owner.create(name:'Cory')
fido = Dog.create(name: 'Fido', color:'white', age: 0, owner_id: cory.id)
josh = Groomer.create(name: 'Josh', address: '1625 Main')