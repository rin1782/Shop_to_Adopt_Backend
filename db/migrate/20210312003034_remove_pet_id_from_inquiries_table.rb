class RemovePetIdFromInquiriesTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :inquiries, :pet_id, :integer
  end
end
