class FollowUser < ApplicationRecord
  belongs_to :followed, class_name: 'User'
  belongs_to :follower, class_name: 'User'

  validates :followed_id, :follower_id, presence: true ,numericality: {only_integer: true}
end
