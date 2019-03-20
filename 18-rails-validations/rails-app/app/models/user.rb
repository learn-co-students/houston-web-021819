class User < ApplicationRecord
    has_many :pets

    validates :name, length: { minimum: 3 }
    validates :absences, numericality: {  less_than: 6 }

    # validate :absences_must_be_less_than_five

    # def absences_must_be_less_than_five
    #     if self.absences > 5
    #         self.errors.add(:absences, "You can have no more than 5 absences")
    #     end
    # end

end