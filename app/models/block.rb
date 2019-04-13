class Block < ApplicationRecord
  belongs_to :owner, :class_name => 'user'
  belongs_to :blocked, :class_name => 'user'

  validates :owner_id, :blocked_id, presence: true ,numericality: {only_integer: true}
end
