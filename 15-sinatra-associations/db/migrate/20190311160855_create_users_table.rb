class CreateUsersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users do | table |
      table.string :name
      table.string :address
      table.string :phone_number
    end
  end
end
