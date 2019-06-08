class Block < ApplicationRecord
  belongs_to :owner, :class_name => 'User'
  belongs_to :blocked, :class_name => 'User'

  validates :owner_id, :blocked_id, presence: true ,numericality: {only_integer: true}
  validates_uniqueness_of :owner_id, scope: :blocked
end
