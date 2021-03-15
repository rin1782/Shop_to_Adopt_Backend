class Inquiry < ApplicationRecord
    belongs_to :pet

    def self.arr_to_json
        self.all.map do |i|
            i.instance_to_json
        end
    end


    def instance_to_json
        {
            id: self.id,
            comment: self.comment,
            pet_id: self.pet_id,
            saves: self.saves,
            pet: {
                id: self.pet.id,
                name: self.pet.name,
                desc: self.pet.desc
            }
        }
    end
end