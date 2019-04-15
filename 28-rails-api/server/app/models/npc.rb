class Npc < ApplicationRecord
    has_many :steps

    # def as_json(options)
    #     result = super(options)
    #     result[:steps] = self.steps.as_json
    #     result
    # end

    def label
        "#{name} (#{x}, #{y})"
    end

end
