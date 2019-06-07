class Category < ApplicationRecord
  has_many :category_posts, dependent: :destroy
  validates :name, presence: true, length: {in: 2..20}
end
