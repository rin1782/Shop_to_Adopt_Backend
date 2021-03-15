class AddSavesToInquiries < ActiveRecord::Migration[6.1]
  def change
    add_column :inquiries, :saves, :integer
  end
end
