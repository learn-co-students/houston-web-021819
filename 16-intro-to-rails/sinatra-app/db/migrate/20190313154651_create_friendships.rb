class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do | t |
      t.belongs_to :initiator
      t.belongs_to :followee
    end
  end
end
