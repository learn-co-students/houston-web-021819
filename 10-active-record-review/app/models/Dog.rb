class Dog < ActiveRecord::Base
    belongs_to :owner
    has_many :appointments
    has_many :groomers, through: :appointments
end