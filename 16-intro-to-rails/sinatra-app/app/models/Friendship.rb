class Friendship < ActiveRecord::Base
    belongs_to :initiator, class_name: 'User'
    belongs_to :followee, class_name: 'User'
end