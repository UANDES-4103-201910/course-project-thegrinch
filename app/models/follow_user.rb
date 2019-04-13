class FollowUser < ApplicationRecord
  belongs_to :followed, class_name: 'user'
  belongs_to :follower, class_name: 'user'

  validates :followed_id, :follower_id, presence: true ,numericality: {only_integer: true}
end
