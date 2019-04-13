class DownvotePost < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates_uniqueness_of :user_id, :scope => [:unlikable_post_id, :unlikable_post_type]
  validates :user_id, :post_id, presence: true ,numericality: {only_integer: true}
end
