class DownvotePost < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates_uniqueness_of :user
  validates :user_id, :post_id, presence: true ,numericality: {only_integer: true}
end
