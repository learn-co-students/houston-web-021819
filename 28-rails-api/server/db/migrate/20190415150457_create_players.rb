class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :x
      t.integer :y

      t.timestamps
    end
  end
end
