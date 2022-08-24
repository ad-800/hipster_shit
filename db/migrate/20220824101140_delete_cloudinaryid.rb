class DeleteCloudinaryid < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :cloudinary_id
  end
end
