class CreateNpcs < ActiveRecord::Migration[5.2]
  def change
    create_table :npcs do |t|
      t.string :name
      t.integer :x
      t.integer :y

      t.timestamps
    end
  end
end
