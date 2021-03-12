class AddPetIdToInquiry < ActiveRecord::Migration[6.1]
  def change
    add_reference :inquiries, :pet, foreign_key: true
  end
end
