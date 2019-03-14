class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |t|
      t.belongs_to :initatior
      t.belongs_to :followee
      t.timestamps
    end
  end
end
