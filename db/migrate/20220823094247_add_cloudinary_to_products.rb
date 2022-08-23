class AddCloudinaryToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :cloudinary_id, :integer
  end
end
