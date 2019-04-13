class CategoryPost < ApplicationRecord
  belongs_to :category
  belongs_to :post

  validates :category_id, :post_id, presence: true ,numericality: {only_integer: true}
end
