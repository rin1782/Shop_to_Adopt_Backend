class CreateInquiries < ActiveRecord::Migration[6.1]
  def change
    create_table :inquiries do |t|
      t.string :comment
      t.integer :pet_id

      t.timestamps
    end
  end
end
