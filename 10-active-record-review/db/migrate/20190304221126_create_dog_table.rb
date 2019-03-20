class CreateDogTable < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do | table |
      table.string :name
      table.string :color
      table.integer :age
      table.belongs_to :owner
      # ^^ Same as: table.integer :owner_id
    end
  end
end
