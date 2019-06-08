class FollowUser < ApplicationRecord
  belongs_to :followed, class_name: 'User'
  belongs_to :follower, class_name: 'User'

  validates :followed_id, :follower_id, presence: true ,numericality: {only_integer: true}
  validates_uniqueness_of :followed_id, scope: :follower
end
