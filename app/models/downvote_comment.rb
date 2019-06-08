class DownvoteComment < ApplicationRecord
  belongs_to :user
  belongs_to :comment
  validates_uniqueness_of :user
  validates :user_id, :comment_id, presence: true ,numericality: {only_integer: true}
  validates_uniqueness_of :user_id, scope: :comment
end
