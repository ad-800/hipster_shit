class Product < ApplicationRecord
  has_one_attached :photo
  has_one :purchase
  belongs_to :user

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description,
  against: [ :title, :description ],
  using: {
    tsearch: { prefix: true }
  }
end
