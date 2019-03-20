class User < ActiveRecord::Base
    has_many :pets
    has_many :friendships, foreign_key: 'initiator_id'
    has_many :following, through: :friendships, source: 'followee'
end