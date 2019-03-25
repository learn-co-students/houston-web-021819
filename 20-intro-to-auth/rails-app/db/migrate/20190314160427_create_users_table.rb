class CreateUsersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.integer :absences
    end
  end
end
