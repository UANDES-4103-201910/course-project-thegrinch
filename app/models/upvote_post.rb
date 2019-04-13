class UpvotePost < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates_uniqueness_of :user_id, :scope => [:likable_post_id, :likable_post_type]
  validates :user_id, :post_id, presence: true ,numericality: {only_integer: true}
end
