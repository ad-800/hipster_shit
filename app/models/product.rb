class Product < ApplicationRecord
  has_one_attached :cloudinary_id
  has_one :purchase
end
