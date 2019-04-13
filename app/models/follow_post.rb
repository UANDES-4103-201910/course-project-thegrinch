class FollowPost < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :post_id, :user_id, presence: true ,numericality: {only_integer: true}
end
