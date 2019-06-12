class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :post_id, :user_id, :content, presence: true
  validates :post_id, :user_id, numericality: {only_integer: true}
  validates :content, length: {maximum: 1000}
end
